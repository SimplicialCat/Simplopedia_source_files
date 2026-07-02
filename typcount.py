from concurrent.futures import ProcessPoolExecutor
import datetime
import os
import pathlib
import pypdf
import re
from scipy.cluster.hierarchy import DisjointSet
import sys

START_TIME = datetime.datetime(2025, 5, 25, 23, 59, 0).timestamp()
SRC_SUFFIX = '.md' if '--md' in sys.argv else '.typ'
PDF_SUFFIX = '.pdf'
DISTANCE_THRESHOLD = 0.75

def doc_distance(s1: str, s2: str) -> float:
    # 3-word shingle distance
    WORD_RE = re.compile(r"\b\w+\b", re.UNICODE)
    K = 3
    s1, s2 = s1.lower(), s2.lower()
    ws1, ws2 = WORD_RE.findall(s1), WORD_RE.findall(s2)
    if len(ws1) < K or len(ws2) < K:
        return 1.0
    shingles1 = {tuple(ws1[i:i+K]) for i in range(len(ws1) - K)}
    shingles2 = {tuple(ws2[i:i+K]) for i in range(len(ws2) - K)}
    common = len(shingles1.intersection(shingles2))
    lmin, lmax = min(len(shingles1), len(shingles2)), max(len(shingles1), len(shingles2))
    return 1 - common / lmax

sources, source_paths, pdf_paths = {}, [], []
for entry in pathlib.Path.cwd().rglob('*'):
    if not entry.is_file:
        continue
    if entry.stat().st_ctime < START_TIME:
        continue
    path = str(entry.relative_to(pathlib.Path.cwd()))
    if path.endswith(SRC_SUFFIX):
        source_paths.append(path)
        with open(path, 'r', encoding='utf-8') as f:
            sources[path] = f.read()
    elif path.endswith(PDF_SUFFIX):
        pdf_paths.append(path)

# def _compute_pair_distance(idx_pair: tuple[int, int]):
#     """Compute doc_distance for a pair of source files by index (fork-safe)."""
#     i, j = idx_pair
#     return i, j, doc_distance(sources[source_paths[i]], sources[source_paths[j]])

# # Pre-compute all pairwise distances in parallel
pairs = [(i, j) for i in range(len(source_paths)) for j in range(i + 1, len(source_paths))]
# pair_distances = {}
# with ProcessPoolExecutor(max_workers=max(1, os.cpu_count() - 2)) as executor:
#     for i, j, dist in executor.map(_compute_pair_distance, pairs, chunksize=max(1, len(pairs) // 8)):
#         pair_distances[(i, j)] = dist

# Merge based on pre-computed distances (sequential — stateful)
print(len(sources))
disjoint_sources = DisjointSet(sources)
for i, j in pairs:
    p1, p2 = source_paths[i], source_paths[j]
    if disjoint_sources.connected(p1, p2):
        continue
    if doc_distance(sources[p1], sources[p2]) < DISTANCE_THRESHOLD:
        # print(f'merge({p1}, {p2})')
        disjoint_sources.merge(p1, p2)

def resolve_src_group(sources: dict[str, str], pdf_paths: list[str], src_group: set[str]):
    from types import SimpleNamespace
    from statistics import stdev
    import subprocess
    stdev_ = lambda xs: stdev(xs) if len(xs) >= 2 else -1
    chars, words, lines = [], [], []
    max_pdf_page = -1
    for path in src_group:
        src = sources[path]
        chars.append(len(src))
        lines.append(src.count('\n'))
        words.append(len(src.split()))
        for pdf_path in pdf_paths:
            if not pdf_path.startswith(path[:-len(SRC_SUFFIX)]):
                continue
            # npages_S = subprocess.run(['qpdf', '--show-npages', pdf_path], capture_output=True, text=True)
            # with open(pdf_path, 'rb') as f:
            #     pdf_data = f.read()
            # # pdf_data = str(pdf_data, errors='ignore')
            # m = re.search(rb'\/Type\s+\/Pages\s+\/Count\s+(\d+)', pdf_data, re.MULTILINE)
            # if m:
            #     npages_S = m.group(1)
            #     npages = int(str(npages_S, encoding='utf-8'))
            #     max_pdf_page = max(max_pdf_page, npages)
            # else:
            #     print(pdf_data)
            #     raise AssertionError
            pdf = pypdf.PdfReader(pdf_path)
            npages = len(pdf.pages)
            max_pdf_page = max(max_pdf_page, npages)
    # group name is the first 2 + last 3 consonants/numbers in the file name
    name = pathlib.Path(list(src_group)[0]).name[:-len(SRC_SUFFIX)]
    valid_chars = ''.join([ch for ch in name.lower() if ch in '0123456789bcdfghjklmnpqrstvwxyz'])
    group_name = valid_chars if len(valid_chars) < 5 else valid_chars[:2] + valid_chars[-3:]
    
    return SimpleNamespace(
        members = src_group, name = group_name, 
        chars = max(chars), lines = max(lines), words = max(words), 
        char_dev = stdev_(chars), line_dev = stdev_(lines), word_dev = stdev_(words),
        pdf_pages = max_pdf_page
    )
    
from rich import console, table
tab = table.Table()
tab.add_column('group', style='dim white')
tab.add_column('chars', style='yellow')
tab.add_column('words', style='green')
tab.add_column('lines', style='cyan')
tab.add_column('pages', style='magenta')

stats = []
for group in disjoint_sources.subsets():
    stats.append(resolve_src_group(sources, pdf_paths, group))

stats = sorted(stats, key=lambda stat: (len(stat.members), stat.chars, stat.words, stat.lines), reverse=True)

for i, stat in enumerate(stats): 
    tab.add_row(
        f'{stat.name}' + ('' if len(stat.members) == 1 else f' ({len(stat.members)})'), 
        f'{stat.chars}' + ('' if stat.char_dev == -1 else f' (σ = {round(stat.char_dev)})'),
        f'{stat.words}' + ('' if stat.word_dev == -1 else f' (σ = {round(stat.word_dev)})'),
        f'{stat.lines}' + ('' if stat.line_dev == -1 else f' (σ = {round(stat.line_dev)})'),
        f'{stat.pdf_pages}' if stat.pdf_pages > 0 else ''
    )
    if i > 0 and (i % 25 == 0 or i == len(stats) - 1):
        tab.add_section()

tab.add_row(
    f'TOTAL ({len(source_paths)})', 
    f'{sum([stat.chars for stat in stats])}', 
    f'{sum([stat.words for stat in stats])}', 
    f'{sum([stat.lines for stat in stats])}', 
    f'{sum([stat.pdf_pages for stat in stats if stat.pdf_pages > 0])}', 
)

console.Console().print(tab)
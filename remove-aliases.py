import os
import re
import argparse

def remove_aliases_from_content(content):
    """
    从 Markdown 内容中删除特定的 aliases 字段
    格式要求：
    ---
    aliases:
      - foo
    ---
    """
    # 匹配完整的 aliases 字段块（包含 --- 分隔符）
    pattern = r'^---\s*\naliases:\s*\n(\s*-\s+.+\n)+\s*---\s*\n'
    
    # 使用 re.MULTILINE 确保 ^ 匹配每行开头
    return re.sub(pattern, '', content, flags=re.MULTILINE)

def process_md_files(directory):
    """
    处理目录中所有 .md 文件，删除指定的 aliases 字段
    """
    for root, dirs, files in os.walk(directory):
        for filename in files:
            if filename.endswith('.md'):
                filepath = os.path.join(root, filename)
                with open(filepath, 'r+', encoding='utf-8') as f:
                    content = f.read()
                    new_content = remove_aliases_from_content(content)
                    
                    # 只有当内容有变化时才写回文件
                    if new_content != content:
                        f.seek(0)
                        f.write(new_content)
                        f.truncate()
                        print(f"已更新: {filepath}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='删除 Markdown 文件中的特定 aliases 字段')
    parser.add_argument('directory', help='要处理的文件夹路径')
    args = parser.parse_args()
    
    process_md_files(args.directory)
    print("处理完成！所有匹配的 aliases 字段已被删除。")

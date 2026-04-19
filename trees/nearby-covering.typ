#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNixbMCwxLCJVIl0sWzEsMSwiVyJdLFsyLDEsIlYiXSxbMCwwLCJVIl0sWzEsMCwiVyciXSxbMiwwLCJWJyJdLFswLDFdLFsyLDFdLFszLDAsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzMsNF0sWzQsMV0sWzUsNF0sWzUsMl0sWzUsMSwic3F1YXJlIiwxLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoibm9uZSJ9LCJoZWFkIjp7Im5hbWUiOiJub25lIn19fV1d
#align(center, diagram({
	node((-2, 0), [$U$])
	node((-1, 0), [$W$])
	node((0, 0), [$V$])
	node((-2, -1), [$U$])
	node((-1, -1), [$W'$])
	node((0, -1), [$V'$])
	edge((-2, 0), (-1, 0), "->")
	edge((0, 0), (-1, 0), "->")
	edge((-2, -1), (-2, 0), "=")
	edge((-2, -1), (-1, -1), "->")
	edge((-1, -1), (-1, 0), "->")
	edge((0, -1), (-1, -1), "->")
	edge((0, -1), (0, 0), "->")
	edge((0, -1), (-1, 0), [$square$], label-side: center, " ")
}))
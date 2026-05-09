#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsMyxbMCwxLCJEZWx0YV9cIm1pblwiXlwib3BcIiJdLFswLDAsIkRlbHRhX1wiK1wiXlwib3BcIiJdLFsxLDAsImNhbChDKSJdLFsxLDIsIlgiXSxbMSwwLCJDXysiLDJdLFswLDIsIm92ZXJsaW5lKFgpIiwyXV0=
#align(center, diagram({
	node((-1, 1), [$Delta_bot^"op"$])
	node((-1, 0), [$Delta_"+"^"op"$])
	node((0, 0), [$cal(C)$])
	edge((-1, 0), (0, 0), [$X$], label-side: left, "->")
	edge((-1, 0), (-1, 1), [$C_+$], label-side: right, "->")
	edge((-1, 1), (0, 0), [$overline(X)$], label-side: right, "->")
}))
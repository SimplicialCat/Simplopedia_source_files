#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsMTEsWzMsMCwic3RhciJdLFszLDIsIjAiXSxbMCwwLCJzdGFyIl0sWzYsMCwic3RhciJdLFs1LDIsIjAiXSxbNywyLCIxIl0sWzEyLDAsImRvdHMuYyJdLFs5LDAsInN0YXIiXSxbOCwxLCIwIl0sWzksMiwiMSJdLFsxMCwxLCIyIl0sWzAsMV0sWzMsNF0sWzQsNV0sWzMsNV0sWzcsOF0sWzgsOV0sWzksMTBdLFs3LDEwXSxbNyw5XSxbOCwxMF1d
#align(center, diagram(cell-size: 5mm,
{
	node((-3, -1), [$star$])
	node((-3, 1), [$0$])
	node((-6, -1), [$star$])
	node((0, -1), [$star$])
	node((-1, 1), [$0$])
	node((1, 1), [$1$])
	node((6, -1), [$dots.c$])
	node((3, -1), [$star$])
	node((2, 0), [$0$])
	node((3, 1), [$1$])
	node((4, 0), [$2$])
	edge((-3, -1), (-3, 1), "->")
	edge((0, -1), (-1, 1), "->")
	edge((-1, 1), (1, 1), "->")
	edge((0, -1), (1, 1), "->")
	edge((3, -1), (2, 0), "->")
	edge((2, 0), (3, 1), "->")
	edge((3, 1), (4, 0), "->")
	edge((3, -1), (4, 0), "->")
	edge((3, -1), (3, 1), "->")
	edge((2, 0), (4, 0), "->")
}))
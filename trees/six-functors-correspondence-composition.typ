#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNixbMSwxLCJXIl0sWzAsMiwiWCJdLFsyLDIsIlkiXSxbMywxLCJXJyJdLFs0LDIsIloiXSxbMiwwLCJXJyciXSxbMCwxXSxbMCwyXSxbMywyXSxbMyw0XSxbNSwwXSxbNSwzXV0=
#align(center, diagram({
	node((-2, 0), [$W$])
	node((-3, 1), [$X$])
	node((-1, 1), [$Y$])
	node((0, 0), [$W'$])
	node((1, 1), [$Z$])
	node((-1, -1), [$W''$])
	edge((-2, 0), (-3, 1), "->")
	edge((-2, 0), (-1, 1), "->")
	edge((0, 0), (-1, 1), "->")
	edge((0, 0), (1, 1), "->")
	edge((-1, -1), (-2, 0), "->")
	edge((-1, -1), (0, 0), "->")
}))
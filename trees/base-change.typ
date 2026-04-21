#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNCxbMSwwLCJYIl0sWzEsMSwiWSJdLFswLDEsIlknIl0sWzAsMCwiWCciXSxbMiwxLCJnIiwyXSxbMCwxLCJmIl0sWzMsMiwiZiciLDJdLFszLDAsImcnIl1d
#align(center, diagram({
	node((-1, 0), [$X$])
	node((-1, 1), [$Y$])
	node((-2, 1), [$Y'$])
	node((-2, 0), [$X'$])
	edge((-2, 1), (-1, 1), [$g$], label-side: right, "->")
	edge((-1, 0), (-1, 1), [$f$], label-side: left, "->")
	edge((-2, 0), (-2, 1), [$f'$], label-side: right, "->")
	edge((-2, 0), (-1, 0), [$g'$], label-side: left, "->")
}))
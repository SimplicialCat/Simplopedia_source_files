#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsOCxbMiwwLCJYIl0sWzIsMSwiWF4rIl0sWzAsMCwiR0dfbSJdLFswLDEsIkFBXjEiXSxbMSwxLCIwIl0sWzAsMiwiMCJdLFsyLDIsIlheMCJdLFszLDEsIlheMCJdLFsxLDAsInBeKyJdLFsyLDNdLFszLDRdLFs1LDNdLFs1LDQsIlwiaWRcIiIsMl0sWzEsNiwicV4rIiwyXSxbNywxLCJpXisiLDJdLFs3LDYsIlwiaWRcIiJdLFsyLDRdLFs3LDBdXQ==
#align(center, diagram({
	node((-2, 0), [$X$])
	node((-2, 1), [$X^+$])
	node((-4, 0), [$GG_m$])
	node((-4, 1), [$AA^1$])
	node((-3, 1), [$0$])
	node((-4, 2), [$0$])
	node((-2, 2), [$X^0$])
	node((-1, 1), [$X^0$])
	edge((-2, 1), (-2, 0), [$p^+$], label-side: left, "->")
	edge((-4, 0), (-4, 1), "->")
	edge((-4, 1), (-3, 1), "->")
	edge((-4, 2), (-4, 1), "->")
	edge((-4, 2), (-3, 1), [$"id"$], label-side: right, "->")
	edge((-2, 1), (-2, 2), [$q^+$], label-side: right, "->")
	edge((-1, 1), (-2, 1), [$i^+$], label-side: right, "->")
	edge((-1, 1), (-2, 2), [$"id"$], label-side: left, "->")
	edge((-4, 0), (-3, 1), "->")
	edge((-1, 1), (-2, 0), "->")
}))
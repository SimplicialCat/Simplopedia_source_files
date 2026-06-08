#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsOCxbMCwxLCJZIHRpbWVzIFgiXSxbMSwxLCJYIl0sWzAsMiwiWCJdLFswLDAsIlkiXSxbMiwxLCJZIl0sWzMsMSwiXCJFbmRcIihYKSJdLFszLDAsIlgiXSxbMiwyLCIqIl0sWzAsMV0sWzIsMF0sWzMsMF0sWzMsMSwiZiJdLFsyLDEsIlwiaWRcIl9YIiwyXSxbNCw1XSxbNCw2LCJmIl0sWzUsNiwiXCJldlwiXyoiLDJdLFs3LDRdLFs3LDUsIlwiaWRcIl9YIiwyXV0=
#align(center, diagram({
	node((-2, 0), [$Y times X$])
	node((-1, 0), [$X$])
	node((-2, 1), [$X$])
	node((-2, -1), [$Y$])
	node((0, 0), [$Y$])
	node((1, 0), [$"End"(X)$])
	node((1, -1), [$X$])
	node((0, 1), [$*$])
	edge((-2, 0), (-1, 0), "->")
	edge((-2, 1), (-2, 0), "->")
	edge((-2, -1), (-2, 0), "->")
	edge((-2, -1), (-1, 0), [$f$], label-side: left, "->")
	edge((-2, 1), (-1, 0), [$"id"_X$], label-side: right, "->")
	edge((0, 0), (1, 0), "->")
	edge((0, 0), (1, -1), [$f$], label-side: left, "->")
	edge((1, 0), (1, -1), [$"ev"_*$], label-side: right, "->")
	edge((0, 1), (0, 0), "->")
	edge((0, 1), (1, 0), [$"id"_X$], label-side: right, "->")
}))
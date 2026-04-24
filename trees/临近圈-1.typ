#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsOCxbMSwwLCJYIl0sWzAsMSwiMCJdLFsxLDEsIlMiXSxbMiwxLCJTXioiXSxbMywxLCJ0aWxkZShTXiopIl0sWzAsMCwiWF8wIl0sWzIsMCwiWF4qIl0sWzMsMCwidGlsZGUoWF4qKSJdLFsxLDJdLFs0LDMsInBpIl0sWzMsMl0sWzUsMV0sWzUsMCwiaSJdLFswLDIsImYiLDJdLFs2LDAsImoiXSxbNiwzLCJmIiwyXSxbNyw2XSxbNyw0XSxbNywwLCJ0aWxkZShqKSIsMix7ImN1cnZlIjoyfV1d
#align(center, diagram({
	node((-2, 0), [$X$])
	node((-3, 1), [$0$])
	node((-2, 1), [$S$])
	node((-1, 1), [$S^*$])
	node((0, 1), [$tilde(S^*)$])
	node((-3, 0), [$X_0$])
	node((-1, 0), [$X^*$])
	node((0, 0), [$tilde(X^*)$])
	edge((-3, 1), (-2, 1), "->")
	edge((0, 1), (-1, 1), [$pi$], label-side: left, "->")
	edge((-1, 1), (-2, 1), "->")
	edge((-3, 0), (-3, 1), "->")
	edge((-3, 0), (-2, 0), [$i$], label-side: left, "->")
	edge((-2, 0), (-2, 1), [$f$], label-side: right, "->")
	edge((-1, 0), (-2, 0), [$j$], label-side: left, "->")
	edge((-1, 0), (-1, 1), [$f$], label-side: right, "->")
	edge((0, 0), (-1, 0), "->")
	edge((0, 0), (0, 1), "->")
	edge((0, 0), (-2, 0), [$tilde(j)$], label-side: right, "->", bend: -36deg)
}))
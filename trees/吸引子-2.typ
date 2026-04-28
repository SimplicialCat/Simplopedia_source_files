#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsOCxbMywxLCJYIl0sWzMsMCwiWF4tIl0sWzEsMSwiR0dfbSJdLFsxLDAsIkFBXjFfLSJdLFswLDAsIioiXSxbMiwwLCJYXjAiXSxbMCwxLCJBQV4xIl0sWzIsMSwiWF4rIl0sWzEsMCwicF4tIl0sWzIsM10sWzMsNF0sWzUsMSwiaV4tIiwyXSxbMiw2XSxbNiw0XSxbNSw3LCJpXisiXSxbNywwLCJwXisiLDJdLFs0LDMsIm9vIiwwLHsiY3VydmUiOi0yLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSw1LCJxXi0iLDIseyJjdXJ2ZSI6Miwic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzcsNSwicV4rIiwwLHsiY3VydmUiOi0yLCJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNCw2LCIwIiwyLHsiY3VydmUiOjIsInN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dXQ==
#align(center, diagram({
	node((0, 2), [$X$])
	node((0, 1), [$X^-$])
	node((-2, 2), [$GG_m$])
	node((-2, 1), [$AA^1_-$])
	node((-3, 1), [$*$])
	node((-1, 1), [$X^0$])
	node((-3, 2), [$AA^1$])
	node((-1, 2), [$X^+$])
	edge((0, 1), (0, 2), [$p^-$], label-side: left, "->")
	edge((-2, 2), (-2, 1), "->")
	edge((-2, 1), (-3, 1), "->")
	edge((-1, 1), (0, 1), [$i^-$], label-side: right, "->")
	edge((-2, 2), (-3, 2), "->")
	edge((-3, 2), (-3, 1), "->")
	edge((-1, 1), (-1, 2), [$i^+$], label-side: left, "->")
	edge((-1, 2), (0, 2), [$p^+$], label-side: right, "->")
	edge((-3, 1), (-2, 1), [$oo$], label-side: left, "-->", bend: 36deg)
	edge((0, 1), (-1, 1), [$q^-$], label-side: right, "-->", bend: -36deg)
	edge((-1, 2), (-1, 1), [$q^+$], label-side: left, "-->", bend: 36deg)
	edge((-3, 1), (-3, 2), [$0$], label-side: right, "-->", bend: -36deg)
}))
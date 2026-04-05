#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNCxbMSwwLCJWIHRpbWVzX00gVl4qIl0sWzAsMSwiViJdLFsyLDEsIlZeKiJdLFsxLDIsIk0iXSxbMCwxLCJwXzEiLDJdLFsxLDMsInRhdSIsMl0sWzAsMiwicF8yIl0sWzIsMywicGkiXV0=
#align(center, diagram({
	node((-1, 0), [$V times_M V^*$])
	node((-2, 1), [$V$])
	node((0, 1), [$V^*$])
	node((-1, 2), [$M$])
	edge((-1, 0), (-2, 1), [$p_1$], label-side: right, "->")
	edge((-2, 1), (-1, 2), [$tau$], label-side: right, "->")
	edge((-1, 0), (0, 1), [$p_2$], label-side: left, "->")
	edge((0, 1), (-1, 2), [$pi$], label-side: left, "->")
}))
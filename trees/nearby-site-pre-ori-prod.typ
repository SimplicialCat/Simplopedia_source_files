#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNixbMCwxLCJYIl0sWzEsMSwiUyJdLFsyLDEsIlkiXSxbMCwwLCJVIl0sWzEsMCwiVyJdLFsyLDAsIlYiXSxbMCwxLCJmIiwyXSxbMiwxLCJnIl0sWzMsMCwiXCLDqXQuXCIiXSxbMyw0XSxbNCwxLCJcIsOpdC5cIiJdLFs1LDRdLFs1LDIsIlwiw6l0LlwiIl1d
#align(center, diagram({
	node((-2, 0), [$X$])
	node((-1, 0), [$S$])
	node((0, 0), [$Y.$])
	node((-2, -1), [$U$])
	node((-1, -1), [$W$])
	node((0, -1), [$V$])
	edge((-2, 0), (-1, 0), [$f$], label-side: right, "->")
	edge((0, 0), (-1, 0), [$g$], label-side: left, "->")
	edge((-2, -1), (-2, 0), [$"ét."$], label-side: left, "->")
	edge((-2, -1), (-1, -1), "->")
	edge((-1, -1), (-1, 0), [$"ét."$], label-side: left, "->")
	edge((0, -1), (-1, -1), "->")
	edge((0, -1), (0, 0), [$"ét."$], label-side: left, "->")
}))
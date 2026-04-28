#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsMyxbMCwwLCJYIFxcLyBHIl0sWzEsMSwiYm9sZChcIkJcIilHIl0sWzIsMCwiWSBcXC8gRyJdLFswLDFdLFswLDJdLFsyLDFdXQ==
#align(center, diagram({
	node((-2, 0), [$X \/ G$])
	node((-1, 1), [$bold("B")G$])
	node((0, 0), [$Y \/ G$])
	edge((-2, 0), (-1, 1), "->")
	edge((-2, 0), (0, 0), "->")
	edge((0, 0), (-1, 1), "->")
}))
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNCxbMCwxLCJjYWwoQykiXSxbMSwxLCJzYW5zKFwiU2V0XCIpIl0sWzEsMCwiMSJdLFswLDAsInNhbnMoXCJFbFwiKShGKSJdLFswLDEsIkYiLDJdLFsyLDFdLFszLDBdLFszLDJdLFsyLDAsIiIsMSx7ImxldmVsIjoyfV1d
#align(center, diagram({
	node((-2, 1), [$cal(C)$])
	node((-1, 1), [$sans("Set")$])
	node((-1, 0), [$1$])
	node((-2, 0), [$sans("El")(F)$])
	edge((-2, 1), (-1, 1), [$F$], label-side: right, "->")
	edge((-1, 0), (-1, 1), "->")
	edge((-2, 0), (-2, 1), "->")
	edge((-2, 0), (-1, 0), "->")
	edge((-1, 0), (-2, 1), "=>")
}))
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");


#import "@preview/ouset:0.2.0": *


// https://q.uiver.app/#r=typst&q=WzAsNCxbMSwwLCJYIG91c2V0KHRpbWVzLDwtLClfUyBZIl0sWzAsMSwiWCJdLFsyLDEsIlkiXSxbMSwyLCJTIl0sWzAsMV0sWzEsM10sWzAsMl0sWzIsM10sWzIsMSwiIiwxLHsic2hvcnRlbiI6eyJzb3VyY2UiOjIwLCJ0YXJnZXQiOjIwfSwibGV2ZWwiOjJ9XV0=
#align(center, diagram({
	node((-1, -1), [$X ouset(times,<-,)_S Y$])
	node((-2, 0), [$X$])
	node((0, 0), [$Y$])
	node((-1, 1), [$S$])
	edge((-1, -1), (-2, 0), "->")
	edge((-2, 0), (-1, 1), "->")
	edge((-1, -1), (0, 0), "->")
	edge((0, 0), (-1, 1), "->")
	edge((0, 0), (-2, 0), "=>")
}))
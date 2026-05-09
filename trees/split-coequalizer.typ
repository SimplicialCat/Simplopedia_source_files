#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsMyxbMCwwLCJYIl0sWzEsMCwiWSJdLFsyLDAsIloiXSxbMCwxLCJnIiwyLHsib2Zmc2V0IjoyfV0sWzAsMSwiZiIsMCx7Im9mZnNldCI6LTJ9XSxbMSwyLCJoIl1d
#align(center, diagram({
	node((-3, 0), [$X$])
	node((-2, 0), [$Y$])
	node((-1, 0), [$Z$])
	edge((-3, 0), (-2, 0), [$g$], label-side: right, shift: -0.1, "->")
	edge((-3, 0), (-2, 0), [$f$], label-side: left, shift: 0.1, "->")
	edge((-2, 0), (-1, 0), [$h$], label-side: left, "->")
}))
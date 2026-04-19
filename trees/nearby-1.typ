#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsOCxbMCwwLCJYXzAiXSxbMSwwLCJYIl0sWzIsMCwiVCBcXFxcIFhfMCJdLFsyLDEsIkRfZXBzaWxvbl4qIl0sWzMsMSwidGlsZGUoRClfZXBzaWxvbl4qIl0sWzMsMCwiRSJdLFsxLDEsIkRfZXBzaWxvbiJdLFswLDEsIjAiXSxbMCwxLCJpIiwwLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJ0b3AifX19XSxbMiwxLCJqIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoiaG9vayIsInNpZGUiOiJib3R0b20ifX19XSxbNCwzLCJcInVuaXYuXCIgXFwgXCJjb3YuXCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMiwzLCJmIiwyXSxbNSwyLCJoYXQocGkpIiwyXSxbNSw0XSxbMyw2LCIiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6ImJvdHRvbSJ9fX1dLFs3LDYsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzAsN10sWzEsNl1d
#align(center, diagram({
	node((-3, -1), [$X_0$])
	node((-2, -1), [$X$])
	node((-1, -1), [$T \\ X_0$])
	node((-1, 0), [$D_epsilon^*$])
	node((0, 0), [$tilde(D)_epsilon^*$])
	node((0, -1), [$E$])
	node((-2, 0), [$D_epsilon$])
	node((-3, 0), [$0$])
	edge((-3, -1), (-2, -1), [$i$], label-side: left, "hook->")
	edge((-1, -1), (-2, -1), [$j$], label-side: right, "hook'->")
	edge((0, 0), (-1, 0), [$"univ." \ "cov."$], label-side: left, "->>")
	edge((-1, -1), (-1, 0), [$f$], label-side: right, "->")
	edge((0, -1), (-1, -1), [$hat(pi)$], label-side: right, "->")
	edge((0, -1), (0, 0), "->")
	edge((-1, 0), (-2, 0), "hook'->")
	edge((-3, 0), (-2, 0), "hook->")
	edge((-3, -1), (-3, 0), "->")
	edge((-2, -1), (-2, 0), "->")
}))
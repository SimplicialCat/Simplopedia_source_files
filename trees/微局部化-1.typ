#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNSxbMCwwLCJUX00gWCJdLFsxLDAsInRpbGRlKFgpX00iXSxbMSwxLCJYIl0sWzIsMCwidF4oLTEpKFJSXyg+MCkpIl0sWzAsMSwiTSJdLFswLDEsInMiLDAseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6InRvcCJ9fX1dLFsxLDIsInAiXSxbMywyLCJ0aWxkZShwKSJdLFszLDEsImoiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJob29rIiwic2lkZSI6ImJvdHRvbSJ9fX1dLFs0LDIsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzAsNF1d
#align(center, diagram({
	node((-3, 0), [$T_M X$])
	node((-2, 0), [$tilde(X)_M$])
	node((-2, 1), [$X$])
	node((-1, 0), [$t^(-1)(RR_(>0))$])
	node((-3, 1), [$M$])
	edge((-3, 0), (-2, 0), [$s$], label-side: left, "hook->")
	edge((-2, 0), (-2, 1), [$p$], label-side: left, "->")
	edge((-1, 0), (-2, 1), [$tilde(p)$], label-side: left, "->")
	edge((-1, 0), (-2, 0), [$j$], label-side: right, "hook'->")
	edge((-3, 1), (-2, 1), "hook->")
	edge((-3, 0), (-3, 1), "->")
}))
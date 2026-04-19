#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsMyxbMCwwLCJuICNoKDBwdCkgc2FucyhcIlByXCIpIl0sWzAsMSwiQV8obisxKSJdLFsxLDEsIkJfKG4rMSkiXSxbMCwxLCJmIiwyXSxbMSwyLCJnIiwyXSxbMCwyXV0=
#align(center, diagram({
	node((1, 0), [$n #h(0pt) sans("Pr")$])
	node((1, 1), [$A_(n+1)$])
	node((2, 1), [$B_(n+1)$])
	edge((1, 0), (1, 1), [$f$], label-side: right, "->")
	edge((1, 1), (2, 1), [$g$], label-side: right, "->")
	edge((1, 0), (2, 1), "->")
}))
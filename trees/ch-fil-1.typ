#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsMTMsWzAsMCwiRl8obi0xKSJdLFsxLDEsIkZfbiJdLFsyLDIsIlwiZ3JcIl9uIEYiXSxbMywzLCJGXyhuLTEpWzFdIl0sWzIsNCwiRl8obi0yKSBbMV0iXSxbNCwyLCJcImdyXCJfKG4tMSkgRlsxXSJdLFs1LDEsIkZfKG4tMikgWzJdIl0sWzQsMCwiRl8obi0zKSBbMl0iXSxbNiwyLCJcImdyXCJfKG4tMikgRlsyXSJdLFswLDIsImRvdHMuYyJdLFs3LDMsIkZfKG4tMykgWzNdIl0sWzgsMiwiZG90cy5jIl0sWzYsNCwiRl8obi00KSBbM10iXSxbMCwxXSxbMSwyXSxbMiwzXSxbNCwzXSxbMyw1XSxbNSw2XSxbMiw1LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbNyw2XSxbNiw4XSxbNSw4LCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOSwyLCIiLDEseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbOCwxMF0sWzgsMTEsIiIsMSx7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFs5LDFdLFsxMiwxMF0sWzEwLDExXV0=
#align(center, diagram(
  spacing: 0pt,
  cell-size: (2cm, 1.6cm),
  node-inset: 3pt,
{
	node((-3, -2), [$F_(n-1)$])
	node((-2, -1), [$F_n$])
	node((-1, 0), [$"gr"_n F$])
	node((0, 1), [$F_(n-1)[1]$])
	node((-1, 2), [$F_(n-2) [1]$])
	node((1, 0), [$"gr"_(n-1) F[1]$])
	node((2, -1), [$F_(n-2) [2]$])
	node((1, -2), [$F_(n-3) [2]$])
	node((3, 0), [$"gr"_(n-2) F[2]$])
	node((-3, 0), [$dots.c$])
	node((4, 1), [$F_(n-3) [3]$])
	node((5, 0), [$dots.c$])
	node((3, 2), [$F_(n-4) [3]$])
	edge((-3, -2), (-2, -1), "->")
	edge((-2, -1), (-1, 0), "->")
	edge((-1, 0), (0, 1), "->")
	edge((-1, 2), (0, 1), "->")
	edge((0, 1), (1, 0), "->")
	edge((1, 0), (2, -1), "->")
	edge((-1, 0), (1, 0), "-->")
	edge((1, -2), (2, -1), "->")
	edge((2, -1), (3, 0), "->")
	edge((1, 0), (3, 0), "-->")
	edge((-3, 0), (-1, 0), "-->")
	edge((3, 0), (4, 1), "->")
	edge((3, 0), (5, 0), "-->")
	edge((-3, 0), (-2, -1), "->")
	edge((3, 2), (4, 1), "->")
	edge((4, 1), (5, 0), "->")
}))
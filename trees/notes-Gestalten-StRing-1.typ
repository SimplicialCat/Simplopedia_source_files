#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNSxbMiwxLCIxX0IiXSxbMSwxLCJnXlIgKDFfQikiXSxbMCwxLCIxX0EiXSxbMCwwLCJBX24gPSBmXlIgKDFfQSkiXSxbMSwwLCJmXlIgZ15SICgxX0IpIl0sWzAsMSwiIiwyLHsic3R5bGUiOnsidGFpbCI6eyJuYW1lIjoibWFwcyB0byJ9LCJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMSw0LCIiLDIseyJzdHlsZSI6eyJ0YWlsIjp7Im5hbWUiOiJtYXBzIHRvIn0sImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFsyLDMsIiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Im1hcHMgdG8ifSwiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzIsMV0sWzMsNF1d
#align(center, diagram({
	node((0, 3), [$1_B$])
	node((-1, 3), [$g^R (1_B)$])
	node((-2, 3), [$1_A$])
	node((-2, 2), [$A_n = f^R (1_A)$])
	node((-1, 2), [$f^R g^R (1_B)$])
	edge((0, 3), (-1, 3), "|-->")
	edge((-1, 3), (-1, 2), "|-->")
	edge((-2, 3), (-2, 2), "|-->")
	edge((-2, 3), (-1, 3), "->")
	edge((-2, 2), (-1, 2), "->")
}))
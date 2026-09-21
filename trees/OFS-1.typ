#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNSxbMCwwLCJidWxsZXQiXSxbMCwyLCJidWxsZXQiXSxbMSwxLCJidWxsZXQiXSxbMiwwLCJidWxsZXQiXSxbMiwyLCJidWxsZXQiXSxbMCwxLCJmIiwyXSxbMSwyLCJlbGwiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiwzLCJyIiwyLHsic3R5bGUiOnsiYm9keSI6eyJuYW1lIjoiZGFzaGVkIn19fV0sWzMsNCwiZyJdLFswLDMsInUiXSxbMSw0LCJ2IiwyXSxbMCwyLCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XSxbMiw0LCIiLDAseyJzdHlsZSI6eyJib2R5Ijp7Im5hbWUiOiJkYXNoZWQifX19XV0=
#align(center, diagram({
	node((-3, -1), [$bullet$])
	node((-3, 1), [$bullet$])
	node((-2, 0), [$bullet$])
	node((-1, -1), [$bullet$])
	node((-1, 1), [$bullet$])
	edge((-3, -1), (-3, 1), [$f$], label-side: right, "->")
	edge((-3, 1), (-2, 0), [$ell$], label-side: left, "-->")
	edge((-2, 0), (-1, -1), [$r$], label-side: right, "-->")
	edge((-1, -1), (-1, 1), [$g$], label-side: left, "->")
	edge((-3, -1), (-1, -1), [$u$], label-side: left, "->")
	edge((-3, 1), (-1, 1), [$v$], label-side: right, "->")
	edge((-3, -1), (-2, 0), "-->")
	edge((-2, 0), (-1, 1), "-->")
}))
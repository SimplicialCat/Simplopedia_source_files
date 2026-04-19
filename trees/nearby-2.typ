#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsOCxbMCwwLCJYX3MiXSxbMSwwLCJYIl0sWzIsMCwiWF9ldGEiXSxbMiwxLCJldGEiXSxbMywxLCJvdmVybGluZShldGEpIl0sWzMsMCwiWF8ob3ZlcmxpbmUoZXRhKSkiXSxbMSwxLCJTIl0sWzAsMSwicyJdLFswLDEsImkiXSxbMiwxXSxbNCwzLCIiLDAseyJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJlcGkifX19XSxbMiwzXSxbNSwyXSxbNSw0XSxbMyw2XSxbNyw2XSxbMCw3XSxbMSw2XSxbNSwxLCJqIiwyLHsiY3VydmUiOjJ9XV0=
#align(center, diagram({
	node((0, 0), [$X_s$])
	node((1, 0), [$X$])
	node((2, 0), [$X_eta$])
	node((2, 1), [$eta$])
	node((3, 1), [$overline(eta)$])
	node((3, 0), [$X_(overline(eta))$])
	node((1, 1), [$S$])
	node((0, 1), [$s$])
	edge((0, 0), (1, 0), [$i$], label-side: left, "->")
	edge((2, 0), (1, 0), "->")
	edge((3, 1), (2, 1), "->>")
	edge((2, 0), (2, 1), "->")
	edge((3, 0), (2, 0), "->")
	edge((3, 0), (3, 1), "->")
	edge((2, 1), (1, 1), "->")
	edge((0, 1), (1, 1), "->")
	edge((0, 0), (0, 1), "->")
	edge((1, 0), (1, 1), "->")
	edge((3, 0), (1, 0), [$j$], label-side: right, "->", bend: -36deg)
}))
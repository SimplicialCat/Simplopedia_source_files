
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsOCxbMCwxLCJQUF4xIl0sWzEsMSwiYm9sZCh1cHJpZ2h0KEIpKUIiXSxbMSwyLCJib2xkKHVwcmlnaHQoQikpXCJTTFwiXzIiXSxbMiwxLCJib2xkKHVwcmlnaHQoQikpIEdHX20iXSxbMCwyLCIqIl0sWzAsMCwiQUFeMiBcXFxcIDAiXSxbMiwwLCIqIl0sWzEsMCwiYm9sZCh1cHJpZ2h0KEIpKU4iXSxbMCwxXSxbMSwyXSxbMSwzXSxbNCwyXSxbMCw0XSxbNiwzXSxbNSwwXSxbNSw3XSxbNyw2XSxbNywxXV0=
#align(center, diagram({
	node((-5, 3), [$PP^1$])
	node((-4, 3), [$bold(upright(B))B$])
	node((-4, 4), [$bold(upright(B))"SL"_2$])
	node((-3, 3), [$bold(upright(B)) GG_m$])
	node((-5, 4), [$*$])
	node((-5, 2), [$AA^2 \\ 0$])
	node((-3, 2), [$*$])
	node((-4, 2), [$bold(upright(B))N$])
	edge((-5, 3), (-4, 3), "->")
	edge((-4, 3), (-4, 4), "->")
	edge((-4, 3), (-3, 3), "->")
	edge((-5, 4), (-4, 4), "->")
	edge((-5, 3), (-5, 4), "->")
	edge((-3, 2), (-3, 3), "->")
	edge((-5, 2), (-5, 3), "->")
	edge((-5, 2), (-4, 2), "->")
	edge((-4, 2), (-3, 2), "->")
	edge((-4, 2), (-4, 3), "->")
}))

// https://q.uiver.app/#r=typst&q=WzAsOCxbMCwxLCJHIFxcLyBCIl0sWzEsMSwiYm9sZCh1cHJpZ2h0KEIpKUIiXSxbMSwyLCJib2xkKHVwcmlnaHQoQikpIEciXSxbMiwxLCJib2xkKHVwcmlnaHQoQikpIFQiXSxbMCwyLCIqIl0sWzAsMCwiRyBcXC8gTiJdLFsyLDAsIioiXSxbMSwwLCJib2xkKHVwcmlnaHQoQikpTiJdLFswLDFdLFsxLDJdLFsxLDNdLFs0LDJdLFswLDRdLFs2LDNdLFs1LDBdLFs1LDddLFs3LDZdLFs3LDFdXQ==
#align(center, diagram({
	node((-5, 3), [$G \/ B$])
	node((-4, 3), [$bold(upright(B))B$])
	node((-4, 4), [$bold(upright(B)) G$])
	node((-3, 3), [$bold(upright(B)) T$])
	node((-5, 4), [$*$])
	node((-5, 2), [$G \/ N$])
	node((-3, 2), [$*$])
	node((-4, 2), [$bold(upright(B))N$])
	edge((-5, 3), (-4, 3), "->")
	edge((-4, 3), (-4, 4), "->")
	edge((-4, 3), (-3, 3), "->")
	edge((-5, 4), (-4, 4), "->")
	edge((-5, 3), (-5, 4), "->")
	edge((-3, 2), (-3, 3), "->")
	edge((-5, 2), (-5, 3), "->")
	edge((-5, 2), (-4, 2), "->")
	edge((-4, 2), (-3, 2), "->")
	edge((-4, 2), (-4, 3), "->")
}))
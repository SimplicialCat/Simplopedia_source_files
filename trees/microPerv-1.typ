#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNixbMCwwLCJUIFReKiBYIl0sWzEsMCwiVF9EZWx0YSAoVF4qWCB0aW1lcyBUXipYKSJdLFsxLDEsIlReKlgiXSxbMiwxLCJUXipYIHRpbWVzIFReKlgiXSxbMiwwLCIoVF4qWCB0aW1lcyBUXipYKV4odGlsZGUpIl0sWzMsMCwiT21lZ2EiXSxbMSwyXSxbMiwzLCJEZWx0YSIsMl0sWzUsNCwiaiIsMix7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoiYm90dG9tIn19fV0sWzEsNCwicyIsMCx7InN0eWxlIjp7InRhaWwiOnsibmFtZSI6Imhvb2siLCJzaWRlIjoidG9wIn19fV0sWzQsMywicCIsMl0sWzUsMywidGlsZGUocCkiXSxbMCwxLCJ0aWxkZS5lcSJdXQ==
#align(center, diagram({
	node((-4, 0), [$T T^* X$])
	node((-3, 0), [$T_Delta (T^*X times T^*X)$])
	node((-3, 1), [$T^*X$])
	node((-2, 1), [$T^*X times T^*X$])
	node((-2, 0), [$(T^*X times T^*X)^(tilde)$])
	node((-1, 0), [$Omega$])
	edge((-3, 0), (-3, 1), "->")
	edge((-3, 1), (-2, 1), [$Delta$], label-side: right, "->")
	edge((-1, 0), (-2, 0), [$j$], label-side: right, "hook'->")
	edge((-3, 0), (-2, 0), [$s$], label-side: left, "hook->")
	edge((-2, 0), (-2, 1), [$p$], label-side: right, "->")
	edge((-1, 0), (-2, 1), [$tilde(p)$], label-side: left, "->")
	edge((-4, 0), (-3, 0), [$tilde.eq$], label-side: left, "->")
}))
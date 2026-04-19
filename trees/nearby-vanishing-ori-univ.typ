#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");


#import "@preview/ouset:0.2.0": *

// https://q.uiver.app/#r=typst&q=WzAsNSxbMSwwLCJYIl0sWzEsMSwiWCBvdXNldCh0aW1lcyw8LSwpX1MgUyJdLFswLDIsIlgiXSxbMiwyLCJTIl0sWzEsMywiUyJdLFswLDIsIiIsMCx7ImN1cnZlIjoxLCJsZXZlbCI6Miwic3R5bGUiOnsiaGVhZCI6eyJuYW1lIjoibm9uZSJ9fX1dLFszLDQsIiIsMCx7ImxldmVsIjoyLCJzdHlsZSI6eyJoZWFkIjp7Im5hbWUiOiJub25lIn19fV0sWzAsMywiZiIsMCx7ImN1cnZlIjotMX1dLFsyLDQsImYiLDJdLFsxLDIsInAiLDJdLFsxLDNdLFswLDEsIiIsMix7InN0eWxlIjp7ImJvZHkiOnsibmFtZSI6ImRhc2hlZCJ9fX1dLFszLDIsIiIsMix7InNob3J0ZW4iOnsic291cmNlIjoyMCwidGFyZ2V0IjoyMH0sImxldmVsIjoyfV1d
#align(center, diagram({
	node((-1, -1), [$X$])
	node((-1, 0), [$X ouset(times,<-,)_S S$])
	node((-2, 1), [$X$])
	node((0, 1), [$S$])
	node((-1, 2), [$S$])
	edge((-1, -1), (-2, 1), "=", bend: -18deg)
	edge((0, 1), (-1, 2), "=")
	edge((-1, -1), (0, 1), [$f$], label-side: left, "->", bend: 18deg)
	edge((-2, 1), (-1, 2), [$f$], label-side: right, "->")
	edge((-1, 0), (-2, 1), [$p$], label-side: right, "->")
	edge((-1, 0), (0, 1), "->")
	edge((-1, -1), (-1, 0), "-->")
	edge((0, 1), (-2, 1), "=>")
}))
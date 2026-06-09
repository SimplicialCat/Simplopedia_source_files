#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import "./_lib/kodama.typ": *
#let cal(content) = text(font: "KaTeX_Caligraphic", content)
#set page(width: auto, height: auto, margin: (x: 0em, y: 0.1em), fill: rgb(0, 0, 0, 0)); 
#set text(size: 15.5pt, top-edge: "bounds", bottom-edge: "bounds");

// https://q.uiver.app/#r=typst&q=WzAsNCxbMSwwLCJjYWwoQSkgdGltZXMuY2lyY2xlIGNhbChBKSB0aW1lcy5jaXJjbGUgY2FsKEEpIl0sWzAsMCwiY2FsKEEpIHRpbWVzLmNpcmNsZSBjYWwoQSkgdGltZXMuY2lyY2xlIGNhbChBKSB0aW1lcy5jaXJjbGUgY2FsKEEpIl0sWzAsMSwiY2FsKEEpIHRpbWVzLmNpcmNsZSBjYWwoQSkiXSxbMSwxLCJjYWwoQSkiXSxbMSwyXSxbMCwzXSxbMywyLCJcIm11bHRcIl5SIl0sWzAsMSwiY2FsKEEpIHRpbWVzLmNpcmNsZSBcIm11bHRcIl5SIHRpbWVzLmNpcmNsZSBjYWwoQSkiLDJdXQ==
#align(center, diagram({
	node((0, 0), [$cal(A) times.circle cal(A) times.circle cal(A)$])
	node((-1, 0), [$cal(A) times.circle cal(A) times.circle cal(A) times.circle cal(A)$])
	node((-1, 1), [$cal(A) times.circle cal(A)$])
	node((0, 1), [$cal(A)$])
	edge((-1, 0), (-1, 1), "->")
	edge((0, 0), (0, 1), "->")
	edge((0, 1), (-1, 1), [$"mult"^R$], label-side: left, "->")
	edge((0, 0), (-1, 0), [$cal(A) times.circle "mult"^R times.circle cal(A)$], label-side: right, "->")
}))
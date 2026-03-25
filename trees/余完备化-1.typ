#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge

#align(center, diagram({
	node((-2, 0), [$sans("P")^K (cal(C))$])
	node((-2, 1), [$K$])
	node((-1, 1), [$sans("Cat")$])
	node((-1, 0), [$1$])
	edge((-2, 0), (-2, 1), "->")
	edge((-2, 1), (-1, 1), "->")
	edge((-2, 0), (-1, 0), "->")
	edge((-1, 0), (-1, 1), [$cal(C)$], label-side: left, "->")
	edge((-2, 1), (-1, 0), "=>")
}))
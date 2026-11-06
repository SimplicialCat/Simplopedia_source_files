---
title: 拓扑学 2026 秋助教讲稿 (1)
tag: 讲稿
author: [SimplicialCat](SimplicialCat.md)
---

## Finite topological spaces

**Problem**. Classify topologies on $\{a,b,c,d\}$ up to homeomorphism.

*Solution*. [Finite topological spaces](有限拓扑空间.md) are equivalent to finite **preorders**. A topology on a finite set $X$ corresponds to the preorder $\leq$ defined as follows:

- $x\leq y$ if and only if every neighborhood of $x$ contains $y$, or equivalently, $x$ lies in the closure of $\{y\}$.

Conversely, a preorder $\leq$ on $X$ defines a topology by specifying a basis

- $\{\uparrow x\mid x\in X\}$, where $\uparrow x$ is the subset $\{y\in X\mid y\geq x\}$.

Remark. When $x\leq y$ we sometimes say that $x$ is a **specialization** of $y$ and that $y$ is a **generalization** of $x$, two terms from algebraic geometry. In algebraic geometry, one often consider [generic points](一般点.md) on varieties (e.g. an affine line) and talk about their specializations. The closure of a generic point contains all its specializations.

Moreover, under the above correspondence, finite [$T_0$ spaces](T0空间.md) are equivalent to finite [partial orders](偏序集.md). Non-$T_0$ spaces (preorders) can be made into $T_0$ spaces (partial orders) by identifying indistinguishable pairs, reducing the classification problem.

To classify topologies on $\{a,b,c,d\}$, we first classify *connected* $T_0$ space, which correspond to connected partial orders.

We list all connected partial orders on finite sets of cardinality at most $4$ (which are relatively easy to enumerate):

Cardinality $1$

- $\{a\}$

Cardinality $2$

- $\{a < b\}$

Cardinality $3$

- $\{a < b < c\}$
- $\{a < b, a < c\}$
- $\{a < c, b < c\}$

Cardinality $4$ (count: $10$)

- $\{a < b < c < d\}$
- $\{a < b < c, b < d\}$
- $\{a < b, a < c, a < d\}$
- $\{a < b, a < c < d\}$
- $\{a < b < d, c < d\}$
- $\{a < c, b < c < d\}$
- $\{a < c, b < c, b < d\}$
- $\{a < d, b < d , c < d\}$
- $\{a < b, a < c, b < d, c < d\}$
- $\{a < c, a < d, b < c, b < d\}$

Based on this result, we may add indistinguishable points to existing ones to obtain a classification of connected *preorders* on finite sets of cardinality at most $4$ (write $a \sim b$ for $a\leq b \land b\leq a$):

Cardinality $0$

- $\varnothing$

Cardinality $1$

- $\{a\}$

Cardinality $2$

- $\{a < b\}$
- $\{a \sim b\}$

Cardinality $3$ (count: $6$)

- ($3$ listed above)
- $\{a < b \sim c\}$
- $\{a \sim b < c\}$
- $\{a \sim b \sim c\}$

Cardinality $4$ (count: $21$)

- ($10$ listed above)
- $\{a < b < c \sim d\}$
- $\{a < b, a < c \sim d\}$
- $\{a < c, b < c \sim d\}$
- $\{a < b \sim c < d\}$
- $\{a \sim b < c, a < d\}$
- $\{a \sim b < d, c < d\}$
- $\{a \sim b < c < d\}$
- $\{a < b \sim c \sim d\}$
- $\{a \sim b < c \sim d\}$
- $\{a \sim b \sim c < d\}$
- $\{a \sim b \sim c \sim d\}$

A general topological space is the union of its connected components. Therefore the number of topologies on $\{a,b,c,d\}$ is

$$
\underbrace{21}_{4} +
\underbrace{6}_{3+1} +
\underbrace{3}_{2+2} +
\underbrace{2}_{2+1+1} +
\underbrace{1}_{1+1+1+1} = 33.
$$


---
title: "Lie 代数胚"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


设 $M$ 是流形, 其上的实 Lie 代数胚是一个实向量丛 $A$, 带有 Lie 括号 $[-,-]_A$, 以及丛映射 $q_A \colon  A\to TM$, 满足对 $A$ 的截面 $X,Y$, 以及 $M$ 上的函数 $f$,
$$
[X,fY]_A = f [X,Y]_A + (q_A(X)f)Y.
$$
且 $q_A$ 定义了 $A$ 的截面到 $TM$ 的截面的 Lie 代数同态.

设 $X$ 是概形, $L$ 是 $X$ 上的[拟凝聚层](拟凝聚层.md), 带有 Lie 括号 $[-,-]\colon  \wedge^2 L \to L$,

## 例

设 $X$ 是概形, $T_X$ 上有自然的 Lie 括号.

对于 Lie 代数 $\mathfrak g$ 在 $X$ 上的无穷小作用, $L = \mathfrak g\otimes \mathcal O_X$ (?)

无穷小自同构: 设 $E\to X$ 是向量丛, $GL(E)\to X$ 为 $GL(n)$-[主丛](主丛.md). (??)

## Picard 代数胚

扭微分算子 (twisted differential operators) 是指 ...

拟凝聚代数 $D$ 带有滤结构, 满足 $m (F_i D, F_jD)\subset F_{i+j}D$, $\mathcal O_X \subset F_0 D$, $F_1 D/ F_0 D \simeq T_X$.

扭微分算子对应 Picard 代数胚.

## 联络

Lie 代数胚上的联络是映射 $z\colon  L \to T_X$ 的截面 $\nabla\colon  T_X \to L$, 若 $\nabla$ 是 Lie 代数胚映射, 则称其为平坦联络.

联络的曲率 $c(\nabla) \in \operatorname{Hom}_{\mathcal O_X} (\wedge^2 T_X, \ker z)$

若 $L$ 为 Picard 代数胚, 则曲率 $c(\nabla) \in \Omega_X^2$.

联络的空间是 $\Omega^1$ 的仿射空间. 对于 $\alpha\in \Omega^1$, $c(\nabla + \alpha) = c(\nabla) + d\alpha$.
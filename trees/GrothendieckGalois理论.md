---
title: Grothendieck Galois 理论
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Grothendieck Galois 理论某种意义上提取出了一个连通[概形](概形.md)的 "形状" 的一阶同伦信息.

Grothendieck Galois 理论是如下理论的推广:

- 域的 Galois 扩张 (见[经典 Galois 理论](经典Galois理论.md));
- 拓扑空间的 [Galois 覆叠](Galois覆叠.md).

## 陈述

设 $X$ 为连通概形, 则存在一个 [pro-有限群](pro-有限群.md) $\pi_1(X)$ (称为平展基本群), 使得有限平展覆叠的范畴 $\mathsf{FEt}_X$ 等价于有限 $\pi_1(X)$-集合的范畴 $\mathsf{FinSet}_{\pi_1(X)}$. 例如 $n$ 个 $X$ 的无交并对应 $n$ 元集合上的平凡 $\pi_1(X)$-作用.

$\pi_1(X)$ 在同构的意义下唯一, 但实际上依赖于一个基点的选取. 这个基点是通过[纤维函子](纤维函子.md)给出的.

...

## 例

### 整数环的谱 $\operatorname{Spec} \mathbb{Z}$

$\pi_1(\operatorname{Spec}\mathbb{Z})$ 是平凡的, $\operatorname{Spec}\mathbb{Z}$ 没有非平凡的有限平展覆叠.

见[扭结–素数类比](扭结–素数类比.md)

### 域的谱

对于域 $K$, $\pi_1(\operatorname{Spec}K)$ 是 $K$ 的[绝对 Galois 群](绝对Galois群.md).
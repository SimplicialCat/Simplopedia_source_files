---
title: PGLn
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

### 作为仿射概形

$\mathrm{PGL}_n$
是
$\mathbb{Z}[x_{11},\cdots,x_{nn},\operatorname{det}^{-1}]$
中 $0$ 次元素构成的子环对应的[仿射概形](仿射概形.md).

### 函子式

$\mathrm{PGL}_n$ 是如下[群概形](群概形.md) $\mathsf{Aff} \to \mathsf{Grp}$:
$$
    \operatorname{Spec}A \mapsto \operatorname{Aut}(M_n(A)).
$$
那么它是 $\operatorname{GL}_{n^2}$ 中由多项式 (即模的同构保持乘法与单位) 刻画的一个闭子概形, 从而是[仿射概形](仿射概形.md).

## 性质

### 与 $\mathrm{GL}_n$ 的关系

采用函子式定义, $\mathrm{PGL}_n(\operatorname{Spec}A) = \operatorname{Aut}(M_n(A))$, 那么有群同态 $\mathrm{GL}_n \to \mathrm{PGL}_n$ 将 $X\in \mathrm{GL}_n(A)$ 映射到
$$
(Y\mapsto X Y X^{-1}) \in \operatorname{Aut}(M_n(A)).
$$

**命题**. 对于上述同态,
$$
\mathbb G_m \to \mathrm{GL}_n \to \mathrm{PGL}_n
$$
是 $\operatorname{Spec}\mathbb{Z}$ 上的 [Zariski 意象](Zariski意象.md)中的群正合列 (从而也是任何概形上的 Zariski, [平展](平展景.md), 平坦中的任何一种拓扑对应的意象中的群正合列).

_证明_.

- $\mathrm{GL}_n$ 处的正合性. 为此只需证明: 对任意环 $R$ 上的 $n$ 阶可逆矩阵 $X$, 若 $XYX^{-1}=Y\,(\forall Y\in M_n(R))$, 则 $X$ 为常数倍的单位矩阵. 这只需令 $Y$ 为仅有一个位置非零的矩阵.
- $\mathrm{GL}_n \to \mathrm{PGL}_n$ 满. 为此只需证明: 对任意局部环 $R$, $M_n(R)$ 作为 $R$-代数的自同构均为内自同构. 而这是 [Skolem–Noether 定理](Skolem–Noether定理.md)的特例.
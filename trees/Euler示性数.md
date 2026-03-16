---
title: Euler 示性数
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 流形

流形的 Euler 示性数等于 [Euler 类](Euler类.md)的积分.


**定理**. 设 $M$ 为紧 [Kähler 流形](Kähler流形.md), 定义 (注意符号 $(-1)^q$, 通常的 Euler 示性数此处是 $(-1)^{p+q}$.)
$$
\chi_1 (M) :=\sum_{p=0}^n \sum_{q=0}^n (-1)^q h^{p,q}(M),
$$
那么 $\chi_1(M) = \tau(M)$ 等于 $M$ 上[相交形式](相交形式.md) ($H^n$ 上的配对) 的指标 (正惯性指数减负惯性指数; $n$ 是奇数时约定流形的指标为 $0$).

**证明**. $n$ 是奇数时, [Serre 对偶](Serre对偶.md)给出 $h^{p,q} = h^{n-p,n-q}$, 从而 $\chi_1(M) = 0$.

$n$ 是偶数时, 考虑调和形式的空间 $\mathcal  B^{p,q}$. 我们的思路是将它分解为可计算的子空间, 同时把 $\tau(M)$ 表示为这些子空间维数的交错和.

注意到[基本形式](基本形式.md) $\omega$ 是调和形式, 定义 $L\colon \mathcal B^{p,q}\to \mathcal B^{p+1,q+1}$, $\Lambda\colon \mathcal B^{p,q} \to \mathcal B^{p-1,q-1}$,
$$
L\colon \alpha\mapsto \omega\alpha,\quad

\Lambda \colon  \alpha\mapsto (-1)^{p+1} \# L \# \alpha,
$$
则 $L,\Lambda,H=[L,\Lambda] = p+q-n$ 构成 $\mathfrak {sl}_2$ 的表示. 参见[sl2的表示](sl2的表示.md).

经过一些观察, 我们有分解
$$
\mathcal B^{p,q} = \mathcal B_0^{p,q} \oplus L \mathcal B_0^{p-1,q-1}\oplus \cdots \oplus L^r\mathcal B_0^{q-r,p-r}\,(r=\min(p,q)),
$$
其中 $\mathcal B_0^{p,q} = \ker\Lambda$. 记 $\mathcal B_k^{p,q}:= L^k \mathcal B_0^{p-k,q-k}$.

回忆 [Hodge 理论](Hodge分解定理.md)
$$
H^n(M;\mathbb{C})\simeq \bigoplus_{\substack {p+q=n \\ k\leq \min(p,q)}}\mathcal B_k^{p,q},
$$
它关于 $H^n$ 上的内积 $\displaystyle (\alpha,\beta) = \int_M \alpha\wedge \# \beta$ 实际上是正交分解.

## 向量丛

向量丛的 Euler--Poincaré 特征定义为
$$
\chi(X,E) := \sum_{i\geq 0} (-1)^i \dim H^i(X,E).
$$
它是 "拓扑不变量", 在 $X$ 与 $E$ 的 "连续形变" 下不变.

## 截面

复流形的 Euler 示性数是其[全纯(余)切丛](全纯切丛.md)的一般位置的截面的零点数.

**例**. $\mathbb{C}P^1$ 上的向量场 $z\frac{\partial}{\partial z}$ 是一个旋转的生成元, 有两个零点, 位于南北极. 向量场 $\frac{\partial}{\partial z}$ 在北极有一个二重零点.

## 最高陈类

复流形上的最高[陈类](陈类.md)又称 [Euler 类](Euler类.md), 其积分等于 Euler 数.

## 层

Euler 示性数有时比上同调更好计算.

设 $\mathscr F$ 是 $k$-射影代数簇 $X$ 上的[凝聚层](凝聚层.md), 定义
$$
\chi(X,\mathscr F)=\sum_{i=0}^{\dim X} (-1)^i \dim_k H^i(X,\mathscr F).
$$

**命题**. 设 $0\to \mathscr F\to \mathscr G\to \mathscr H\to 0$ 是 $k$-射影代数簇 $X$ 上[凝聚层](凝聚层.md)的正合列, 那么
$$
\chi(X,\mathscr G) = \chi(X,\mathscr F) + \chi (X,\mathscr H).
$$
更一般地, 若 $\mathscr F_\bullet$ 是 (有限项) 正合列, 则有 $\sum_i (-1)^i \chi(X,\mathscr F_i)=0$.


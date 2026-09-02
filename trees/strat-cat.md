---
title: 分层空间与范畴
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

[](AyalaFrancisRozenblyumStrat.md)

## 简介

本文说明适当的[分层空间](分层.md)可通过所谓[出路范畴](出路范畴.md)的构造得到一个范畴, 直观上即 "只允许走向更高分层" 的道路构成的范畴:
$$
\mathsf{Exit}\colon \mathsf{Strat} \to \mathsf{Cat}.
$$
且在本文研究的 "锥光滑分层空间" 的子范畴上, $\mathsf{Exit}$ 为全忠实函子.

由于上述构造, $\infty$-范畴可以用锥光滑分层空间来[探测](探测.md), 从而视为这种分层空间的范畴上的层. 本文具体给出了一个层构成 $\infty$-范畴须满足的条件, 称之为**条纹层** (striation sheaves), 证明有范畴等价
$$
\mathsf{Stri} \simeq \mathsf{Cat}.
$$
换言之, 条纹层提供了 $\infty$-范畴的一个[模型](无穷范畴的模型.md), 其特点在于方便通过几何来构造一些通过单纯集等模型难以企及的无穷范畴. 无穷范畴的反转态射的对称性在这种模型中体现为 Poincaré 对偶.

## 锥光滑分层空间

定义 $C^0$ 分层空间为如下操作生成的最小类:

- 空空间 $\varnothing$;
- 紧 $C^0$ 分层空间 $X$ 的开锥 $C(X)$ 也是 $C^0$ 分层空间;
- 对乘积封闭;
- 对开子空间封闭;
- 能被 $C^0$ 分层空间开覆盖的分层空间也是 $C^0$ 分层空间.

归纳定义**锥光滑分层空间** (conically smooth stratified space) 为 $C^0$ [分层空间](分层.md) $X$, 带有**锥光滑图册** (conically smooth atlas)
$$
\{ \mathbb R^i \times C(Z) \hookrightarrow X\},
$$
其中 $Z$ 是深度严格小于 $X$ 的紧的锥光滑分层空间. 每个 "坐标卡" $\mathbb R^i \times C(Z)$ 包含一个锥点部分
$$
\mathbb R^i\times * \hookrightarrow \mathbb R^i \times C(Z),
$$
其在分层结构中处于较低层级. 空间 $Z$ 的每个点都对应从锥点向外走出的一个方向. 当然 $Z$ 也可以是 $\varnothing$, 此时 $C(Z)$ 是单点, 这个坐标卡就像是普通的光滑流形的坐标卡.

我们还需要归纳地定义两个坐标卡之间的映射
$$
f\colon \mathbb R^i \times C(Y) \to \mathbb R^j \times C(Z)
$$
何时**光滑**.

- 在 $\mathbb R^i \times C(Y)$ 的锥点之外的部分, 光滑性通过 $Y$ 的各个坐标卡归纳定义. (因为 $Y$ 的深度较小, 可以假设光滑性已经定义好了.)
- 考虑 $\mathbb R^i \times C(Y)$ 的锥点, 注意锥点未必打到锥点, 但是若不打到锥点则光滑性可由上一款定义, 故在此假设锥点打到锥点.
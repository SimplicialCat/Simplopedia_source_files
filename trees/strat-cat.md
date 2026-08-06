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
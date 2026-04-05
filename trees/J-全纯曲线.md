---
title: "J-全纯曲线"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


J-全纯曲线可用于研究[辛流形](辛流形.md)的整体结构, [Kähler 流形](Kähler流形.md)的形变. 其中 J 指[近复结构](近复结构.md).

## 定义

[近复结构](近复流形.md) $(M,J)$ 上的 $J$-全纯曲线是 $(j,J)$-[近复结构](全纯映射.md) $u\colon (\Sigma,j)\to (M,J)$, 其中 $(\Sigma,j)$ 为 [Riemann 面](Riemann面.md). 通常我们取 $(\Sigma,j)$ 为 Riemann 球面 $\mathbb{C}\cup\{\infty\}$.

若 $u$ 为嵌入, 其像为 $M$ 的 $2$ 维子流形, 且切空间是 $J$-不变子空间. 反之, 设 $C\subset M$ 是 $2$ 维子流形, $TC\subset TM$ 是 $J$-不变子空间, 则 $J$ 在 $C$ 上的限制可积 (因为 $2$ 维实流形上的任意[近复结构](近复结构.md)都可积), 故 $C$ 有 $J$-全纯参数化.

称 $J$ 顺服于 (tamed by) $\omega$ 是指对任意非零向量 $X$,
$$
\omega(X,JX) > 0.
$$

## 模空间

$J$-全纯曲线的关键事实是其[模空间](模空间.md)一般为有限维, 且模空间的[配边](配边.md)类不依赖于 $J$ 的选取, 只要 $J$ 顺服于 $\omega$.

设 $A\in H_2(M,\mathbb{Z})$, 所有代表 $A$ 的 $J$-全纯曲线构成模空间 $\mathcal M(A,J)$.
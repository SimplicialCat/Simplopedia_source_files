---
title: Atiyah–Singer 指标定理
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Atiyah–Singer 指标定理在流形上整体地描述微分方程的拓扑.

## 陈述

[椭圆算子](椭圆算子.md)的[拓扑指标](拓扑指标.md)等于[解析指标](解析指标.md).

> Nicolaescu, Notes on the Atiyah-Singer Index Theorem

设 $E$ 为 Dirac 丛, $D$ 为 Dirac 算子, $F^{E/\mathbb S}\in \operatorname{End}_{\mathrm{Cl}(M)}(E)$ 为曲率 (twisting curvature), 定义[陈特征](陈特征.md)
$$
\operatorname{ch}^{E/\mathbb S}:= \operatorname{str}^{E/\mathbb S} \exp\left(\frac{i}{2\pi} F^{E/\mathbb S}\right) \in\Omega^\bullet(M),
$$
[A-hat 类](A-hat类.md)
$$
\widehat{A}(M)=\det \left(\frac{\frac{i}{4\pi}R}{\sinh (\frac{i}{4\pi}R)}\right)^{1/2},
$$
那么 Atiyah–Singer 定理是说
$$
\operatorname{ind}D=\dim\ker D -\dim\ker D^* =\int_M \widehat{A}(M) \operatorname{ch}^{E/\mathbb S}(E).
$$

> John W. Morgan, The Seiberg--Witten Equations and Applications ..., 3.3 节

设 $X$ 为闭可定向 Riemann 四维流形, $\widetilde P$ 是 $X$ 上的自旋结构, $\partial \hspace{-5pt}/$ 为复旋量丛 $S_{\mathbb{C}}^+(\widetilde P)$ 到 $S_{\mathbb{C}}^-(\widetilde P)$ 的 [Dirac 算子](Dirac算子.md), 由其[象征](象征.md)可计算其[解析指标](解析指标.md)如下.

回忆对于 $\pi\colon T^*X\to X$, 象征是 $T^*X$ 上的向量丛 $\pi^* S^+$ 到 $\pi^* S^-$ 的丛同态. 这个丛同态在 $T^*X\setminus X$ (减去零截面) 上的限制是丛的同构. 因此, 象征给出了 $T^*X$ 相对于 $T^*X\setminus X$ 的[相对 K-群 (拓扑)](相对K-群.md)的一个元素. Atiyah–Singer 指标定理即是说, 由这个相对 K-理论的元素可计算出解析指标.


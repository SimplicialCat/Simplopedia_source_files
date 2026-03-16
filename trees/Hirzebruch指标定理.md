---
title: "Hirzebruch 指标定理"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

Hirzebruch 指标定理揭示了两个[配边](配边.md)不变量, 即[流形的指标](流形的指标.md)和 [Pontryagin 数](Pontryagin数.md)的关系. 它可用于证明 [Hirzebruch--Riemann--Roch 定理](Hirzebruch--Riemann--Roch定理.md).

## Hirzebruch 指标定理的另一表述

记 Riemann 流形 $M$ 上的偶数维与奇数维微分形式的空间分别为 $\Omega^{\text{even}}, \Omega^{\text{odd}}$. 考虑两个微分算子
$$
\begin{aligned}
	D_0=d+\delta &: \Omega^{\text{even}}\to \Omega^{\text{odd}},\\
	D_1=d+\delta &: \Omega^{\text{odd}} \to \Omega^{\text{even}}.
\end{aligned}
$$
注意到 Laplace 算子 $\triangle$ 在偶分量和奇分量分别等于 $D_1D_0$ 和 $D_0D_1$.
由 [Hodge 理论](Hodge理论.md),
$$
\begin{aligned}
\dim \ker D_0 &= \sum_i \dim H^{2i}(M),\\
\dim \ker D_1 &= \sum_i \dim H^{2i+1}(M).
\end{aligned}
$$
因此
$$
\dim\ker D_0 - \dim\ker D_1 = \chi(M).
$$
上式的左端可用 $D_0$ 表示. 首先注意到如下命题:

**命题**. $\operatorname{im}\triangle\big|_{\Omega^{\text{even}}} = \operatorname{im}D_0$.

**证明**. 一方面, 显然 $\operatorname{im}\triangle\big|_{\Omega^{\text{even}}}\subset \operatorname{im}D_0$. 另一方面, 由 [Hodge 理论](Hodge分解定理.md)以及[调和形式](调和形式.md)的性质,
$$
\Omega^\bullet = \ker\triangle\oplus \operatorname{im}\triangle,
$$
$$
\Omega^{\text{even}}=\ker \triangle\big|_{\Omega^{\text{even}}}\oplus  \operatorname{im}\triangle\big|_{\Omega^{\text{even}}}=\ker D_0\oplus \operatorname{im}\triangle\big|_{\Omega^{\text{even}}}.
$$
而 $D_0$ 与 $\triangle$ 可交换, 故得
$$
\operatorname{im}D_0 \subset \operatorname{im} \triangle\big|_{\Omega^{\text{even}}}.
$$
**命题**. $\operatorname{coker}D_0 = \ker D_1$.

**证明**. 由 Hodge 分解定理,
$$
\Omega^{\text{odd}}= \ker\triangle\big|
$$
$$
\operatorname{coker}D_0=\Omega^{\text{odd}}/\operatorname{im}D_0=\Omega^{\text{odd}}/ \operatorname{im}\triangle\big|_{\Omega^{\text{even}}} = \mathscr{H} \cap \Omega^{\text{odd}}=\ker D_1,
$$
所以
$$
\dim \ker D_0 - \dim \operatorname{coker}D_0 = \chi(M).
$$
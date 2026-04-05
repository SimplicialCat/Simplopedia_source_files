---
title: "指数映射 (Lie 群)"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Lie 群上的指数映射是一个光滑映射 $\exp\colon \mathfrak g\to G$, 定义如下. 对 $a\in\mathfrak g$ 令 $\gamma\colon (-\varepsilon,\varepsilon) \to G$ 为满足方程 $\gamma(0)=e$, $\gamma'(t)=L_{\gamma(t)}a$ ($L_{g}$ 为左平移) 的曲线, 定义
$$
\exp(a) = \gamma(1).
$$

## 主丛上的指数映射

设 $G$ 是紧 Lie 群, $M$ 是 Riemann 流形, $\pi\colon P\to M$ 是 $G$-[主丛](主丛.md). 设 $\omega$ 为 $P$ 上的[联络](联络.md).

设 $\mathfrak g$ 上有 $\operatorname{Ad}$-不变的内积, 从而 $G$ 上有 Riemann 度量, 给出了 $G$ 上的 [Haar 测度](Haar测度.md).

对于 $p\in P$, 切空间 $T_pP$ 是水平空间 $H_pP$ (等同于 $T_xM$) 与垂直空间 (等同于 $\mathfrak g$) 的直和. 这进一步给出了 $P$ 上的 Riemann 度量, 使得二者垂直. (注意这个度量依赖于联络 $\omega$.)

$\exp\colon T_pP \to \pi^{-1}(x)$

定义
$$
j(a) = \det \left( \frac{1-e^{\operatorname{ad}a}}{\operatorname{ad}a}\right),\quad j(0)=1,
$$

**命题**.
$$
d(\exp a) = j(a)\,da.
$$
**证明**. 由 [Duhamel 公式](Duhamel公式.md), 对于 $a,b\in \mathfrak g$,
$$
\frac{d}{d\varepsilon} \exp(a) \exp(a+\varepsilon b) \Big|_{\varepsilon = 0} = \frac{1-e^{\operatorname{ad}a}}{\operatorname{ad}a} b,
$$

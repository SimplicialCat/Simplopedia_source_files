---
title: "Atiyah–Bott 不动点定理"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Atiyah–Bott 不动点定理是 [Lefschetz 不动点定理](Lefschetz不动点定理.md)在[椭圆复形](椭圆复形.md)上的推广. 其 [de Rham 复形](deRham复形.md)的特例是 [Lefschetz 不动点定理](Lefschetz不动点定理.md).

$f\colon M\to M$ 是光滑映射, 满足 $f$ 的图像与 $M\times M$ 中的对角线[横截](横截.md). 设 $E_j$ 为[椭圆复形](椭圆复形.md), $\varphi_j\colon f^*E_j\to E_j$ 诱导其自同态 $T$,
$$
T_i =\Gamma(E_i) \overset{-\circ f}{\to}\Gamma(f^*E_i)\overset{\varphi_i}{\to}\Gamma(E_i).
$$
那么 Atiyah–Bott 不动点定理表明
$$
L(T) = \sum_{x\,\text{fixed}}\frac{1}{\det (1-Df)}\sum_j(-1)^j\operatorname{tr}_x(\varphi_j),
$$
其中
$$
L(T)=\sum_i (-1)^i\operatorname{tr}(T_i^*\colon H^i\to H^i)
$$
是推广的 [Lefschetz 数](Lefschetz数.md).
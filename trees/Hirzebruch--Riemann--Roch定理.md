---
title: "Hirzebruch--Riemann--Roch 定理"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

Hirzebruch--Riemann--Roch 定理是整体复 (代数) 几何中一个十分有用的定理. 它是 [Riemann--Roch 定理](Riemann--Roch定理.md)的推广, 可视为 [Grothendieck--Riemann--Roch 定理](Grothendieck--Riemann--Roch定理.md)中 $Y$ 为一个点且基域为 $\mathbb{C}$ 的情形.

对于紧复流形 (或概形) 上的[全纯向量丛](全纯向量丛.md) (或一般的[凝聚层](凝聚层.md)), 其 [Euler 示性数](Euler示性数.md), 即[凝聚层上同调](凝聚层上同调.md)的交错和 (对于平凡丛即 [Dolbeault 上同调](Dolbeault算子.md)的[解析指标](指标.md)), 等于 [Todd 类](Todd类.md)与[陈特征](陈特征.md)之积:
$$
\chi(\mathcal F) =\int_M \operatorname{ch}(\mathcal F)\wedge \operatorname{td}(TM).
$$
(积分表示取最高维上同调)

## 曲线的情形

对于曲线 $X$ 上的除子 $D$,

- [可逆层](可逆层.md) $\mathcal O(D)$ 的[陈特征](陈特征.md)是 $1+c_1(\mathcal O(D))$,
- 曲线 $X$ 的 [Todd 类](Todd类.md)是 $1+c_1(TX)/2$,
- $h^0(\mathcal O(D))$ 就是 $l(D)$,
- $h^1(\mathcal O(D))$ 由 [Serre 对偶](Serre对偶.md)等于 $l(K-D)$, 其中 $K$ 是[典范除子](典范除子.md).
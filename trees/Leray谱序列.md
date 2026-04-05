---
title: Leray 谱序列
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

设
$$
f = (f^*\dashv f_*)\colon \mathcal Y \to \mathcal X
$$
为 [$\infty$-意象](∞-意象.md)之间的[几何态射](几何态射.md), 记 $\Gamma_{\mathcal X}$ 为 $\mathcal X \to\mathsf{Ani}$ 的直像部分, 即[整体截面](整体截面.md). 那么
$$
    \Gamma_{\mathcal Y} = \Gamma_{\mathcal X}\circ f_*.
$$

设 $F\in\mathsf{Sp}(\mathcal Y)$ 为 $\mathcal Y$ 的[稳定化](稳定化.md)的对象. 考虑 $\mathsf{Sp}(\mathcal X)$ 的标准 [t-结构](t-结构.md)给出的 $f_* F$ 的 [Postnikov 滤](Postnikov塔.md), 再以 $\Gamma_{\mathcal X}$ 作用得到一个[滤过](滤过.md)[谱](谱.md)
$$
\cdots\to
\Gamma_{\mathcal X}(\tau_{\leq q-1}f_*F)
\to
\Gamma_{\mathcal X}(\tau_{\leq q}f_*F)
\to\cdots.
$$
这个滤过谱对应的[谱序列](滤对象的谱序列.md)称为 **Leray 谱序列**.
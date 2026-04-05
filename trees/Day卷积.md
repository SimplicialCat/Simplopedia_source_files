---
title: Day 卷积
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

设 $\mathcal C,\mathcal D$ 为[对称幺半范畴](对称幺半范畴.md), $\mathcal D$ 余完备且 $\otimes_{\mathcal D}$ 保持每个分量的余极限, 则函子范畴 $\mathsf{Fun}(\mathcal C,\mathcal D)$ 上有一个对称幺半范畴结构, 称为 **Day 卷积**.

## 定义

### 使用 Kan 扩张

对于 $X,Y \in \mathsf{Fun}(\mathcal C,\mathcal D)$ 记 $X \boxtimes Y\in \mathsf{Fun}(\mathcal C\times\mathcal C,\mathcal D)$ 为其外张量积, 即
$$
(X\boxtimes Y)(c,c') = X(c) \otimes_{\mathcal D} Y(c').
$$
$X$ 与 $Y$ 的 Day 卷积可定义为 $X\boxtimes Y$ 沿 $\otimes_{\mathcal C} \colon \mathcal C\times\mathcal C \to \mathcal C$ 的左 [Kan 扩张](Kan扩张.md):
$$
X \otimes_{\text{Day}} Y := \operatorname{LKE}_{\otimes_{\mathcal C}} (X \boxtimes Y),
$$
具体地,
$$
(X \otimes_{\text{Day}} Y)(c) = \operatorname{colim}_{c' \otimes c'' \to c} X(c') \otimes_{\mathcal D} Y(c'').
$$

## 性质

$\mathsf{Fun}(\mathcal C,\mathcal D)$ 中的[交换代数](交换代数.md)为[松对称幺半函子](松幺半函子.md).

更一般地, 对任意[对称幺半范畴](对称幺半∞-范畴.md) $\mathcal C$ 以及 [算畴](算畴.md) $\mathcal O$, 存在算畴 $\mathsf{Day}_{\mathcal C}(\mathcal O)$ 满足对任意算畴 $\mathcal P$,
$$
\mathsf{Alg}_{\mathcal P}(\mathsf{Day}_{\mathcal C}(\mathcal O))\simeq \mathsf{Alg}_{\mathcal P\times_{\mathsf{Fin}_*}\mathcal C^\otimes}(\mathcal O).
$$
换言之, $\mathsf{Day}_{\mathcal C}$ 是 $-\times_{\mathsf{Fin}_*}\mathcal C^\otimes$ 的右伴随.
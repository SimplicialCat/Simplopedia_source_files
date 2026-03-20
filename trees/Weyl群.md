---
title: Weyl 群
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

### 极大环面的 Weyl 群

紧 Lie 群的 Weyl 群是其[极大环面](极大环面.md) $H$ 的[正规化子](正规化子.md) $N(H)$ 的商群
$$
W = N(H)/H.
$$

一个重要的观察是 Weyl 群共轭作用在[极大环面](极大环面.md) $T$ 上, 且这个作用有效 (effective), 即单位元素外每个元素的作用非平凡.

### 一般子群的 Weyl 群

对任意的子群 $H\subset G$ 也可以定义 Weyl 群 $W_GH := N(H)/H$.
那么 Weyl group 是能够典范地作用于一个 $G$-作用的 $H$-[不动点](不动点.md)的最大群. Weyl 群也是陪集空间 $G/H$ 在 $G$ 的轨道范畴中的自同构群.

### Lie 代数 Cartan 子代数的 Weyl 群

设 $\mathfrak g$ 为 Lie 代数, $\mathfrak h$ 为 [Cartan 子代数](Cartan子代数.md), Weyl 群 $W\subset GL(\mathfrak h^*)$ 由 $\{s_\alpha: \alpha\in\Phi\}$ 生成, 其中 $s_\alpha$ 是关于[根](根.md) $\alpha$ 的正交补空间的反射.

## 例

$\mathrm {U}(n)$ 的极大环面是 $T=\{\operatorname{diag}(e^{i\theta_1},\cdots,e^{i\theta_n})\}$, 其 Weyl 群通过置换特征值作用在 $T$ 上, 故 Weyl 群为[置换群](对称群.md) $S_n$.

$\mathrm {SU}(n)$ 的 Weyl 群亦为置换群 $S_n$.

$\mathrm {SO}(2n+1)$ 的 Weyl 群为 $(\mathbb{Z}/2)^n \rtimes S_n$.
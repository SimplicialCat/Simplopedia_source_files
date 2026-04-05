---
title: "Cartan 子代数"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


## 定义

设 $\mathfrak g$ 为 [Lie 代数](Lie代数.md). 定义 $\mathfrak g$ 的 Cartan 子代数为满足如下条件的子代数 $\mathfrak h\leq \mathfrak g$:

- $\mathfrak h$ 是[幂零 Lie 代数](幂零Lie代数.md);
- $\mathfrak h$ 的正规化子是自身.

## 例

### 紧 Lie 群的 Lie 代数

设 $G$ 为紧 Lie 群, $\mathfrak g$ 为 $G$ 的 Lie 代数, 则 $\mathfrak g$ 的 Cartan 子代数对应 $G$ 的[极大环面](极大环面.md).

## 性质
### 三角分解

对于 Lie 代数 $\mathfrak g$ 的 Cartan 子代数 $\mathfrak h$, 有[三角分解](三角分解.md)
$$
\mathfrak g = \mathfrak n_- \oplus \mathfrak h \oplus \mathfrak n_+.
$$
其[泛包络代数](泛包络代数.md)具有 (线性空间) 同构
$$
U\mathfrak g\simeq U\mathfrak n_- \otimes U\mathfrak h\otimes U\mathfrak n_+.
$$

### Borel 子代数

固定 Cartan 子代数以及 [Borel 子代数](Borel子代数.md)
$$
\mathfrak h\subset \mathfrak b \subset \mathfrak g
$$
相当于固定 $\mathfrak g$ 的一个[根](根系.md), 以及其中的正根系.

$\mathfrak b = \mathfrak h\oplus \mathfrak n$, $\mathfrak n=[\mathfrak b,\mathfrak b]$.

## 权

设 $M$ 是 $\mathfrak g$ 的表示. 对于 $\lambda\in \mathfrak h^*$, 定义权空间 (weight space)
$$
M_\lambda = \{m\in M: hm=\lambda(h)m\forall h\in\mathfrak h\}.
$$
若 $M$ 等于所有 $M_\lambda$ 的直和, 则称其为[权模](权模.md) (weight module).

## 相关概念

[半单 Lie 代数的表示](半单Lie代数的表示.md)
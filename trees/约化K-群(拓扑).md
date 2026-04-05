---
title: "约化 K-群 (拓扑)"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

约化 K-群的定义见 [K-群 (拓扑)](K-群(拓扑).md).

### 作为一个核

约化 K-群 $\widetilde K(X)$ 也同构于如下的 $K'(X)$, 其中 $r$ 将向量丛对应到其维数 (作为局部常值函数, 即 $H^0(X;\mathbb{Z})$ 的元素)
$$
0 \to K'(X)\to K(X) \overset{r}{\to} H^0(X;\mathbb{Z}) \to 0
$$
### 作为稳定等价类的群

对于紧空间 $X$ (或与之同伦等价的空间), 由于 $X$ 上任何向量丛均为平凡丛的子丛, 可证明其上的约化 K-群同构于向量丛的**稳定等价**类构成的群. (向量丛 $E,F$ 稳定等价是指存在平凡丛 $k,l$ 使得 $E\oplus k\simeq F\oplus l$.) 换言之, 令 $\Phi_n(X)$ 是 $X$ 上 $n$ 维向量丛的等价类, $\Phi_n(X) \to \Phi_{n+1}(X)$ 为与平凡丛的直和, 那么 $\widetilde K(X)$ 是下图的余极限:
$$
\Phi_0(X)\to \Phi_1(X) \to \Phi_2(X) \to \cdots,
$$
其上有由 Whitney 和 $\Phi_p(X)\times\Phi_q(X)\to \Phi_{p+q}(X)$ 给出的半群结构.

### 到分类空间的同伦类

稳定分类空间 $BO$ 是如下 (Grassmann 流形态射的) 余极限:
$$
BO(1) \to BO(2) \to \cdots \to BO(n) \to \cdots,
$$
那么约化 K-群还可用 $X$ 到 $BO$ (或 $BU$) 的映射的同伦类来描述, 即
$$
\widetilde{K}_{\mathbb{R}}(X)\simeq [X,BO].
$$

## 性质

$\widetilde{K}(X)$ 满足如下万有性质: 对任意 Abel 群 $A$ 与半群同态 $\varphi\colon V(X)\to A$, 若 $\varphi$ 将所有平凡丛映射到 $0$, 则 $\varphi$ 经过 $\widetilde{K}(X)$.

---
title: "Whitehead 乘积"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


[Wiki](https://en.wikipedia.org/wiki/Whitehead_product)

## 定义

给定 $f \in \pi_k(X), g \in \pi_l(X)$, 其 Whitehead 乘积 $[f,g] \in \pi_{k+l-1}(X)$ 定义如下.

球的乘积 $S^k \times S^l$ 可视为一点并 $S^k \vee S^l$ 粘上一个 $(k+l)$-胞腔, 设其粘贴映射为 $\phi \colon S^{k+l-1} \to S^k \vee S^l$. 定义
$$
[f,g] \colon  S^{k+l-1} \overset{\phi}{\to} S^k\vee S^l \overset{f\vee g}{\to} X.
$$

特别地, $\pi_1(X)$ 可作用于每个 $\pi_k(X)$ 上.

## 性质

**双线性性**. 对 $g,h\in\pi_l(X)$, $[f,g+h] = [f,g]+[f,h]$.

**分次交换性**. $[f,g] = (-1)^{kl}[g,f]$.

**分次 Jacobi 恒等式**. $(-1)^{kl}[[f,g],h] + \cdots = 0$.

## 例

记 $\operatorname{id} \colon S^2 \to S^2$ 为恒等映射, $\eta \colon S^3 \to S^2$ 为 [Hopf 纤维化](Hopf纤维化.md), 则有 $[\operatorname{id},\operatorname{id}] = 2\eta$. 参见 [Hopf 不变量](Hopf不变量.md).
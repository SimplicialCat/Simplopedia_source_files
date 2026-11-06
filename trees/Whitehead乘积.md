---
title: Whitehead 乘积
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念


## 定义

给定 $f \in \pi_k(X), g \in \pi_l(X)$, 其 **Whitehead 乘积** $[f,g] \in \pi_{k+l-1}(X)$ 定义如下.

球的乘积 $S^k \times S^l$ 可视为一点并 $S^k \vee S^l$ 粘上一个 $(k+l)$-胞腔, 设其粘贴映射为 $\phi \colon S^{k+l-1} \to S^k \vee S^l$. 定义
$$
[f,g] \colon  S^{k+l-1} \overset{\phi}{\to} S^k\vee S^l \overset{f\vee g}{\to} X.
$$

特别地, $\pi_1(X)$ 可作用于每个 $\pi_k(X)$ 上.

### 广义 Whitehead 乘积

给定映射 $f\colon U\to \Omega Z$, $g\colon V\to \Omega Z$,
定义[交换子](交换子.md)映射 $[f,g]\colon U\times V \to\Omega Z$,
$$
(u,v)\mapsto [f(u),g(v)] := f(u)g(v)f(u)^{-1}g(v)^{-1}.
$$

由于 $[f,g]$ 在 $U \lor V$ 上的限制等于常值映射, 故 $[f,g]$ 穿过[压缩积](压缩积.md) $U \land V = \dfrac{U\times V}{U\lor V}$.

令 $U = S^{k-1}$, $V = S^{l-1}$, 那么映射 $f\colon U\to \Omega Z$, $g\colon V\to\Omega Z$ 相当于映射 $S^k\to Z$, $S^l\to Z$. 交换子 $[f,g]\colon U\land V \to \Omega Z$ 相当于映射 $S^{k+l-1}\to Z$, 给出前面定义的 Whitehead 乘积.

## 性质

**双线性性**. 对 $g,h\in\pi_l(X)$, $[f,g+h] = [f,g]+[f,h]$.

**分次交换性**. $[f,g] = (-1)^{kl}[g,f]$.

**分次 Jacobi 恒等式**. $(-1)^{kl}[[f,g],h] + \cdots = 0$.

## 例

记 $\operatorname{id} \colon S^2 \to S^2$ 为恒等映射, $\eta \colon S^3 \to S^2$ 为 [Hopf 纤维化](Hopf纤维化.md), 则有 $[\operatorname{id},\operatorname{id}] = 2\eta$. 参见 [Hopf 不变量](Hopf不变量.md).
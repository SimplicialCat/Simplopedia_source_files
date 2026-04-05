---
title: Möbius 函数
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

Möbius 函数 $\mu\colon \mathbb{N}_+ \to\mathbb{C}$ 的定义为
$$
\mu(n) = \begin{cases}
    0 & n \text{ 有平方因子}\\
    (-1)^r & n=p_1\cdots p_r\text{ 为不同素数的乘积}.
\end{cases}
$$
特别地, $\mu(1)=1$.

## 性质

Möbius 函数 $\mu$ 与常值函数 $1$ 的 [Dirichlet 卷积](Dirichlet卷积.md)是 $\delta$ 函数 (即 Dirichlet 卷积的单位元):
$$
\sum_{i|n}\mu(i)=\begin{cases}
    1 & n=1\\
    0 & n>1
\end{cases}
$$
这个性质导致了 [Möbius 反演](Möbius反演.md).
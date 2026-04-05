---
title: Dirichlet 卷积
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

对于数论函数 $f,g\colon \mathbb{N}_+ \to \mathbb{C}$,
其 Dirichlet 卷积 $f*g \colon \mathbb{N}_+ \to \mathbb{C}$ 定义为
$$
(f*g) (n) = \sum_{ij=n}f(i)g(j).
$$

## 例

[Möbius 函数](Möbius函数.md) $\mu$ 与常值函数 $1$ 的 Dirichlet 卷积是 $\delta$ 函数 (即 Dirichlet 卷积的单位元):
$$
\sum_{i|n}\mu(i)=\begin{cases}
    1 & n=1\\
    0 & n>1
\end{cases}
$$
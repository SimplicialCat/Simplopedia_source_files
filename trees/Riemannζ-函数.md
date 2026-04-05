---
title: Riemann ζ-函数
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---



## 定义

对于 $\mathrm{Re}s > 1$,
$$
\zeta(s)=\sum_{n\geq 1}n^{-s}=\prod_{p}\frac{1}{1-p^{-s}}.
$$
定义 (大写的) Zeta-函数为 $\zeta$ 乘上 "Gamma-因子"
$$
Z(s)=\pi^{-s/2}\Gamma(s/2)\zeta(s),
$$
其中 $\Gamma$ 在 $\mathrm{Re}s>0$ 时的定义为
$$
\Gamma(s)=\int_0^\infty e^{-t}t^s \frac{dt}{t},
$$
而在其它处由函数方程延拓:
$$
\Gamma(s+1)=s\Gamma(s).
$$

**定理**. Zeta-函数可延拓为复平面上的亚纯函数, 在 $s=1$ 有一个留数为 $1$ 的单极点, 在 $s=0$ 有一个留数为 $-1$ 的单极点, 没有其它极点. Zeta 函数满足方程
$$
Z(s)=Z(1-s).
$$

## 性质

Riemann ζ-函数的倒数是 [Möbius 函数](Möbius函数.md)对应的 Dirichlet 级数:
$$
\zeta(s) = \sum_{n\geq 1}n^{-s} = \Big(\sum_{n\geq 1}\mu(n)n^{-s}\Big)^{-1}.
$$

## 相关概念

[ζ-函数](ζ-函数.md)

[Dedekind ζ-函数](Dedekindζ-函数.md)
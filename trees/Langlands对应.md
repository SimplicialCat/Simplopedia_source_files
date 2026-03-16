---
title: 经典 Langlands 对应
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

[Langlands 纲领](Langlands纲领.md)源于数论. 本页介绍[数域](数域.md)上的 Langlands 对应. 另见[几何 Langlands 对应](几何Langlands对应.md).

> Frenkel, Lectures on the Langlands Program and Conformal Field Theory

故事从 Euler 开始. Euler 用不严格的方法算出了自然数的 $s$ 次方的倒数和 ($s\geq 2$ 为自然数), 这个数后来叫做 [Riemann ζ-函数](Riemannζ-函数.md) $\zeta(s)$. 除此之外, Euler 还指出 $\zeta(s)$ 可写成所谓 "**Euler 因子**" $1/(1-p^{-s})$ 对素数 $p$ 的乘积, 由此可以推出素数分布的一些信息. Riemann 发现 $\zeta(s)$ 是全纯函数, 从而自然地寻求其解析延拓. 这件事可以用 Euler 的乘积公式以及 $\zeta(s)$ 满足的**函数方程**
$$
\Lambda(1-s)=\Lambda(s),\ \Lambda(s)=\pi^{-s/2}\Gamma(s/2)\zeta(s)
$$
来做到. (奇妙的是, Euler 使用他的发散级数发现了 $\zeta(s)$ 的函数方程.) 这个函数方程中的 $\Gamma$ 项直到 Tate 才获得完全的理解: 它是 $\mathbb{Q}$ 的 Archimedes [位](位.md)的 Euler 因子.

后来, Riemann 建立了一个显式的公式, 将素数和 $\zeta$ 函数的零点关联起来. 由此他猜想 $\zeta$ 的零点的实部为 $1/2$, 这相当于素数分布的一个极好的性质.

Dirichlet 在研究模 $q$ 余 $a$ 素数的分布时用到了所谓 Dirichlet [L-函数](L-函数.md). 他的方法可理解为 $\mathbb{Z}/q$ 上的调和分析. 设 $\chi\colon (\mathbb{Z}/q)^\times \to\mathbb{C}^\times$ 为 [Dirichlet 特征](Dirichlet特征.md), 定义
$$
L(\chi,s)=\sum_{n}\chi(n)n^{-s} = \prod_p 1/(1-\chi(p)p^{-s}).
$$


## 一维

数论中一个重要的问题是[绝对 Galois 群](绝对Galois群.md). 对于有理数域, 我们不能很好地描述其绝对 Galois 群 $\mathrm{Gal}(\overline{\mathbb{Q}}/\mathbb{Q})$, 但可以描述它的极大 Abel 商. 这对应于有理数域的极大 Abel 扩张 $\mathbb{Q}^{\mathrm{ab}}$, 它是 $\mathbb{Q}$ 添加所有单位根所得的扩张.
$$
\operatorname{Gal}(\mathbb{Q}^{\mathrm{ab}}/\mathbb{Q}) \simeq \widehat {\mathbb{Z}}^\times \simeq \prod_{p}\mathbb Z_p^\times.
$$
[Abel 类域论](Abel类域论.md)的结论是 $\operatorname{Gal}(F^{\mathrm{ab}}/F)$ 等同于 $F^{\times}\backslash \mathbb A_F^\times$ 的连通分支的群. 在 $F=\mathbb{Q}$ 的情形它是
$$
\mathbb{Q}^{\times}\backslash \mathbb A_{\mathbb{Q}}^\times\simeq \prod_p \mathbb{Z}_p^\times \times \mathbb{R}_{>0}.
$$

## $n$ 维

- $\operatorname{Gal}(\overline{F}/F)$ 的 $n$ 维表示 - $\mathrm{GL}_n(\mathbb A_F)$ 的[自守表示](自守表示.md)
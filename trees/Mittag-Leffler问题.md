---
title: "Mittag-Leffler 问题"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

Mittag-Leffler 定理是说在 $\mathbb C$ 上任给一列离散的点 $z_i$ 以及多项式 $p_i$, 必存在 $\mathbb C$ 上的亚纯函数, 以 $z_i$ 为极点, $p_i(\frac{1}{z-z_i})$ 为 $z_i$ 处的主部.

一般的 [Riemann 面](Riemann面.md) $X$ 上的 Mittag-Leffler 问题为, 给定 $X$ 的开覆盖 $(U_\alpha)$, 每个 $U_\alpha$ 上给定亚纯函数 $f_\alpha$, 满足在 $U_\alpha\cap U_\beta$ 上 $f_\alpha-f_\beta$ 全纯 (即 $f_\alpha$ 与 $f_\beta$ 有相同的极点和主部), 问是否存在 $X$ 上的亚纯函数 $f$, 使得在每个 $U_\alpha$ 上 $f-f_\alpha$ 全纯.

换言之, 问是否每个 $U_\alpha$ 上存在亚纯函数 $g_\alpha (=f_\alpha - f)$, 使得
$$
g_\alpha-g_\beta =f_\alpha -f_\beta.
$$
由此可见, Mittag-Leffler 问题本质上是一个[Čech 上同调](Čech上同调.md)问题.
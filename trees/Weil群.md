---
title : Weil 群
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

Weil 群是[局部域](局部域.md)或[整体域](整体域.md)的[绝对 Galois 群](绝对Galois群.md)的一个变体.

> 如下陈述引自 Dustin Clausen 关于推广 Weil 群的演讲.

回忆数域 $F$ 的绝对 Galois 群可以写成
$$
G_F = \lim_{\text{有限 Galois 扩张 }E/F}\operatorname{Gal}(E^{\mathrm{ab}}/F),
$$
其中 $E^{\mathrm{ab}}$ 是 $E$ 的极大 Abel 扩张, $\operatorname{Gal}(E^{\mathrm{ab}}/F)$ 可置于如下短正合列中:
$$
1 \to G_E^{\mathrm{ab}} \to \operatorname{Gal}(E^{\mathrm{ab}}/F) \to \operatorname{Gal}(E/F) \to 1.
$$
类似地, Weil 群也可以写成
$$
W_F = \lim_{\text{有限 Galois 扩张 }E/F}W(E/F),
$$
其中 $W(E/F)$ 可置于如下短正合列中:
$$
1 \to C_E \to W(E/F) \to \operatorname{Gal}(E/F) \to 1.
$$
上述的表现使得我们有一个同态 $W_F \to G_F$.

## 定义

> Tate, _Number Theoretic Background_

设 $F$ 为[局部域](局部域.md)或[整体域](整体域.md), $\overline{F}$ 为其可分闭包.

对 $F$ 在 $\overline{F}$ 中的有限扩张 $E$, 记 $G_E = \mathrm{Gal}(\overline{F}/E)$.
记 $C_E$ 为如下群:

- 局部域的情形, $C_E = E^\times$;
- 整体域的情形, $C_E$ 为理元类群 (idele class group) $\mathbb A_E^\times / E^\times$.

定义 Weil 群为三元组 $(W_F, \varphi, \{r_E\})$, 其中

- $W_F$ 为拓扑群, $\varphi \colon W_F \to G_F$ 为连续同态, 其像稠密 ($\varphi$ 连续意味着 $W_E := \varphi^{-1}(G_E)$ 是 $W_F$ 的开子集, 而其像稠密意味着 $\varphi$ 给出的映射 $W_F/ W_E \simeq G_F / G_E = \operatorname{Hom}_F(E,\overline{F})$ 是双射);
- 对每个 $E$ 有同构 $r_E \colon C_E \to W_E^{\mathrm{ab}}$, 满足如下条件.
  - 复合 $C_E \to W_E^{\mathrm{ab}} \overset{\varphi}{\to} G_E^{\mathrm{ab}}$ 是类域论中的互反律同态;
  - 对于 $w\in W_F$, 记 $\sigma = \varphi(w) \in G_F$, 则 $\sigma \colon C_E \to C_{E^\sigma}$ 与 $w$ 的共轭 $W_E^{\mathrm{ab}} \to W_{E^\sigma}^{\mathrm{ab}}$ 相容;
  - 对于 $E' \subset E$, 含入映射 $C_{E'} \subset C_{E}$ 与 "转移" 映射 $W_{E'}^{\mathrm{ab}} \to W_{E}^{\mathrm{ab}}$ 相容;
  - $W_F \simeq \operatorname{lim}_E W_{E/F}$, 其中 $W_{E/F} := W_F / W_E^c$ 称为**相对 Weil 群**.

### $p$-进域的情形

$p$-进[局部域](局部域.md) (即 $\mathbb{Q}_p$ 的有限扩张) $F$ 的 Weil 群 $W_F$ 是如下拉回:
$$
\begin{array}
{ccc}
W_F & \to & \mathbb{Z} \\
\downarrow && \downarrow \\
\operatorname{Gal}(\overline{F}/F) & \to & \operatorname{Gal}(\overline{k}/k)=\widehat {\mathbb{Z}}.
\end{array}
$$

**关于典范性的评注**. 与[绝对 Galois 群](绝对Galois群.md)类似, Weil 群对于给定的域 $F$ 并不是典范的, 而是相差一个共轭, 因为它依赖于可分闭包的选取. 但是, 与绝对 Galois 群类似, 群 $W_F$ 的[分类空间](分类空间.md) $\mathbf{B}W_F$ 是典范的.

## 例

- $\mathbb{C}$ 的 Weil 群是 $\mathbb{C}^\times$.
- $\mathbb{R}$ 的 Weil 群是 $W_\mathbb{R} = \mathbb{C}^\times \sqcup j\mathbb{C}^\times$, 其中 $j^2=-1$, $jcj^{-1}=\bar{c}$ ($c\in \mathbb{C}^\times$). 这个群处于如下正合列中:
$$
1\to \mathbb{C}^\times\to W_{\mathbb{R}} \to\operatorname{Gal}(\mathbb{C}/\mathbb{R}) \to 1.
$$

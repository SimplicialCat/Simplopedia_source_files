---
title: "Adams 谱序列"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


> Adams 谱序列是计算[配边](配边.md)不变量的一种方法, 另一种是指标定理. --- 万喆彦, BIMSA 公开课 2023-09-18

Adams 谱序列是计算[谱](谱.md)的同伦群的有力工具.

$$
\operatorname{Ext}_{\mathcal A_p}^{s,t}(H^*(X,\mathbb{Z}/p),\mathbb{Z}/p) \Rightarrow \pi_{t-s}(X)_p^\wedge
$$
其中 $\mathcal A$ 为对应素数 $p$ 的 [Steenrod 代数](Steenrod代数.md).


一般而言, 对于[环谱](环谱.md) $E$, 有 $E$-Adams 谱序列, 其第二页为 $E$-(上) 同调. 它是非稳定同伦论中 [Bousfield–Kan 谱序列](Bousfield–Kan谱序列.md)的类比.


> For $E$ a ring spectrum, hence an E-∞ ring, the totalization of its Amitsur complex cosimplicial spectrum $E^{\wedge\bullet}$ is really the algebraic dual incarnation of the $1$-image factorization of the terminal morphism
> $$
 \operatorname{Spec}E \to\operatorname{Spec}(\operatorname{Tot}(E^{\wedge\bullet})) \overset{p}{\to} \operatorname{Spec}\mathbb S.
 $$
> Moreover, a spectrum $X$ is equivalently a quasicoherent sheaf on $\operatorname{Spec}(\mathbb S)$ and $E^{\wedge\bullet}\wedge X$ is accordingly the Sweedler coring that expresses the descent property of $X$ pullled back along the cover $p$, dually the $E$-localization of $X$ ([Bousfield 局部化](Bousfield局部化.md)). The Adams spectral sequence may then be seen to be the computation of the homotopy groups of the $E$-localization of $X$ in terms of its restriction to that cover.
> In general, notably for $E=H\mathbb F_p$, the 1-image of $\operatorname{Spec}(E)\to \operatorname{Spec}(\mathbb S)$ is smaller than $\operatorname{Spec}(\mathbb S)$ and therefore this process computes not all of $X$, but just the restriction to that one image (for instance just the $p$-local component). Examples of ring spectra which are “complete” with respect to the sphere spectrum in that the above 1-image coincides with $\operatorname{Spec}(\mathbb S)$ notably includes the complex cobordism cohomology spectrum $E=\mathrm {MU}$. That explains the relevance of the Adams-Novikov spectral sequence (noticing that the wedge summands of $\mathrm MU(p)$ are the BP-spectra) and the close interplay between the ANSS and chromatic homotopy theory.

## 相关概念

[Adams 消解](Adams消解.md)
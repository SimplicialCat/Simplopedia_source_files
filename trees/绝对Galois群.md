---
title: 绝对 Galois 群
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

域 $k$ 的绝对 Galois 群是 $\operatorname{Spec}k$ 的[平展基本群](平展基本群.md).

## 定义

域 $K$ 的绝对 Galois 群是可分闭包 $K^{\text{sep}}$ 的 Galois 群.

## 性质

对于[函数域](函数域.md) $F$, 记 $\Gamma=\operatorname{Gal}(\overline{F}/F)$ 为其绝对 Galois 群, [Grothendieck Galois 理论](GrothendieckGalois理论.md)表明如下两个范畴等价:

- 带连续 $\Gamma$-作用的有限集的范畴;
- 有限可分 $F$-代数的范畴.

其中第一个范畴到第二个范畴的函子将带 $\Gamma$-作用的有限集 $A$ 映射到 $((F^{\text{sep}})^{\oplus A})^\Gamma$.
## 例

### $\mathbb F_p$

[有限域](有限域.md) $\mathbb F_p$ 的绝对 Galois 群 $\operatorname{Gal}(\overline{\mathbb F_p}/\mathbb F_p)$ 同构于[整数环的 pro-有限完备化](整数环的pro-有限完备化.md) $\widehat {\mathbb{Z}}:=\operatorname{lim}_n \mathbb{Z}/n\simeq\operatorname{lim}_n\operatorname{Gal}(\mathbb F_{p^n}/\mathbb F_p)$. 其中 $1\in\widehat {\mathbb{Z}}$ 是 [Frobenius 态射](Frobenius态射.md), 它是 $\operatorname{Gal}(\overline{\mathbb F_p}/\mathbb F_p)$ 的一个拓扑生成元 (即生成稠密子群的元素).
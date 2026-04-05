---
title: Brauer 群
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

概形的 **Brauer 群**是其上 [Azumaya 代数](Azumaya代数.md)的相似类在张量积下构成的群; Azumaya 代数 $A$ 在 [Morita 范畴](Morita范畴.md)中可逆; 因此其上的模范畴 $\mathsf{Mod}(A)$ 是可逆线性范畴.

[向量丛](向量丛.md)的自同态丛是 Azumaya 代数, 其对应的 Brauer 类平凡.

> Brauer groups and Azumaya algebras play an important role in many areas of mathematics, but especially in arithmetic geometry, algebraic geometry, and applications to mathematical physics. In arithmetic geometry, they are closely related to Tate's conjecture on l-adic cohomology of schemes over finite fields, and they play a critical role in studying rational points of varieties through, for example, the Brauer Manin obstructions to the Hasse principle. In algebraic geometry, Azumaya algebras arise naturally when studying moduli spaces of vector bundles, and Brauer classes appear when considering certain constructions motivated from physics in homological mirror symmetry. The Brauer group was also used by Artin-Mumford (AM72) to construct one of the first examples of a non-rational unirational complex variety.

## 定义

### 域

域 $K$ 的 Brauer 群 $\mathrm{Br}(K)$ 是其上的[中心单代数](中心单代数.md)的相似类关于张量积构成的群, 也即上同调
$$
H^2(\operatorname{Gal}(K_{\mathrm{sep}}/K),K^*_{\mathrm{sep}}) = H^2(\operatorname{Spec}K_{\mathrm{et}},\mathbb G_{\mathrm{m}}).
$$

设 $A,B$ 为 $K$ 上的有限维中心单代数, 若存在 $n,m\in\mathbb{Z}_+$ 使得 $M_n(A)\simeq M_m(B)$ (作为 $K$-代数), 则称 $A$ 与 $B$ 相似.

$A$ 与 $B$ 相似当且仅当存在可除代数 $D$ 使得 $A,B$ 均为 $D$ 上的矩阵代数.

**例**. $\mathrm{Br}(\mathbb{R})\simeq \{[\mathbb{R}],[\mathbb H]\}$. $\mathbb H\otimes\mathbb H\simeq M_4(\mathbb{R})$.

**例**. 有限域的 Brauer 群平凡, 因为有限除环都是域.

### 环

#### 与模范畴的关系

设 $R$ 为交换环, 考虑 $2$-范畴 $\mathsf{Alg}_R$, 其对象为 $R$-代数 (即 $R$-模范畴中的幺半群), 态射为双模, 态射的复合为张量积, $2$-态射为双模的同态.

考虑 $\mathsf{Alg}_R$ 的[核](对象的生象.md) $\mathrm{Core}(\mathsf{Alg}_R)$, 其对象为 $R$-代数, 态射为 Morita 等价, $2$-态射为双模的同构.

> This may be understood as the $2$-groupoid of (generalized) line $2$-bundles over $\operatorname{Spec}R$, inside that of all $2$-vector bundles.

- $\pi_0(\mathbf{Br}(R))$ 为 $R$ 的 Brauer 群;
- $\pi_1(\mathbf{Br}(R))$ 为 $R$ 的 [Picard 群](Picard群.md);
- $\pi_2(\mathbf{Br}(R))$ 为 $R$ 的乘法可逆元群.

### 平展上同调的定义

在一些小的假设下, 概形 $X$ 的 Brauer 群 $\mathrm{Br}(X)$ 同构于[平展上同调](平展上同调.md) $H^2_{\text{\'et}}(X,\mathbb G_m)$ 的挠部分. 见[平展上同调讨论班讲义](EC-H1-H2.md).

### "范畴化" 的定义

Brauer 群某种意义上是 [Picard 群](Picard群.md)的[范畴化](范畴化.md).

对于概形 $X$ 可以谈论 "$X$ 上的拟凝聚[叠](叠.md)", 又叫 "$X$-线性[稳定 ∞-范畴](稳定无穷范畴.md)"; 其构成的范畴记为 $\mathsf{Cat}_X$.
一个与 Brauer 群相关的群是所谓 "导出 Brauer 群", 定义为 $\mathsf{Cat}_X$ 的 Picard 群
$$
\mathrm{Br}^{\mathrm{der}}(X) := \operatorname{Pic}(\mathsf{Cat}_X).
$$

## 性质

代数闭域的 Brauer 群是平凡群.


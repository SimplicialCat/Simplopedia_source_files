---
title: 六函子
tag: 笔记
---

本文是 [Scholze 的六函子讲义](ScholzeSixFunctors.md)的阅读笔记.

## 引言

[六函子](六函子.md)是一种出现于许多场合的体系:

- [](平展上同调.md)
- 拓扑空间的[上同调](上同调.md)
- 代数簇上的[](D-模.md)

我们以良好拓扑空间上的六函子逐步引入正题.
记 $D(X,\mathbb{Z})$ 为空间 $X$ 上 Abel 层的导出范畴. 对于映射 $f\colon X\to Y$, 层的拉回

- $f^*\colon D(Y,\mathbb{Z}) \to D(X,\mathbb{Z})$

有右伴随

- $f_* \colon D(X,\mathbb{Z})\to D(Y,\mathbb{Z})$,

这是[上同调](上同调.md)的[相对](相对.md)版本. 当 $Y=*$ 时, 记 $f_*$ 为 $R\Gamma(X,-)$.

---

为了得到 Künneth 公式, 我们需要张量积

- $(-)\otimes (-)\colon D(X,\mathbb{Z})\times D(X,\mathbb{Z})\to D(X,\mathbb{Z})$,

其有第二分量的右[伴随](伴随.md)

- $\underline{\operatorname{Hom}}(-,-)\colon D(X,\mathbb{Z})^\mathrm{op}\times D(X,\mathbb{Z}) \to D(X,\mathbb{Z})$.

张量积与拉回相容, 即 $f^*$ 构成[对称幺半](对称幺半范畴.md)函子. 此外有[投影公式](投影公式.md)
$$
f_*A \otimes B \simeq f_*(A\otimes f^*B).
$$
这意味着, 由对称幺半函子 $f^*$ 视 $D(X,\mathbb{Z})$ 为 $D(Y,\mathbb{Z})$-[模](结合代数上的模.md), 则 $f_*$ 是 $D(Y,\mathbb{Z})$-线性函子.

投影公式中的函子来自如下函子的伴随.
$$
f^*(f_* A \otimes B)\simeq f^*f_*A \otimes f^*B \to A\otimes f^* B.
$$
使用该公式可证明 Künneth 公式.

---

定向流形的上同调满足 [Poincaré 对偶](Poincaré--Verdier对偶.md):

**定理** (Poincaré 对偶). 对于紧[定向](定向.md) $d$ 维流形 $X$,
$$
R\Gamma(X,\mathbb{Z})[d] \simeq R\Gamma(X,\mathbb{Z})^\vee.
$$
其中 $(-)^\vee := \underline{\operatorname{Hom}}(-,\mathbb{Z})$.

Poincaré 对偶来自如下更广泛的现象: $f_*\colon D(X,\mathbb{Z})\to D(*,\mathbb{Z})$ 有右伴随 $f^*(-) [d]$, 即
$$
\operatorname{Hom}_{D(X,\mathbb{Z})}(A,f^*B[d]) \simeq \operatorname{Hom}_{D(*,\mathbb{Z})}(R\Gamma(X,A),B).
$$
取 $A = \underline{\mathbb{Z}}\in D(X,\mathbb{Z})$, $B = \mathbb{Z}\in D(*,\mathbb{Z})$ 即得 Poincaré 对偶.

这件事的[相对](相对.md)版本是 [Verdier 对偶](Poincaré--Verdier对偶.md):

**定理** (Verdier 对偶). 设 $f\colon X\to Y$ 为[紧合映射](紧合映射.md), 且在 $X,Y$ 的局部上为 $d$ 维圆盘的丛, 称之为**流形丛**. 那么 $f_*\colon D(X,\mathbb{Z}) \to D(Y,\mathbb{Z})$ 有右伴随
$$
f^* \otimes \omega_{X/Y},
$$
其中 $\omega_{X/Y}\in D(X,\mathbb{Z})$ 是某个层, 局部同构于 $\mathbb{Z}[d]$.

前面的 $X$ 的定向条件确保 $\omega_{X/*} \simeq \mathbb{Z}[d]$ 在整体上成立.

我们还可以对一般的映射 $f$ 叙述 Verdier 对偶, 仅要求局部条件 (局部上为圆盘丛) 而非整体条件. 这需要[紧支前推](紧支集直像.md)

- $f_!\colon D(X,\mathbb{Z})\to D(Y,\mathbb{Z})$

及其右伴随

- $f^!\colon D(Y,\mathbb{Z}) \to D(X,\mathbb{Z})$.

**定理** (Verdier 对偶). 设 $f\colon X\to Y$ 为流形丛, 相对维数为 $d$, 则 $f^! \simeq f^* \otimes\omega_{X/Y}$, 其中 $\omega_{X/Y} = f^!\mathbb{Z}$.

对于紧合映射 $f$, 有 $f_! = f_*$.

## 六函子体系

设 $\mathcal C$ 是一类几何对象的范畴, $E$ 是其中的一类态射, 满足如下条件:

- $\mathcal C$ 有[有限极限](有限极限.md);
- $E$ 包含所有同构, 且在[拉回](拉回.md), 复合与[对角](对角线.md)操作下稳定.

六函子大致是指如下数据:

- 对每个 $X\in\mathcal C$ 指定一个[对称幺半范畴](对称幺半范畴.md) $D(X)$;
- 对每个态射 $f\colon X\to Y$, 有对称幺半的拉回函子 $f^*\colon D(Y)\to D(X)$;
- 对 $E$ 中的每个态射 $f\colon X\to Y$, 有 "[紧支前推](紧支集直像.md)" $f_!\colon D(X)\to D(Y)$;
- 三个函子 $A\otimes (-)$, $f^*$, $f_!$ 分别有右伴随 $\operatorname{Hom}(A,-)$, $f_*$, $f^!$;
- 对 $E$ 中的态射 $f$ 的[基变换](基变换.md)
  [](base-change.typ#:block)
  (当然 $f'$ 也在 $E$ 中), 有同构
  $$
    g^*f_! \simeq f'_! {g'}^*.
  $$
- 对 $E$ 中的态射 $f\colon X\to Y$, 有[投影公式](投影公式.md)
  $$
    f_! A \otimes B \simeq f_!(A\otimes f^*B).
  $$
  换言之, $f_!\colon D(X)\to D(Y)$ 是 $D(Y)$-线性函子.

用[关系范畴](关系2-范畴.md)可以给出一种严格的叙述.

定义 $\mathsf{Corr}(\mathcal C,E)$ 为如下对称幺半范畴:

- 对象为 $\mathcal C$ 的对象,
- 对称幺半结构为 $\mathcal C$ 中的积;
- 态射为如下的**关系** (correspondence),
  [](six-functors-correspondence.typ#:block)
  其中 $g\in E$;
- 态射的复合如下,
  [](six-functors-correspondence-composition.typ#:block)
  其中方块为拉回.

**定义**. 三函子体系是松对称幺半函子
$$
D \colon \mathsf{Corr}(\mathcal C,E) \to \mathsf{Cat}.
$$

这个简洁的定义囊括了上述所有要素.

- 对 $X\in\mathcal C$, 该函子给出范畴 $D(X)$.
- 对 $\mathcal C$ 中任意态射 $f\colon X\to Y$, 对应 $(Y \overset{f}{\leftarrow} X = X)$ 给出拉回函子 $f^*$.
- 由于 $X$ 是交换余代数 (即 $\mathcal C^{\mathrm{op}}$ 中的交换代数, 余乘法为[对角线](对角线.md)) 而 $D$ 给出松对称幺半函子 $\mathcal C^{\mathrm{op}}\to\mathsf{Cat}$, 故 $D(X)$ 为 $\mathsf{Cat}$ 中的交换代数, 即[对称幺半范畴](对称幺半范畴.md).
- 对 $E$ 中的态射 $f\colon X\to Y$, 对应 $(X = X \overset{f}{\to} Y)$ 给出函子 $f_!\colon D(X)\to D(Y)$, 并且由于态射 $f$ 给出了 $\mathcal C^{\mathrm{op}}$ 中 $X$ 的 $Y$-模结构且 $f\colon X\to Y$ 是 $Y$-模同态, 故 $f_!\colon D(X)\to D(Y)$ 是 $D(Y)$-模同态.
- 一般地, 对应 $(X\overset{f}{\leftarrow} W \overset{g}{\to} Y)$ 给出 "[拉-推](拉-推.md)" 函子 $g_! f^*\colon D(X)\to D(Y)$.

## 对称幺半范畴

[对称幺半范畴](对称幺半范畴.md)是 $\mathsf{Cat}$ 中的[交换代数](交换代数.md), 由定义即保持乘积的函子

**定理**. 对于[对称幺半范畴](对称幺半范畴.md) $\mathcal C$, [积幺半范畴](积幺半范畴.md) $\mathcal D$, 松对称幺半函子 $\mathcal C\to\mathcal D$ 等同于函子 $F\colon \mathcal C^\otimes \to \mathcal D$, 满足 $F((X_i)_{i\in I})\simeq\prod_i F(X_i)$.

令
$$
\mathsf{Corr}(\mathcal C,E)^\otimes = \mathsf{Corr}(\mathcal C^\times, E^\times).
$$

## 六函子体系的构造

固定几何语境 $(\mathcal C,E)$, 我们想知道具体如何构造六函子体系
$$
\mathsf{Corr}(\mathcal C,E) \to \mathsf{Cat}.
$$

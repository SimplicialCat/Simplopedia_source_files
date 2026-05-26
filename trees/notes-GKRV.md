---
title: GKRV
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

本文是 [GKRV](GKRV.md) 的阅读笔记. 这篇文章是 [AGKRRV](AGKRRV1.md) 在拓扑语境中的玩具模型.

## 1. 对称幺半范畴沿空间积分

本文中 [DG 范畴](微分分次范畴.md)指的是[可表现范畴](可表现范畴.md)中 $\mathsf{Vect}$ 上的模, 即
$$
\mathsf{DGCat} := \mathsf{Mod}_{\mathsf{Pr}}(\mathsf{Vect}).
$$
其中的态射为保持余极限的函子.

设 $\mathcal A$ 为[对称幺半](对称幺半范畴.md) [DG 范畴](微分分次范畴.md), $Y$ 为空间 (即[生象](生象.md)). 考虑范畴 $\mathcal A^{\otimes Y} = \operatorname{colim}^{\mathsf{SymMonCat}}_Y\mathcal A$. 我们可以在三种不同语境下描述这个范畴:

- 对称幺半 DG 范畴,
- 幺半 DG 范畴,
- DG 范畴.

总之, 设 $\mathfrak C$ 是上述某种范畴的全体. 注意, 三种语境中一般的余极限不相容 (余极限的底层范畴不同); 但[筛余极限](筛余极限.md)是相容的. 这个事实马上就要用到.

### 1.2 将 $\mathcal A^{\otimes Y}$ 表现为余极限

**命题**. 范畴 $\mathcal A^{\otimes Y}$ (遗忘到 $\mathfrak C$ 中) 等同于如下的余极限:
$$
\mathcal A^{\otimes Y} = \operatorname{colim}^{\mathfrak C}_{(I\to J)\in\mathsf{TwArr}(\mathsf{Fin})} \operatorname{colim}_{\operatorname{Hom}(J,Y)}^{\mathfrak C}\mathcal A^{\otimes I}.\, (\star)
$$
其中 $\mathsf{TwArr}(-)$ 表示[扭箭头范畴](扭箭头范畴.md). 

证明的思路是: 命题对 $Y\in\mathsf{Fin}$ 较为平凡, 然后将两边沿 $\mathsf{Fin}\to\mathsf{Ani}$ 作左 [Kan 扩张](Kan扩张.md).

**引理 1**. 函子 $\mathsf{Ani}\to\mathfrak C$, $Y\mapsto \mathcal A^{\otimes Y}$ 是其沿 $\mathsf{Fin}\to\mathsf{Ani}$ 的限制的左 Kan 扩张.

*证明*. 这是因为对任意 $Y\in\mathsf{Ani}$, 左 Kan 扩张的计算式中的指标范畴 $\mathsf{Fin}_{/Y}$ 是[筛范畴](筛范畴.md), 而遗忘函子
$$
\mathsf{CAlg}(\mathsf{DGCat}) \to \mathsf{Alg}(\mathsf{DGCat}) \to \mathsf{Cat}
$$
均保持[筛余极限](筛余极限.md) (这一事实对更一般的算畴的代数成立).

**引理 2**. 等式 $(\star)$ 的右端给出的函子 $\mathsf{Ani}\to\mathfrak C$ 是其沿 $\mathsf{Fin}\to\mathsf{Ani}$ 的限制的左 Kan 扩张.

*证明*. 对任意有限集 $I,J$, 函子 $Y\mapsto \operatorname{Hom}(J,-)$, $Z\mapsto \operatorname{colim}^{\mathfrak C}_{Z}\mathcal A^{\otimes I}$ 均保持[筛余极限](筛余极限.md), 从而复合函子 $Y\mapsto \operatorname{colim}^{\mathfrak C}_{\operatorname{Hom}(J,Y)}\mathcal A^{\otimes I}$ 保持筛余极限.

上面讨论了一些余极限. 下面讨论一些极限, 陈述某些极限和余极限相等.

与余极限的情况不同的是, 遗忘函子
$$
\mathsf{CAlg}(\mathsf{DGCat}) \to \mathsf{Alg}(\mathsf{DGCat}) \to \mathsf{Cat}
$$
保持所有极限.

定义生象 $Y$ 上[局部系统](局部系统.md)的范畴为
$$
\mathsf{LS}(Y) = \operatorname{lim}_Y \mathsf{Vect},
$$
它是对称幺半 DG 范畴. 若 $\mathscr Y$ 为较好的拓扑空间 (仿紧, 同伦等价于 CW 复形, 同伦维数有限), $Y$ 为 $\mathscr Y$ 对应的生象, 则 $\mathsf{LS}(Y)$ 等价于 $\mathsf{Shv}_{\text{lisse}}(Y)$, 即线性空间层的导出范畴 $\mathsf{Shv}(\mathscr{Y})$ 中上同调为局部常值层的对象构成的全子范畴.

由[可表现范畴](可表现范畴.md)的余极限的性质,

- 对任意生象 $Y$, 范畴 $\mathsf{LS}(Y)$ 等价于 $\operatorname{colim}_Y^{\mathsf{DGCat}}\mathsf{Vect}$;
- 对生象的映射 $f\colon Y\to Z$, 自然的函子 $f^\dagger\colon \mathsf{LS}(Z)\to\mathsf{LS}(Y)$ 等同于 $\operatorname{colim}_Y^{\mathsf{DGCat}}\mathsf{Vect} \to \operatorname{colim}_Z^{\mathsf{DGCat}}\mathsf{Vect}$ 的右伴随; 同时, 两个态射也通过 $\mathsf{DGCat}$ 中的[对偶](可对偶对象.md)函子 $(-)^{\vee}\colon \mathsf{DGCat}^{\mathrm{op}}\to\mathsf{DGCat}$ 相联系.

**命题**. 设 $\mathfrak C$ 为 $\mathsf{CAlg}(\mathsf{DGCat}),\mathsf{Alg}(\mathsf{DGCat}),\mathsf{DGCat}$ 之一. 对于 $\mathcal C\in\mathfrak C$, 典范态射
$$
\mathcal C\otimes\mathsf{LS}(Y) \to \operatorname{lim}_Y\mathcal C
$$
为等价.

*证明*. 因为遗忘函子和 $-\otimes\mathsf{LS}(Y)$ 交换, 故只需证明 $\mathfrak C = \mathsf{DGCat}$ 的情形. 注意到两边均将 $\mathsf{Ani}$ 中的余极限对应到 $\mathfrak C$ 中的极限: 左边由可对偶性等价于 $\mathsf{Fun}(\operatorname{colim}^{\mathsf{DGCat}}_Y\mathsf{Vect},\mathcal C)$.

### 1.5 局部系统的叠

局部系统的叠 $\mathsf{LS}_G(Y)$ 上的 $\mathsf{QCoh}$ 是对称幺半范畴 $\mathsf{Rep}(G)$ 沿空间积分的重要例子, 也是本文的主要研究对象. 由生象的映射
$$
\begin{aligned}
Y&\simeq\operatorname{Hom}_{\mathsf{Ani}}(*,Y)\\
&\to\operatorname{Hom}_{\mathsf{PreStk}}(\mathsf{LS}_G(Y),\mathsf{LS}_G(*))\\
&\to\operatorname{Hom}_{\mathsf{CAlg}(\mathsf{DGCat})}(\mathsf{QCoh}(\mathsf{LS}_G(*)),\mathsf{QCoh}(\mathsf{LS}_G(Y)))\\
&\simeq\operatorname{Hom}_{\mathsf{CAlg}(\mathsf{DGCat})}(\mathsf{Rep}(G),\mathsf{QCoh}(\mathsf{LS}_G(Y))),
\end{aligned}
$$
我们得到函子
$$
\operatorname{colim}_Y^{\mathsf{CAlg}(\mathsf{DGCat})}\mathsf{Rep}(G) \to \mathsf{QCoh}(\mathsf{LS}_G(Y)).
$$

**定理**. 若 $Y$ 仅有有限个连通分支, 则上述函子为等价.

### 1.7 由 $\mathcal A^{\otimes Y}$ 出发的函子

由于 $\mathcal A^{\otimes Y}$ 可表现为余极限,

## 2. 远足

记 $\mathsf{FFM}$ 为有限生成自由[幺半群](幺半群.md)的范畴.

**命题**. 对任意[幺半群](幺半群.md) $H_0$, 范畴 $\mathsf{FFM}_{/H_0}$ 为[筛范畴](筛范畴.md), 且典范的映射
$$
\operatorname{colim}_{H\in\mathsf{FFM}_{/H_0}}H\to H_0
$$
为等价.

**推论**. 设 $Y$ 为带基点连通生象. 那么 $\mathsf{FFM}_{/\Omega Y}$ 为[筛范畴](筛范畴.md), 且典范的映射
$$
\operatorname{colim}^{\mathsf{Ani}_*}_{H\in\mathsf{FFM}_{/\Omega Y}}\mathbf{B}H \to Y
$$
为等价.

### 2.4 将 $\mathcal A^{\otimes Y}$ 的单位对象的自同态表现为余极限

我们先计算一类幺半范畴的余极限中的态射.

考虑幺半范畴的图 $I\to\mathsf{Alg}(\mathsf{DGCat})$, $i\mapsto\mathcal C_i$. 设指标范畴 $I$ 有始对象 $i_0$. 任取 $\mathcal C_{i_0}$ 的对象 $c_{i_0},c'_{i_0}$. 记 $c_i,c'_i$ 为两者在 $\mathcal C_i$ 中的像; 记 $c,c'$ 为两者在余极限 $\mathcal C=\operatorname{colim}_i\mathcal C_i$ 中的像.
则有自然态射
$$
 \operatorname{colim}_i\operatorname{Hom}_{\mathcal C_i}(c_i,c'_i) \to \operatorname{Hom}_{\mathcal C}(c,c').\,(\spadesuit)
$$

**命题 2.4.6**. 若 $I$ 为筛范畴且 $\mathcal C_{i_0} \to \mathcal C_{i}$ 为[仿射函子](仿射态射.md) (即每个 $\mathcal C_i$ 都是 $\mathcal C_{i_0}$ 上某[结合代数上的模](结合代数上的模.md)范畴; 准确地说, 函子 $I\to\mathsf{Alg}(\mathsf{DGCat})$ 穿过 $\mathsf{Alg}(\mathcal C_{i_0})$), 则 $(\spadesuit)$ 为等价.

**推论 2.4.4**. 设 $\mathcal A$ 具有仿射对角线, 且 $1_{\mathcal A}$ 紧. 那么对于带基点连通生象 $(Y,y)$,
$$
\operatorname{End}(1_{\mathcal A^{\otimes Y}}) \simeq\operatorname{colim}_{H\in\mathsf{FFM}_{/\Omega Y}}\operatorname{End}(1_{\mathcal A^{\otimes\mathbf{B}H}}).
$$

### 2.7

对于有限集 $I$, 记 $I_+$ 为带基点集合 $I\sqcup \{*\}$. 注意 $\mathbf{B}(\operatorname{Free}_{\mathbb E_1}(I)) \simeq \Sigma(I_+)$, 因为它们到任何带基点生象 $(Y,y)$ 的映射都等同于映射 $I\to\Omega Y$.

由推论 2.4.4,
$$
\operatorname{End}(1_{\mathcal A^{\otimes Y}}) = \operatorname{colim}_{}\operatorname{End}(1_{\mathcal A^{\otimes\Sigma (I_+)}})
$$

设 $J$ 为有限集. 记 $\mathrm{mult}_J\colon \mathcal A^{\otimes J} \to \mathcal A$ 为乘积函子.
由于 $Y\mapsto\mathcal A^{\otimes Y}$ 保持余极限, 故有 $\mathsf{CAlg}(\mathsf{DGCat})$ 中的推出
$$
\mathcal A^{\otimes \Sigma (J)} \simeq \mathcal A\otimes_{\mathcal A^{\otimes J}} \mathcal A.
$$
记 $\iota_s,\iota_t\colon \mathcal A\to\mathcal A^{\Sigma (J)}$ 为两个含入 $*\to\Sigma (J)$ 对应的函子.
[基变换](基变换.md)给出自然变换
$$
\mathrm{BC}_J\colon \mathrm{mult}_J\circ\mathrm{mult}_J^R \to \iota_s^R\circ\iota_t.
$$

**引理**. 若 $\mathcal A$ 为刚性, 则 $\mathrm{BC}_J$ 为等价.

### 2.8 以远足构造模上的作用

设有 DG 范畴的函子 $S^Y\colon \mathcal A^{\otimes Y} \to \mathcal C$.
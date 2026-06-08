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

> 脑中图像:
>
> - $\mathcal A = \mathsf{QCoh}(X)$ (实际 $X=\mathbf{B}G$)
> - $1_{\mathcal A} = \mathcal O_X$
> - $\mathcal A^{\otimes Y} = \mathsf{QCoh}(\operatorname{Maps}(Y,X))$
> - $1_{\mathcal A^{\otimes Y}} = \mathcal O_{\operatorname{Maps}(Y,X)}$
> - $\mathcal A^{\otimes\Sigma(J)}=\mathsf{QCoh}(\operatorname{Maps}(\Sigma(J),X))=\mathsf{QCoh}(X\times_{X^J}X)$
> - $\Sigma (J) \to Y$ 给出映射 $\operatorname{Maps}(Y,X) \to \operatorname{Maps}(\Sigma (J),X)$

设 $\mathcal A$ 为[对称幺半](对称幺半范畴.md) [DG 范畴](微分分次范畴.md), $Y$ 为空间 (即[生象](生象.md)). 考虑对称幺半 DG 范畴
$$
\mathcal A^{\otimes Y} := \operatorname{colim}^{\mathsf{SymMonCat}}_Y\mathcal A.
$$
我们可以在三种不同语境下描述这个范畴:

- 对称幺半 DG 范畴,
- 幺半 DG 范畴,
- DG 范畴.

总之, 设 $\mathfrak C$ 是上述某种范畴的全体, 即 $\mathfrak C = \mathsf{Alg}_{\mathbb E_n}(\mathsf{DGCat})$, $n\in\{0,1,\infty\}$. 注意, 三种语境中一般的余极限与遗忘函子不相容; 但[筛余极限](筛余极限.md)是相容的. 这个事实马上就要用到.

> 注. $\mathcal A$ 也可以视为 $\mathsf{CAlg}(\mathfrak C)$ 的对象, 也即对称幺半函子 $\mathsf{Fin} \to \mathfrak C$, $I\mapsto \mathcal A^{\otimes I}$. (我觉得这个视角才是本质的.)

### 1.2 将 $\mathcal A^{\otimes Y}$ 表现为余极限

**命题**. 对称幺半 DG 范畴 $\mathcal A^{\otimes Y}$ 遗忘到 $\mathfrak C$ 中, 等同于如下的[余端](余端.md):
$$
\mathcal A^{\otimes Y} = \int_{I\in\mathsf{Fin}}^{\mathfrak C} Y^I\otimes\mathcal A^{\otimes I}.\, (\star)
$$
其中
- $\mathcal A^{\otimes I}$ 是 $\mathcal A$ 作为对称幺半 DG 范畴的 $I$ 次张量积,
- $Y^I\otimes (-)$ 是指取常值图的余极限 $\operatorname{colim}_{Y^I}^{\mathfrak C}(-)$.

证明的思路是: 命题对 $Y\in\mathsf{Fin}$ 较为平凡, 然后将两边视为关于 $Y$ 的函子, 沿 $\mathsf{Fin}\to\mathsf{Ani}$ 作左 [Kan 扩张](Kan扩张.md).

> 注. 我目前对这个命题的理解是:
> - $\mathsf{Fin}$ 在 $\mathsf{Ani}$ 中关于[筛余极限](筛余极限.md)稠密;
> - 对称幺半范畴 $\mathfrak C$ 中的交换代数等同于对称幺半函子 $\mathsf{Fin} \to \mathfrak C$;
> - 命题中等式右端正是将其按筛余极限延拓为 $\mathsf{Ani} \to \mathfrak C$ 的方法, 同时也是沿 $\mathsf{Fin}\to\mathsf{Ani}$ 左 Kan 扩张的计算式.
>
> 注意, 函子 $\mathsf{Ani} \to \mathfrak C$, $Y\mapsto\mathcal A^{\otimes Y}$ 不保持余极限. 换言之, 它不是 $1\to\mathfrak C$ 沿 $1\to\mathsf{Ani}$ 的左 Kan 扩张.

**引理 1**. 函子 $\mathsf{Ani}\to\mathfrak C$, $Y\mapsto \mathcal A^{\otimes Y}$ 是其沿 $\mathsf{Fin}\to\mathsf{Ani}$ 的限制的左 Kan 扩张.

*证明*. 这是因为对任意 $Y\in\mathsf{Ani}$, 左 Kan 扩张的计算式中的指标范畴 $\mathsf{Fin}_{/Y}$ 是[筛范畴](筛范畴.md), 而遗忘函子
$$
\mathsf{CAlg}(\mathsf{DGCat}) \to \mathsf{Alg}(\mathsf{DGCat}) \to \mathsf{Cat}
$$
均保持[筛余极限](筛余极限.md) (这一事实对更一般的算畴的代数成立).

**引理 2**. 等式 $(\star)$ 的右端给出的函子 $\mathsf{Ani}\to\mathfrak C$ 是其沿 $\mathsf{Fin}\to\mathsf{Ani}$ 的限制的左 Kan 扩张.

*证明*. 对任意有限集 $I,J$, 函子 $Y\mapsto Y^J$, $Z\mapsto Z\otimes \mathcal A^{\otimes I}$ 均保持[筛余极限](筛余极限.md), 从而复合函子 $Y\mapsto Y^J\otimes \mathcal A^{\otimes I}$ 保持筛余极限.

上面讨论了一些余极限. 下面讨论一些极限, 陈述某些极限和余极限相等.

与余极限的情况不同的是, 遗忘函子
$$
\mathsf{CAlg}(\mathsf{DGCat}) \to \mathsf{Alg}(\mathsf{DGCat}) \to \mathsf{Cat}
$$
保持所有极限.

定义生象 $Y$ 上[局部系统](局部系统.md)的范畴为
$$
\begin{aligned}
\mathsf{LS}(Y) &= \operatorname{lim}_Y^{\mathsf{DGCat}} \mathsf{Vect}\\
&=\operatorname{lim}_Y^{\mathsf{CAlg}(\mathsf{DGCat})} \mathsf{Vect},
\end{aligned}
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

局部系统的叠 $\mathsf{LS}_G(Y)$ 上的 $\mathsf{QCoh}$ 是对称幺半范畴 $\mathsf{Rep}(G)$ 沿空间积分的重要例子, 也是本文的主要研究对象 (本文将研究其上的 $\mathsf{QCoh}$, 以及 $1\in\mathsf{QCoh}$ 的自同态, 也即函数环).

由生象的映射
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

仍设 $\mathfrak C$ 为 $\mathsf{CAlg}(\mathsf{DGCat}),\mathsf{Alg}(\mathsf{DGCat}),\mathsf{DGCat}$ 之一, $\mathcal C$ 为 $\mathfrak C$ 的对象.

由于 $\mathcal A^{\otimes Y}$ 可表现为 $\mathfrak C$ 中的[余端](余端.md), 相应地 $\operatorname{Hom}_{\mathfrak C}(\mathcal A^{\otimes Y},\mathcal C)$ 可表现为[端](端.md)
$$
\begin{aligned}
\operatorname{Hom}_{\mathfrak C}(\mathcal A^{\otimes Y},\mathcal C)&\simeq \int_{I\in\mathsf{Fin}}\operatorname{Hom}_{\mathfrak C}(Y^I\otimes\mathcal A^{\otimes I},\mathcal C)\\
&\simeq \int_{I\in\mathsf{Fin}}\operatorname{Hom}(\mathcal A^{\otimes I},\mathcal C\otimes\mathsf{LS}(Y^I))\\
&\simeq\mathsf{Nat}_{\mathsf{Fun}(\mathsf{Fin},\mathfrak C)}(\mathcal A^{\otimes (-)},\mathcal C\otimes\mathsf{LS}(Y^{(-)})).
\end{aligned}
$$

**例**. $\mathfrak C = \mathsf{Alg}(\mathsf{DGCat})$, $\mathcal A^{\otimes Y}$ 在 DG 范畴 $\mathcal M$ 上的作用, 即幺半函子 $\mathcal A^{\otimes Y} \to \operatorname{End}(\mathcal M)$, 等同于一族幺半函子
$$
\mathcal A^{\otimes I} \to \operatorname{End}(\mathcal M)\otimes\mathsf{LS}(Y^I).
$$

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
\operatorname{End}(1_{\mathcal A^{\otimes Y}}) = \operatorname{colim}_{I\to\Omega Y}\operatorname{End}(1_{\mathcal A^{\otimes\Sigma (I_+)}}).
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
注意该变换保持松幺半函子结构.

**引理 2.7.4**. 若 $\mathcal A$ 为刚性, 则 $\mathrm{BC}_J$ 为等价.

又因为 $\iota_s,\iota_t$ 均将 $1_{\mathcal A}$ 对应到 $1_{\mathcal A^{\otimes\Sigma (J)}}$

**推论 2.7.6**.
$$
\operatorname{Hom}(1_{\mathcal A},\mathrm{mult}_J\circ\mathrm{mult}_J^R (1_{\mathcal A})) \simeq \operatorname{End}(1_{\mathcal A^{\Sigma (J)}}).
$$

从而 $\operatorname{Hom}(1_{\mathcal A},\mathrm{mult}_J\circ\mathrm{mult}_J^R (1_{\mathcal A}))$ 带有交换代数结构. 这个代数结构还可以具体写出: 对于 $\xi_1,\xi_2\colon 1_{\mathcal A}\to\mathrm{mult}_J\circ\mathrm{mult}_J^R (1_{\mathcal A})$, 其乘积 $\xi_1 * \xi_2$ 是如下复合:
$$
\begin{aligned}
1_{\mathcal A} & = 1_{\mathcal A} \otimes 1_{\mathcal A}\\
& \to \mathrm{mult}_J(\mathrm{mult}_J^R (1_{\mathcal A})) \otimes \mathrm{mult}_J(\mathrm{mult}_J^R (1_{\mathcal A}))\\
& \simeq \mathrm{mult}_J(\mathrm{mult}_J^R (1_{\mathcal A}) \otimes \mathrm{mult}_J^R (1_{\mathcal A})) \\
& \to \mathrm{mult}_J(\mathrm{mult}_J^R (1_{\mathcal A} \otimes 1_{\mathcal A})) \\
& \simeq \mathrm{mult}_J(\mathrm{mult}_J^R (1_{\mathcal A})).
\end{aligned}
$$

记 $\xi$ 对应的 $1_{\mathcal A^{\Sigma (J)}}$ 的自同态为 $E_\xi$.

### 2.8 以远足构造模上的作用

对于带基点生象 $Y$ 的 $I$ 条环路
$$
\gamma^I\colon I\to\Omega Y,
$$
有映射
$$
\gamma^{I_+} \colon \operatorname{End}(1_{\mathcal A^{\Sigma (I_+)}}) \to \operatorname{End}(1_{\mathcal A^{\otimes Y}}).
$$
我们关注 $E_\xi$ 在这个映射下的像, 称为**远足算子**; 它们是远足代数的生成元.


设有 DG 范畴的函子 $S^Y\colon \mathcal A^{\otimes Y} \to \mathcal C$. 它等同于一族函子
$$
S_I \colon \mathcal A^{\otimes I} \to\mathcal C\otimes\mathsf{LS}(Y^I).
$$

对于点 $y\in Y$, 记 $\mathrm{ev}_y$ 为 $y$ 处的取值函子 $\mathsf{LS}(Y)\to\mathsf{Vect}$. 对于两个点 $y_1,y_2$ 之间的道路 $\gamma$, 有自然变换 $\mathrm{mon}_\gamma\colon \mathrm{ev}_{y_1} \to \mathrm{ev}_{y_2}$, 称为 "[平行移动](平行移动.md)".

设 $y_1,y_2\in Y$ 是两个点, $\gamma^J$ 是 $J$ 条 $y_1$ 到 $y_2$ 的道路, $\xi\in\operatorname{Hom}(1_{\mathcal A},\mathrm{mult}_J\circ\mathrm{mult}_J^R (1_{\mathcal A}))$.

**断言**. 远足算子为如下映射的复合.
- 由于 $1_{\mathcal A}$ 沿 $\mathcal A \to \mathcal A^{\otimes Y}$ 的像是 $1_{\mathcal A^{\otimes Y}}$, 可将 $S_Y(1_{\mathcal A^{\otimes Y}})$ 等价于 $\mathrm{ev}_{y_1}(S_{1}(1_{\mathcal A}))$;
- 通过函数 $\xi$ 由 $\mathrm{ev}_{y_1}(S_{1}(1_{\mathcal A}))$ 映射到 $\mathrm{ev}_{y_1}(S_{1}(\mathrm{mult}_J\mathrm{mult}_J^R 1_{\mathcal A}))$;
- 由于 $S_I$ 的相容性, 上述对象等价于 $\mathrm{ev}_{y_1^J}(S_{J}(\mathrm{mult}_J^R 1_{\mathcal A}))$;
- 用 "平行移动" 算子 $\mathrm{mon}_{\gamma^J}$ 映射到 $\mathrm{ev}_{y_2^J}(S_{J}(\mathrm{mult}_J^R 1_{\mathcal A}))$;
- 由于 $S_I$ 的相容性, 上述对象等价于 $\mathrm{ev}_{y_2}(S_{1}(\mathrm{mult}_J\mathrm{mult}_J^R 1_{\mathcal A}))$;
- 通过伴随的余单位映射到 $\mathrm{ev}_{y_2}(S_{1}(1_{\mathcal A}))$;
- 上述对象等价于 $S_Y(1_{\mathcal A^{\otimes Y}})$.

脑中图像:

- $\mathcal A = \mathsf{QCoh}(X)$, $\mathcal A^{\otimes Y}=\mathsf{QCoh}(X^Y)$ (其中 $X^Y$ 表示 $\operatorname{Maps}(Y,X)$), 特别地 $\mathcal A^{\otimes\Sigma (J)}=\mathsf{QCoh}(X^{\Sigma (J)})=\mathsf{QCoh}(X\times_{X^J}X)$;
- $\mathcal C =\mathsf{QCoh}(S)$, $S_Y\colon \mathcal A^{\otimes Y}\to\mathcal C$ 对应映射 $f\colon S\to X^Y$ (其中 $S$ 是任何测试空间, 或为万有情形即 $X^Y$ 本身);
- $1_{\mathcal A} = \mathcal O_X$, $1_{\mathcal A^{\otimes Y}} = \mathcal O_{X^Y}$, $S_Y(1_{\mathcal A^{\otimes Y}})=\mathcal O_S$;
- $\xi\in \operatorname{End}(1_{\mathcal A^{\otimes\Sigma (J)}})=\Gamma(\mathcal O_{X^{\Sigma (J)}})$;
- $S_{I}\colon \mathcal A^{\otimes I}\to\mathcal C\otimes\mathsf{LS}(Y^I)$ 对应映射 $s_I\colon S\times Y^I \to X^I$, 特别地, $S_1$ 对应 $s_1\colon S\times Y\to X$;
- $\mathrm{ev}_{y_1^I}$ 对应映射 $y_1^I\colon S\to S\times Y^I$;

## 3. 迹

**定理 3.8.5**. 设 $\mathcal C$ 为刚性对称幺半 DG 范畴, $F$ 为对称幺半的自函子. 那么 $F$ 的迹等于 [Hochschild 同调](Hochschild同调.md)的单位的自同态:
$$
\operatorname{Tr}(F) \simeq \operatorname{End}(1_{\operatorname{HH}_* (\mathcal C,F)}).
$$
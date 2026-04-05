---
title: 微局部偏屈层
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

参考 I. Waschkies, [The Stack of Microlocal Perverse Sheaves](WaschkiesMPerv.md)

前置: [Kashiwara–Schapira, 流形上的层](流形上的层.md)

## 2.2 层的微局部化

设 $X$ 为复流形. 固定一个域 $k$, 记 $D^b(k_X)$ 为 $X$ 上 $k$-线性空间值层的有界导出范畴.

回忆层 $F\in D^b(k_X)$ 的[微局部支集](微局部支集.md) $\mathrm{SS}(F)$ 是 $F$ "不传播" 的余方向之集合.

对任意子集 $S \subset T^*X$, 定义全子范畴
$$
\mathcal N_S = \{F\in D^b(k_X) \mid \mathrm{SS}(F) \cap S = \varnothing\}.
$$
以及商范畴
$$
D^b(k_X,S)=D^b(k_X)/\mathcal N_S.
$$
那么 $D^b(k_X,-)$ 构成 $T^*X$ 上的范畴值预层.

称 $D^b(k_X)$ 中的态射 $F\to G$ 在 $S$ 上为同构, 就是说其在商范畴 $D^b(k_X,S)$ 中为同构, 这也等价于存在特殊三角 $F\to G\to H$, 使得 $\operatorname{SS}(H)\cap S = \varnothing$. 此时有 $\operatorname{SS}(F)\cap S = \operatorname{SS}(G)\cap S$.

记 $D^b(k_X)_x$ 为预叠 $U\mapsto D^b(k_U)$ 在点 $x$ 处的[茎](茎.md). 定义
$$
\mathcal {LC}_x = \{F\in D^b(k_X)_x\mid \operatorname{SS}(F)\subset X\overset{0}{\hookrightarrow} T^*X\}
$$
为 $x$ 附近 "微局部支集在零截面" 的层的范畴, 也等同于局部系统 (局部常值层) 的范畴:
$$
\mathcal {LC}_x \simeq \{F \in D^b(k_X)_x \mid \exists M\in D^b(\mathsf{Vect}_k), F\simeq M_X\}.
$$

**引理**.
$$
D^b(k_X)_x / \mathcal {LC}_x \simeq D^b(k_X,T_x^* X \setminus 0).
$$
这表明, 由去掉微局部支集在零截面内的信息, 剩下的就是纯粹的微局部信息.

**引理**. 设 $S\subset T^*X \setminus X$, $D^b(k_X)$ 中的态射 $F\to G$ 在 $S$ 上为同构, 则存在 $S$ 的 $\mathbb{R}_+$-锥形开邻域 $U$, 使得 $F\to G$ 在 $U$ 上为同构.

回忆对于 $F,G\in D^b(k_X)$ 有 $\mu\operatorname{hom}(F,G)\in D^b(k_{T^*X})$ (见 [KS](流形上的层.md) 4.4 节), 满足
$$
\operatorname{Supp}(\mu\operatorname{hom}(F,G)) \subset\operatorname{SS}(F) \cap \operatorname{SS}(G).
$$

## 3.3 微局部 $\mathbb{C}$-可构造层

**定义**. 对于 $F\in D^b_{\mathbb{R}\text{-可构造}}(k_X)$, 若 $\operatorname{SS}(F)$ 为 $\mathbb{C}^\times$-锥形子集, 则称 $F$ 为微局部 $\mathbb{C}$-可构造层. 记这种对象的全子范畴为 $D^b_{\mathbb{C}\text{-可构造}}(k_X)$.

## 6.* 微局部偏屈层

设 $S\subset T^*X \setminus X$ 为 $\mathbb{C}^\times$-锥形子集, 我们定义 $D^b_{\mathbb{R}\text{-可构造}}(k_X,S)$ 中的微局部偏屈层. 这个定义的基础是如下的微局部刻画.

**命题**. 对于 $F\in D^b_{\mathbb{C}\text{-可构造}}(k_X)$, 如下条件等价:

1. $F$ 为偏屈层.
2. 对 $\operatorname{SS}(F)$ 的任一非奇异点 $p$, 若 $\operatorname{SS}(F)\to X$ 在 $p$ 附近常秩, 则存在子流形 $Y\subset X$ 与 $M\in\mathsf{Mod}(k)$, 使得 $F\simeq M_Y[\operatorname{dim}Y]\in D^b(k_X,p)$. 换言之, $F$ 在微局部支集的非奇异点附近像是子流形上的常值层的位移.

**定义**. 对于 $F\in D^b_{\mathbb{R}\text{-可构造}}(k_X)$, 若

 - $F$ 在 $S$ 的某开邻域 $U$ 上满足上面的条件 2,
 - $F$ 微局部 $\mathbb{C}$-可构造,

则称 $F$ 为 $S$ 上的**微局部偏屈层**.

## 7.2 Kashiwara ind-微局部化


回忆 [$\mathsf{Ind}(\mathcal C)$](ind-对象.md) 为 $\widehat {\mathcal C}$ 中由可表函子的滤余极限构成的全子范畴.

记
$$
I(k_X) = \mathsf{Ind} \mathsf{Mod}^c (k_X)
$$
为 [ind-层](ind-层.md)的范畴, 其中 $\mathsf{Mod}^c(k_X)$ 是紧支集层的全子范畴. 那么 $\mathsf{Mod}(k_X)$ 全忠实地嵌入 $I(k_X)$:
$$
\iota\colon \mathsf{Mod}(k_X) \to I(k_X),\, F\mapsto \text{``}\underset{U\subset\subset X}{\operatorname{colim}}\text{''} F_U.
$$

**定理**. 存在函子
$$
\mu\colon D^b(I(k_X)) \to D^b(I(k_{T^*X}))
$$
满足
$$
R\operatorname{Hom} (\mu F, \mu G) \simeq \mu\operatorname{hom} (F,G).
$$

考虑 $T^*X\times T^*X$ 的对角线 $\Delta_{T^*X}$ 的[法形变](法形变.md),

[](microPerv-1.typ#:block)

考虑 $TT^*X$ 的子集
$$
P = \{(x,\xi,v_x,v_\xi)\in TT^*X \mid \langle v_x,\xi \rangle \geq 0\},
$$
定义 "[积分](拉-推.md)核"
$$
K_X = Rp_{!!} (k_{\overline\Omega} \otimes \beta(k_P)) \otimes \beta (\omega^{\otimes -1}_{\Delta_{T^*X} | T^*X \times T^*X}),
$$
其中

- $\beta \colon D^b(k_X) \to D^b(I(k_X))$ 为嵌入, 其左伴随为 $\alpha\colon D^b(I(k_X)) \to D^b(k_X)$, $\alpha(\text{``}\operatorname{colim}_i\text{''} F_i) = \operatorname{colim}_i F_i$;
- $\omega$ 为对偶复形;
- $Rp_{!!}$ 为 [ind-层](ind-层.md)的导出紧合直像 (derived proper direct image), 见 [KS](KSIndShAst.md).

Kashiwara 的 ind-微局部化定义为
$$
\mu\colon D^b(I(k_X)) \to D^b(I(k_{T^*X})),
$$
$$
F\mapsto \mu F = K_X \circ \pi^*F,
$$
其中 $\circ$ 表示核的复合.

Kashiwara 建立了如下定理.

**定理**. 对 $F,G\in D^b(k_X)$,
$$
R\operatorname{Hom}(\mu F,\mu G) \simeq \mu\operatorname{hom}(F,G).
$$
(注意 $\mu\operatorname{hom}(F,G)$ 是之前定义的函子, 不是 $\mu$ 作用在 $\operatorname{hom}(F,G)$)

## 7.3 微局部偏屈层的叠

考虑 $X$ 的射影余切丛
$$
P^*X = (T^*X \setminus X)/\mathbb{C}^\times,
$$
记余切丛除零截面到射影丛的投影为 $\gamma \colon T^*X \setminus X \to P^*X$.

设 $\Omega\subset P^*X$ 为开集, $F\in D^b(I(k_{\gamma^{-1}\Omega}))$,
若对任意 $p\in\gamma^{-1}\Omega$, 存在 $\mathbb{C}^\times$-锥形邻域 $V\supset\mathbb{C}^\times p$ 及 $G\in D^b_{\mathrm{perv}}(k_X,V)$ 使得 $\mu G|_V \simeq F|_V$, 则称 $F$ 为 $\Omega$ 上微局部偏屈层.

记微局部偏屈层的范畴为 $\mu\mathsf{Perv}(\Omega)$.
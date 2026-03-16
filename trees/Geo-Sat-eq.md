---
title: 几何 Satake 等价
taxon: 讲义
author: [SimplicialCat](SimplicialCat.md)
---

参考 Gaitsgory 等人 2010 春季的几何表示论讨论班.

网址: https://people.mpim-bonn.mpg.de/gaitsgde/grad_2009/

## 分解 Grassmann 空间

对于光滑曲线 $X$, 定义 "分解 Grassmann 空间" (factorizable Grassmannian)
$$
\mathrm{Gr}_{G,X^n}
$$
为如下对象的模空间:

- $X$ 上的 $G$-主丛 $T$, 以及 $X$ 的 $n$ 个点 $(x_i)$ (允许相同), 配备 $T$ 在 $X \setminus \bigcup \{x_i\}$ 上的平凡化.

对所有自然数 $n$, 空间 $\mathrm{Gr}_{G,X^n}$ 共同构成一个[分解](分解空间.md)结构.

$\mathrm{Gr}_{G,X^n}$ 还可以写成 "相对环路群" 对 "相对弧群" 的商:
$$
\mathrm{Gr}_{G,X^n} = G(\widehat {\mathcal K})_n / G(\widehat {\mathcal O})_n,
$$
其中 $G(\widehat {\mathcal K})_n$, $G(\widehat {\mathcal O})_n$ 分别是如下对象的模空间:

- $X$ 的 $n$ 个点 $(x_i)$, 以及[去心形式圆盘](去心形式圆盘.md)上的 $G$-值函数 $g\in G(\widehat {X}_{\{x_i\}}\setminus \{x_i\})$;
- $X$ 的 $n$ 个点 $(x_i)$, 以及[形式圆盘](形式圆盘.md)上的 $G$-值函数 $g\in G(\widehat {X}_{\{x_i\}})$;

$\mathrm{Gr}_{G,X^1}$ 是 $X$ 上的 $\mathrm{Gr}_G$-丛, 结构群为 $\operatorname{Aut}(\widehat {\mathcal O})$.
例如当 $X$ 本身是小圆盘时,
$\mathrm{Gr}_{G,X^1} = \mathrm{Gr}_G\times X$.

## 卷积

定义

- $\mathsf{Sph}$ 为 $\mathrm{Gr}_{G}$ 上的 $G(\widehat {\mathcal O})$-等变 D-模范畴;
- $\mathsf{Sph}_n$ 为 $\mathrm{Gr}_{G,X^n}$ 上的 $G(\widehat {\mathcal O})_n$-等变 D-模范畴.

粗略地说, $G(\widehat {\mathcal K})$, $G(\widehat {\mathcal K})_n$ 的群结构导致这些范畴具有[卷积](卷积.md).

然而, 由于 $G(\widehat {\mathcal K})$ 比较野蛮, 我们不能直接卷积, 而是利用等变性, 转移到较好的空间上作卷积.

$G(\widehat {\mathcal K})$ 的乘法映射下降为映射
$$
\mathrm{Conv}_G = G(\widehat {\mathcal K})\times_{G(\widehat {\mathcal O})}\mathrm{Gr}_G \overset{m}{\to} \mathrm{Gr}_G.
$$

考虑映射 $\mathrm{pr}\colon \mathrm{Conv}_G \to \mathrm{Gr}_G$, 先投影到第一分量 $G(\widehat {\mathcal K})$, 再投影到商 $G(\widehat {\mathcal K}) / G(\widehat {\mathcal O}) = \mathrm{Gr}_G$.

对于 $F\in\mathsf{Sph}$, 定义 $\widetilde F$ 为 $\mathrm{pr}_2^*F$ 由 $G(\widehat {\mathcal K}) \times G(\widehat {\mathcal K})$ 下降到 $\mathrm{Conv}_G$ 的对象.

对于 $F_1,F_2\in\mathsf{Sph}$, 定义
$$
F_1 \operatorname{\widetilde {\boxtimes}} F_2 = (\mathrm{pr}^* F_1) \otimes \widetilde {F_2};
$$
$$
F_1 * F_2 = m_* (F_1 \operatorname{\widetilde {\boxtimes}} F_2).
$$

**定理**. 上述卷积使得 $\mathsf{Sph}$ 构成刚性张量范畴, 且存在忠实正合的纤维函子 $\mathsf{Sph} \to \mathsf{Vect}$, 在[淡中对偶](淡中对偶.md)下, 将 $\mathsf{Sph}$ 等同于 $\mathsf{Rep}(^LG)$.

$G(\widehat {\mathcal K})_n$ 的群结构
$$
m\colon G(\widehat {\mathcal K})_n \times_{X^n} G(\widehat {\mathcal K})_n \to G(\widehat {\mathcal K})_n
$$
下降为
$$
m\colon G(\widehat {\mathcal K})_n \times_{G(\widehat {\mathcal O})_n} \mathrm{Gr}_{G,X^n} \to \mathrm{Gr}_{G,X^n}.
$$

## 群表示的分解范畴

设 $H$ 为任意群. 定义 $H$ 在 $X^n$ 上的 D-模 $F$ 的**分解作用** (factorizable action) 为如下数据:

- 对 $n$ 的任意分划 $p \colon n = n_1+\cdots+ n_m$, 有 $H^m$ 在 $F|_{U_p}$ 上的作用 ($U_p$ 是分划 $p$ 给出的开子空间).

## Hecke 特征层

定义 **Hecke 叠** $\mathcal H_n$ 为如下对象的模空间:

- $X$ 上的两个 $G$-丛, 在 $X$ 的 $n$ 个点之外同构.

有两个投影映射
$$
\mathrm{Bun}_G \overset{\overleftarrow{h_n}}{\longleftarrow} \mathcal H_n \overset{\overrightarrow{h_n}}{\longrightarrow} X^n\times\mathrm{Bun}_G,
$$

## Hecke 范畴的结构

记 $1 \in \mathrm{Gr}_G$ 为 $G(\widehat {\mathcal O})\subset G(\widehat {\mathcal K})$ 对应的点. 记 $\delta_1 := 1_*\mathbb{C}$. 它是 $\mathsf{Sph}$ 上卷积的单位.

## 纤维函子

考虑 $G \hookleftarrow B \twoheadrightarrow T$ 给出的图表
$$
\mathrm{Gr}_G \overset{b}{\leftarrow} \mathrm{Gr}_B \overset{t}{\rightarrow} \mathrm{Gr}_T,
$$
(我们将 $T$ 视为 $B$ 的商群而非子群)
定义
$$
F = t_! b^*\colon \mathsf{Sph}\to \mathsf{Sph}_T \simeq\mathsf{Vect}^{X_*(T)}.
$$

## 识别对偶群


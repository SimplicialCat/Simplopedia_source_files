---
title: 几何 Satake 等价
taxon: 讲义
author: [SimplicialCat](SimplicialCat.md)
---

参考 Gaitsgory 等人 2010 春季的几何表示论讨论班.

网址: https://people.mpim-bonn.mpg.de/gaitsgde/grad_2009/

## Hecke 叠: 动机

设 $X$ 为光滑曲线.

定义一点 $x\in X$ 处的 **Hecke 叠** $\mathcal H_{X^n}$ 为如下对象的[模空间](模空间.md):

- $X$ 上的 $G$-主丛 $T_1, T_2$, 配备 $T_1$ 和 $T_2$ 在 $X \setminus \{x\}$ 上的同构 $\alpha$.

由 $(T_1,T_2,\alpha)$ 分别投影到 $T_1$, $T_2$, 得到 "卷积图"
$$
\mathrm{Bun}_G \overset{\overleftarrow{h_x}}{\longleftarrow} \mathcal H_x \overset{\overrightarrow{h_x}}{\longrightarrow} \mathrm{Bun}_G.
$$

回忆[仿射 Grassmann 空间](仿射Grassmann空间.md) $\mathrm{Gr}_G$ 是如下对象的模空间:

- [形式圆盘](形式圆盘.md) $\mathbb D$ 上的 $G$-主丛 $T$, 配备 $T$ 在[去心形式圆盘](去心形式圆盘.md)上的平凡化.

记 $\widehat {\mathcal K}_x$ 为 $X$ 在 $x$ 处的[完备局部域](完备化(域).md) (对应 $x$ 处的[去心形式圆盘](去心形式圆盘.md)), 它是[完备化局部环](完备化(环).md) $\widehat {\mathcal O}_x$ (对应 $x$ 处的[形式圆盘](形式圆盘.md)) 的分式域. 我们常选取 "单值化参数" 得到同构 $\widehat {\mathcal K}_x \simeq \mathbb{C}(\!(t)\!)$, $\widehat {\mathcal O}_x\simeq\mathbb{C}[\![t]\!]$. 此时记 $\widehat {\mathcal K}_x$ 为 $\widehat {\mathcal K}$, $\widehat {\mathcal O}_x$ 为 $\widehat {\mathcal O}$.
那么 $\mathrm{Gr}_G$ 的元素相当于[去心形式圆盘](去心形式圆盘.md)上的 $G$-值函数, 模去整个[形式圆盘](形式圆盘.md)上的 $G$-值函数:
$$
\mathrm{Gr}_G \simeq G(\widehat {K}) / G(\widehat {\mathcal O}).
$$

**观察**. $\mathcal H_x$ 在 $\mathrm{Bun}_G$ 上一点 $T_1$ 处的纤维**非典范地**同构于 $\mathrm{Gr}_G$. 这是因为, 我们可**非典范地**选取 $T_1$ 在 $\mathbb D$ 上的一个平凡化, 那么这给出如下两种数据之间的等价:

- $X$ 上的另一个 $G$-主丛 $T_2$, 配备 $T_1$ 和 $T_2$ 在 $X \setminus \{x\}$ 上的同构;
- $\mathbb D$ 上的 $G$-主丛 $T_2|_{\mathbb D}$, 配备其在去心形式圆盘上的平凡化.

**命题**. $\mathcal H_x$ 是 $\mathrm{Bun}_G$ 上的 $\mathrm{Gr}_G$-丛, 结构群为 $G(\widehat {\mathcal O})$.

因此, 对于 $\mathrm{Gr}_G$ 上的 $G(\widehat {\mathcal O})$-等变 [D-模](D-模.md) $F$, 可将其 "拉回" 为 $\mathcal H_x$ 上的 D-模 $\widetilde {F}$ 并以此定义 **Hecke 函子**
$$
H_x^F\colon M\mapsto (\overrightarrow{h}_x)_! \big[ (\overleftarrow{h}_x)^* M \otimes \widetilde {F} \big].
$$


## 分解 Grassmann 空间

弧群, 环路群, 仿射 Grassmann 空间, Hecke 叠等等对象不仅可以在一个点 $x\in X$ 上定义, 而且可以

- 同时对所有 $x\in X$ 定义, 以及
- 在多个点 $(x_i\in X)$ 上定义,

这些数据构成[**分解**](分解空间.md) (factorization) 结构.

定义**分解 Grassmann 空间** (factorizable Grassmannian) $\mathrm{Gr}_{G,X^n}$ 为如下对象的模空间:

- $X$ 上的 $G$-主丛 $T$, 以及 $X$ 的 $n$ 个点 $(x_i)$ (允许相同), 配备 $T$ 在 $X \setminus \bigcup \{x_i\}$ 上的平凡化.

对所有自然数 $n$, 空间 $\mathrm{Gr}_{G,X^n}$ 共同构成一个[分解](分解空间.md)结构, 大致如下:

- 设 $p \colon \{1,\cdots,n\} \to \{1,\cdots,m\}$ 为分划, 记 $\Delta_p \colon X^m \to X^n$ 为对应的 "对角" 映射, 则有同构
    $$
    {\mathrm{Gr}_{n}}
    |_{\Delta_p}
    \simeq {\mathrm{Gr}_m}.
    $$
    (直观: $n$ 个点有一些重复, 相当于只有 $m$ 个点)
- 设 $p \colon \{1,\cdots,n\} \to \{1,\cdots,m\}$ 为分划, 各组大小为 $n_i$. 记 $U_p\subset X^n$ 为 "不同组的分量互不相等" 的点构成的开子空间. 那么
    $$
    {\mathrm{Gr}_{n}}
    |_{U_p}
    \simeq \Big({\prod_{}{\mathrm{Gr}_{n_i}}}\Big)\Big|_{U_p}.
    $$
    (直观: 将 $n$ 个点按互不相交的区域分为若干组)
- 对于[对称群](对称群.md) $S_n$ 在 $X^n$ 上的作用, $\mathrm{Gr}_{n}$ 有等变结构.
- 上述结构之间还有一些相容性, 此处就不具体描述了.

$\mathrm{Gr}_{G,X^n}$ 还可以写成 "相对环路群" 对 "相对弧群" 的商:
$$
\mathrm{Gr}_{G,X^n} = G(\widehat {\mathcal K})_n / G(\widehat {\mathcal O})_n,
$$
其中 $G(\widehat {\mathcal K})_n$, $G(\widehat {\mathcal O})_n$ 分别是如下对象的模空间:

- $X$ 的 $n$ 个点 $(x_i)$, 以及[去心形式圆盘](去心形式圆盘.md)上的 $G$-值函数 $g\in G(\widehat {X}_{\{x_i\}}\setminus \{x_i\})$;
- $X$ 的 $n$ 个点 $(x_i)$, 以及[形式圆盘](形式圆盘.md)上的 $G$-值函数 $g\in G(\widehat {X}_{\{x_i\}})$;

其中 $\widehat {X}_{\{x_i\}}$ 是各个形式圆盘 $\operatorname{Spec}\widehat {\mathcal O}_{X,x_i}$ 的并.

**观察**. $\mathrm{Gr}_{G,X^1}$ 是 $X$ 上的 $\mathrm{Gr}_G$-丛, 结构群为 $\operatorname{Aut}(\widehat {\mathcal O})$.
例如当 $X$ 本身是小圆盘时,
$\mathrm{Gr}_{G,X^1} = \mathrm{Gr}_G\times X$.

## 卷积

定义 "球面 Hecke 范畴"

- $\mathsf{Sph}$ 为 $\mathrm{Gr}_{G}$ 上的 $G(\widehat {\mathcal O})$-等变 D-模范畴;
- $\mathsf{Sph}_n$ 为 $\mathrm{Gr}_{G,X^n}$ 上的 $G(\widehat {\mathcal O})_n$-等变 D-模范畴.

名称中的 "球面" 是来源于一个粗略的类比: 两个圆盘沿着去心圆盘粘起来就是 "球面".

粗略地说, $G(\widehat {\mathcal K})$, $G(\widehat {\mathcal K})_n$ 的群结构导致这些范畴具有[卷积](卷积.md). 然而, 由于 $G(\widehat {\mathcal K})$ 比较野蛮, 我们不能直接卷积; 实际的做法是利用等变性, 转移到较好的空间上作卷积.

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

回忆 **Hecke 叠** $\mathcal H_n$ 为如下对象的模空间: $X$ 上的两个 $G$-丛, 在 $X$ 的 $n$ 个点之外同构. 有两个投影映射
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


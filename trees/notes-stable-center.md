---
title: 稳定中心猜想
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

本文是为准备 2026 年春季学期徐斌老师 "朗兰兹纲领选讲" 课程报告而记的笔记. 主要参考 [BKV](BKV-SCC.md).

## 1. 可容许 ind-叠上的可构造层

### 1.1 可容许态射

记 $\mathsf{Sch}_k$ 为 qcqs $k$-概形的范畴.

**引理**. $\mathsf{Sch}_k$ 中以[余滤](余滤范畴.md)偏序集为指标, 以[仿射态射](仿射态射.md)为转移态射的图表具有极限.

记 $\mathsf{Var}_k$ 为有限型[分离](分离态射.md) $k$-概形的范畴. 固定素数 $\ell$ 不同于 $k$ 的特征. 记 $D(X) := D_c^b(X,\overline{\mathbb{Q}_\ell})$ 为可构造 $\overline{\mathbb{Q}}_\ell$-层的有界导出范畴. $\mathsf{Var}_k$ 中的每个态射 $f\colon X\to Y$ 都给出四个函子 $f^*\dashv f_*$, $f_!\dashv f^!$.

设 $k$ [可分闭](可分闭域.md). 对于 $X\in \mathsf{Var}_k$, 若典范的映射 $\mathbb{Q}_\ell \to R\Gamma(X,\mathbb{Q}_\ell)$ 为同构, 则称 $X$ **无圈** (acyclic). 例如 $\mathbb A^n$ 无圈.

对于 $\mathsf{Sch}_k$ 中的有限表现态射 $f\colon X\to Y$, 若 $f$ 光滑, 且所有几何纤维无圈, 则称 $f$ **幂幺** (unipotent).

回忆光滑态射 $f$ 满足 $f^!\simeq f^*[2n](n)$. 光滑态射 $f$ 幂幺当且仅当余单位 $f_!f^!\to \mathrm{id}_{D(Y)}$ 为同构, 也等价于 $f^!\colon D(Y)\to D(X)$ 为全忠实函子 ([](自反子范畴.md)).

对于 $\mathsf{Sch}_k$ 中的态射 $f\colon X\to Y$, 若如下条件成立则称其**可容许**:

- 存在 $Y$ 上的余滤图表 $\{X_i\}_{i\in I}$, 使得 $X\simeq\lim_i X_i$, 每个 $X_i\to Y$ 有限表现, 转移态射 $X_i\to X_j$ 仿射且幂幺.

此时称 $\{X_i\}_{i\in I}$ 为 $X\to Y$ 的一个**可容许表现**.

若 $X\to Y$ 有可容许表现 $\{X_i\}_{i\in I}$, 其中存在 $i$ 使得 $X_i\to Y$ 幂幺, 则称 $X\to Y$ 为 [pro-](pro-对象.md)幂幺态射.

当 $X\to \operatorname{Spec}k$ 可容许时, 称 $X$ 可容许. 记可容许 $k$-概形的范畴为 $\mathsf{ASch}_k$.

可容许态射关于复合封闭.

### 1.2 可构造层

对于 $X\in\mathsf{Sch}_k$, 记 $(X/\cdot)$ 为[仰范畴](仰范畴.md) $(\mathsf{Var}_k)_{X/}$. 由于 $\mathsf{Var}_k$ 具有[纤维积](拉回.md), $(X/\cdot)$ 为[余滤范畴](余滤范畴.md).

记 $(X/\cdot)^{\mathrm{sm}}$, $(X/\cdot)^{\mathrm{un}}$ 为 $(X/\cdot)$ 中由形式光滑态射, pro-幂幺态射 $X\to V$ 构成的子范畴.

定义

- $M(X) := \operatorname{colim}^!_{(X/\cdot)^{\mathrm{op}}} D(V)$, 即 $!$-拉回构成的图的余极限;
- $D(X) := \operatorname{colim}^*_{(X/\cdot)^{\mathrm{op}}}D(V)$, 即 $*$-拉回构成的图的余极限;
- $\widehat {M}(X) := \operatorname{lim}^!_{(X/\cdot)} D(V)$, 即 $!$-推前构成的图的极限;
- $\widehat {D}(X) := \operatorname{lim}^*_{(X/\cdot)}D(V)$, 即 $*$-推前构成的图的极限.

$D(X),M(X),\widehat {M}(X)$ 分别类比于局部常值函数的空间,  局部常值测度的空间, 全体测度的空间.

### 1.3 ind-概形的情形

回忆, [ind-](ind-对象.md)概形是概形 (在 $\mathsf{Fun}(\mathsf{Sch}^{\mathrm{op}},\mathsf{Set})$ 中) 的[滤余极限](滤余极限.md), 我们要求余极限图表的每个态射均为有限表现的闭嵌入.

对于概形 $X$ 与 ind-概形 $Y$, 若映射 $X\to Y$ 为有限表现闭嵌入, 则称之为 **fp-闭子概形**.

对于 ind-概形的态射 $f\colon X\to Y$, 若对任意 fp-闭子概形 $Z\subset X$, 都有 $f|_Z$ 为可容许态射, 则称 $f$ 可容许.

### 1.4 ind-叠

记 $\mathsf{St}_k$ 为 $\operatorname{Spec}k$ 上的叠的 $2$-范畴, $\mathsf{Art}_k^{\mathrm{ft}}$ 为有限型 Artin 叠的子范畴.

对于 $X\in\mathsf{Art}_k^{\text{ft}}$, 记 $D(X)$ 为可构造 $\overline{\mathbb{Q}}_\ell$-层的有界导出范畴, $D^-(X)$ 为上有界导出范畴.

### 1.5 几何对象的 $2$-范畴

对于 $X,Y\in\mathsf{AISt}_k$, 可定义 "$X$ 方向的测度, $Y$ 方向的函数" 的范畴 $M_X(X\times Y)$.

- 对于 $\mathsf{Art}_k^{\text{ft}}$ 中的态射 $f\colon U_1\to U_2$, $g\colon V_1\to V_2$, 记 $f^!\times g^*\colon D(U_2\times V_2) \to D(U_1\times V_1)$ 为 $f^!$, $g^*$ 的复合 (与顺序无关).
- 对于 $X,Y\in\mathsf{ASt}_k$, 定义
    $$
    M_X(X\times Y) = \operatorname{colim}^{!,*}_{U\in (X/\cdot)^{\mathrm{op}},V\in (Y/\cdot)^{\mathrm{op}}} D(U\times V),
    $$
    转移态射为前面提到的 $f^!\times g^*$.
- 对于 $X,Y\in\mathsf{AISt}_k$, 定义
    $$
    M_X(X\times Y) = \operatorname{colim}_{i,j} M_{X_i}(X_i\times Y_j).
    $$
  类似地, 将 $D$ 改为 $D^-$, 可定义 $M_X^-(X\times Y)$.

范畴 $M_X(X\times Y)$ 的每个对象 $B$ 给出函子 $M(X)\to M(Y)$,
$$
F\mapsto (p_Y)_!(p_X^*F\otimes B).
$$

进一步, 有复合函子
$$
M_Y(X\times Y)\times M_Z(Y\times Z)\to M_Z(X\times Z),
$$
$$
(A,B)\mapsto (p_{XZ})_! (p_{XY}^*A\otimes p_{YZ}^*B).
$$

上述构造可延拓到 [pro-](pro-对象.md)范畴.

定义全子范畴
$$
\operatorname{Hom}_{\text{geom}}(X,Y) \subset \mathsf{Pro} M_Y(X\times Y)
$$
其对象 $B$ 满足对任意 $F\in M(X)$, 有 $B(F)\in M(Y)$.
这些资料构成 $2$-范畴 $M_{\text{grom}}$, 称为几何 $2$-范畴.

定义 $X$ 到 $Y$ 的一个**可容许关系** (admissible correspondence) 为
$$
X \overset{g}{\leftarrow} Z \overset{f}{\to} Y,
$$
满足 $g$ 可表为叠且形式光滑, $f$ 可容许且强可表 (strongly representable).
该关系给出函子
$$
f_! g^!\colon M(X)\to M(Y).
$$
进而有可容许[关系范畴](关系2-范畴.md)到几何 $2$-范畴的 $2$-函子
$$
\mathsf{Corr} \to M_{\text{grom}}.
$$


## 2. Hecke 代数的范畴化

记号.

- $B\subset G$ 是固定的 Borel 子群,
- $I$ 是 $B$ 对应的 [Iwahori 子群](Iwahori子群.md), 即 $B$ 在投影 $L^+G\to G$ 下的原像.
- $\mathrm{Fl} := LG / I$ 为仿射旗簇, $\widetilde W$ 为[仿射 Weyl 群](仿射Weyl群.md).
- $\mathsf{Par}$ 为 $LG$ 的[抛物-Iwahori 子群](parahoric.md) (也即包含 $I$ 的 fp-闭子群) 的偏序集.
- 对于 $P\in\mathsf{Par}$, 记 $P^+$ 为 pro-幂幺根, ...

### 2.1 环路空间

记 $K = k(\!(t)\!)$, $\mathcal O = k[\![t]\!]$. 固定 $n\in\mathbb{Z}_{\geq 0}$.

### 2.2 Hecke 代数

$M(LG)$ 关于卷积
$$
A*B = m_! (A\boxtimes B)
$$
构成幺半范畴.

### 2.3 平均函子

## e. 例子

这一节是我自己加的, 收集一些辅助我理解的例子.

考虑 $G = \mathrm{SL}_2$.

- [仿射 Weyl 群](仿射Weyl群.md) $\widetilde {W} = \mathbb{Z}\rtimes\mathbb{Z}/2$, 生成元为平移 $t = \begin{pmatrix}t&0\\0&t^{-1}\end{pmatrix}$ 与反射 $s = \begin{pmatrix}0&1\\-1&0\end{pmatrix}$, 满足 $s^2=1$, $sts=t^{-1}$. Bruhat 序为 $t^n\leq t^{n+1}$, $st^n\leq st^{n+1}$, $t^n < st^n$.
- Iwahori 子群 $I = \Big\{\begin{pmatrix}*&*\\t *&*\end{pmatrix}\Big\}\subset\mathrm{SL}_2(k[\![t]\!])$.
- $I_n^+ = \Big\{\begin{pmatrix}1&t^n *\\t^{n+1} *&1\end{pmatrix}\Big\}\subset\mathrm{SL}_2(k[\![t]\!])$. 那么 $I/I_n^+$ 是有限型群概形, 且 $I = \operatorname{lim}I/I_n^+$.
- $LG = \mathrm{SL}_2(k(\!(t)\!))$.
- 仿射旗簇 $\mathrm{Fl} = LG/I = \bigsqcup_{n\geq 0}Y_{t^n} \sqcup\bigsqcup_{n\geq 0}Y_{st^n}$, 其中 $Y_{t^n}\simeq\mathbb A^{2n}$, $Y_{st^n}\simeq\mathbb A^{2n+1}$.
- $LG^{\leq w} \subset LG$ 是 $\mathrm{Fl}^{\leq w}$ 的原像. $LG = \operatorname{colim}_{w\in \widetilde W}LG^{\leq w}$ 将 $LG$ 表现为可容许 ind-概形.

## 3. 稳定中心猜想

### 3.1 经典理论

设 $F$ 为[非 Archimedes](非Archimedes赋值域.md) [局部域](局部域.md), $W_F$ 为 [Weil 群](Weil群.md), $W_F$ 为 Weil–Deligne 群.

设 $G$ 为 $F$ 上的连通约化群, 设其分裂. 记 $\check{G}$ 为 [Langlands 对偶](Langlands对偶.md).

记 $R(G)$ 为 $G(F)$ 的光滑表示的范畴, $\operatorname{Irr}(G)$ 为其中不可约对象的等价类集合.

记 $Z_G = Z(R(G))$ 为 Bernstein 中心, 即 $\mathrm{id}_{R(G)}$ 的自同态代数.
$$
Z_G := \operatorname{End}(\mathrm{id}_{R(G)})
$$

$Z_G$ 的每个元素 $z$ 给出 [Hecke 代数](Hecke代数.md) $\mathcal H(G(F))$ 的一个自同态 $z_{\mathcal H}$.

### 3.2 Bernstein 中心的范畴化

朴素的想法是定义 $\mathcal Z(LG)$ 为
$$
\operatorname{End}_{\mathcal M(LG^2)}(\mathcal M(LG)),
$$
但在我们现在的 $\ell$-进语境中, 该定义似乎不对. 我们应该考虑的不是抽象的范畴自同态, 而是 "来自几何" 的自同态. 更正式地说, 我们应该使用的不是全体稳定范畴的 $2$-范畴, 而是几何对象的 $2$-范畴.

一般而言, 对于 $2$-范畴 $\mathfrak C$ 的对象 $X$, 有幺半范畴 $\operatorname{End}_{\mathfrak C}(X)$. 设 $\mathfrak C$ 自身是幺半范畴, $S\in\mathfrak C$ 为结合代数, $X$ 为 $S$-模, 那么可定义一个幺半范畴 $\operatorname{End}_{\mathfrak C}^S(X)$, 它是如下单纯图表的极限:
$$
\operatorname{Hom}(X,X)\to^2\operatorname{Hom}(S\otimes X,X)\to^3\operatorname{Hom}(S\otimes S\otimes X,X)\to^4\cdots
$$
定义 $S$ 的[中心](中心.md)为
$$
Z(S) :=\operatorname{End}_{\mathfrak C}^{S\otimes S^{\mathrm{op}}}(S).
$$

考虑 $LG$ 作为几何 $2$-范畴的对象的中心
$$
Z_{M_{\text{grom}}}(LG).
$$
它是 Bernstein 中心的范畴化.

对每个 $P\in\mathsf{Par}$, 考虑幺半范畴 $M(\frac{LG}{P})$; 对 $P\subset Q$, 考虑 $!$-拉回函子 $M(\frac{LG}{Q}) \to M(\frac{LG}{P})$. 定义
$$
\mathsf{Pro}M(\frac{LG}{LG}) :=\operatorname{lim}_{P\in\mathsf{Par}}\mathsf{Pro}M(\frac{LG}{P}).
$$
(注意, 我们需要先得到 pro-范畴再取极限, 因为 "不变分布不可能紧支集")
它是不变分布空间 $\operatorname{Dist}^{G(F)}G(F)$ 的范畴化.


## Bernstein 投影算子的稳定性
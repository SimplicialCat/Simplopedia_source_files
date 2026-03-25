---
title: 几何 Satake 等价
taxon: 讲义
author: [SimplicialCat](SimplicialCat.md)
---

参考

- Gaitsgory 等人 2010 春季的[几何表示论讨论班](https://people.mpim-bonn.mpg.de/gaitsgde/grad_2009/),
- 朱歆文的讲义 [An introduction to affine Grassmannians and the geometric Satake equivalence](Zhu-GrSat.md).

不幸的是, 这两个文献分别讨论 D-模和偏屈层, 两者的实质内容相同, 但我暂时不知道如何转换, 只能照抄原文.

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

记 $G(\widehat {\mathcal K})$ 为 $\operatorname{Spec}\widehat {\mathcal K}$ 到 $G$ 的映射叠, $G(\widehat {\mathcal O})$ 类似. [朱](Zhu-GrSat.md)文作 $LG, L^+G$.

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

定义**分解 Grassmann 空间** (factorizable Grassmannian) $\mathrm{Gr}_n = \mathrm{Gr}_{G,X^n}$ 为如下对象的模空间:

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

## Satake 范畴

定义 **Satake 范畴**, 又称球面 Hecke 范畴

- $\mathsf{Sph}$ 为 $\mathrm{Gr}_{G}$ 上的 $G(\widehat {\mathcal O})$-等变 D-模范畴 ([朱](Zhu-GrSat.md)文作 $\mathsf{Sat}_G$);
- $\mathsf{Sph}_n$ 为 $\mathrm{Gr}_{G,X^n}$ 上的 $G(\widehat {\mathcal O})_n$-等变 D-模范畴.

名称中的 "球面" 是来源于一个粗略的类比: 两个圆盘沿着去心圆盘粘起来就是 "球面".

### 半单性

[朱](Zhu-GrSat.md): 记 $\mathrm{IC}_\mu$ 为仿射 Schubert 簇 $\mathrm{Gr}_{\leq\mu}$ 上的相交上同调层. 有 $\mathrm{IC}_\mu |_{\mathrm{Gr}_\mu} \simeq \overline{\mathbb{Q}}_\ell [\langle 2\rho,\mu\rangle]$ 是常值层的移位.
范畴 $\mathsf{Sat}_G$ 半单; $\mathrm{IC}_\mu$ 之间无扩张 ([朱](Zhu-GrSat.md) 5.1.1).

## 卷积

粗略地说, $G(\widehat {\mathcal K})$, $G(\widehat {\mathcal K})_n$ 的群结构导致这些范畴具有[卷积](卷积.md). 然而, 由于 $G(\widehat {\mathcal K})$ 比较野蛮, 我们不能直接卷积; 实际的做法是利用等变性, 转移到较好的空间上作卷积.

$G(\widehat {\mathcal K})$ 的乘法映射下降为映射
$$
\mathrm{Conv}_G = G(\widehat {\mathcal K})\times_{G(\widehat {\mathcal O})}\mathrm{Gr}_G \overset{m}{\to} \mathrm{Gr}_G.
$$
([朱](Zhu-GrSat.md)文作 $\mathrm{Gr}_G \operatorname{\widetilde \times}\mathrm{Gr}_G$, 这实际上是 $G(\widehat {\mathcal O})$-主丛 $G(\widehat {\mathcal K})\to\mathrm{Gr}_G$ 的[关联丛](关联丛.md))

考虑映射 $\mathrm{pr}\colon \mathrm{Conv}_G \to \mathrm{Gr}_G$, 投影到商 $G(\widehat {\mathcal K})\times_{G(\widehat {\mathcal O})}1=G(\widehat {\mathcal K}) / G(\widehat {\mathcal O}) = \mathrm{Gr}_G$.

$\mathrm{Conv}_G$ 可理解为如下对象的模空间:

- 形式圆盘 $\mathbb D$ 上的 $G$-主丛 $T_1,T_2$, 配备 $T_1$ 在去心形式圆盘 $\mathbb D^\circ$ 上的平凡化, 以及 $T_1,T_2$ 在去心形式圆盘 $\mathbb D^\circ$ 上的同构.

$$
\mathrm{Conv}_G = \sum_{T_1,T_2\in\mathrm{Bun}_G(\mathbb D)}(T_1|_{\mathbb D^\circ}=\mathrm{triv}_{\mathbb D^\circ})\times (T_1|_{\mathbb D^\circ}=T_2|_{\mathbb D^\circ}).
$$
$\mathrm{Conv}_G$ 到 $\mathrm{Gr}_G$ 的两个投影映射 $\mathrm{pr},m$ 可视为上述对象分别到如下对象的投影:
$$
\sum_{T_1\in\mathrm{Bun}_G(\mathbb D)}(T_1|_{\mathbb D^\circ}=\mathrm{triv}_{\mathbb D^\circ}),\sum_{T_2\in\mathrm{Bun}_G(\mathbb D)}(T_2|_{\mathbb D^\circ}=\mathrm{triv}_{\mathbb D^\circ}).
$$

对于 $F\in\mathsf{Sph}$, 定义 $\widetilde F$ 为 $\mathrm{pr}_2^*q^*F$ 由 $G(\widehat {\mathcal K}) \times G(\widehat {\mathcal K})$ 下降到 $\mathrm{Conv}_G$ 的对象.

> 这里有一个一般的道理, 叫做 "扭曲外张量积" ([朱](Zhu-GrSat.md) A.1.2). 对于某结构群 $K$ 的主丛 $p\colon E \to X$ 以及另一个带 $K$-作用的空间 $Y$, 可定义 $X$ 上的层 $F$ 与 $Y$ 上的 $K$-[等变](等变对象.md)层 $G$ 的扭曲外张量积 $F \operatorname{\widetilde {\boxtimes}} G$, 它是 $X$ 与 $Y$ 的[扭曲乘积](关联丛.md) $X \operatorname{\widetilde {\times}} Y := (E \times Y)/K$ 上的层.

对于 $F_1,F_2\in\mathsf{Sph}$, 定义
$$
F_1 \operatorname{\widetilde {\boxtimes}} F_2 = (\mathrm{pr}^* F_1) \otimes \widetilde {F_2};
$$
$$
F_1 * F_2 = m_* (F_1 \operatorname{\widetilde {\boxtimes}} F_2).
$$

**注** ([朱](Zhu-GrSat.md) 1.6.1, 5.2.2). 在 $\mathbb{C}$ 上, 这个卷积有更简单的描述: 取 $G$ 的极大紧子群 $K$, 则有 $\mathrm{Gr}\simeq\Omega K$, 上述卷积等同于拓扑群 $\Omega K$ 上的卷积.

我们的目标是

**定理**. 上述卷积使得 $\mathsf{Sph}$ 构成刚性张量范畴, 且存在忠实正合的纤维函子 $\mathsf{Sph} \to \mathsf{Vect}$, 在[淡中对偶](淡中对偶.md)下, 将 $\mathsf{Sph}$ 等同于 $\mathsf{Rep}(^LG)$.

$G(\widehat {\mathcal K})_n$ 的群结构
$$
m\colon G(\widehat {\mathcal K})_n \times_{X^n} G(\widehat {\mathcal K})_n \to G(\widehat {\mathcal K})_n
$$
下降为
$$
m\colon \mathrm{Conv}_n := G(\widehat {\mathcal K})_n \times_{G(\widehat {\mathcal O})_n} \mathrm{Gr}_{G,X^n} \to \mathrm{Gr}_{G,X^n}.
$$
对于 $F\in\mathsf{Sph}_n$, 类似地, $\mathrm{pr}_2^* q^*F$ 由 $G(\widehat {\mathcal K})_n \times_{X^n} G(\widehat {\mathcal K})_n$ 下降到 $\mathrm{Conv}_n$, 记之为 $\widetilde {F}$; 定义
$$
F_1 \operatorname{\widetilde \boxtimes} F_2 = (\mathrm{pr}_1^* F_1 \otimes \widetilde {F}_2)[-n];
$$
$$
F_1 * F_2 = m_* (F_1 \operatorname{\widetilde \boxtimes} F_2).
$$

范畴 $\mathsf{Sph}_n$ 是一个分解结构的组成部分, 粗略地说,

- 设 $p \colon \{1,\cdots,n\} \to \{1,\cdots,m\}$ 为分划, 记 $\Delta_p \colon X^m \to X^n$ 为对应的 "对角" 映射, 依同构 ${\mathrm{Gr}_{n}}|_{\Delta_p}\simeq {\mathrm{Gr}_m}$, 有 "直像" 函子
  $$
    \Delta_* \colon \mathsf{Sph}_m \to \mathsf{Sph}_n,
  $$
  且有右伴随 $\Delta^!$.
- 对于分划 $p$, 简单起见设为 $n = n_1 + n_2$, 记 $U_p\subset X^n$ 为对应的开集 (不同组的分量不相等), $\mathsf{Sph}_p$ 为 $U_p$ 上的 $G(\widehat {\mathcal O})_{n_1} \times G(\widehat {\mathcal O})_{n_2}$-等变 D-模范畴. 有两个函子
  $$
    \mathsf{Sph}_n \to \mathsf{Sph}_p \leftarrow \mathsf{Sph}_{n_1} \times \mathsf{Sph}_{n_2},
  $$
  其中第一个函子为 $X^n$ 到 $U_p$ 的限制, 第二个函子为外张量积 $\boxtimes$ 限制到 $U_p$. 各函子均有右伴随.
- 这些函子与 $\mathsf{Sph}_n$ 上的卷积相容.


对于分划 $p\colon \{1,\cdots,n\} \to \{1,\cdots,m\}$, 有卷积映射
$$
m_p \colon \mathrm{Gr}_{p^{-1}(1)} \operatorname{\widetilde \times} \cdots \operatorname{\widetilde \times} \mathrm{Gr}_{p^{-1}(m)} \to \mathrm{Gr}_m,
$$
对于 $A_i\in\mathsf{Sph}_{p^{-1}(i)}$, 定义外卷积
$$
A_1 \operatorname{\boxed{*}} \cdots \operatorname{\boxed{*}} A_m := (m_p)_! (A_1 \operatorname{\widetilde \boxtimes} \cdots \operatorname{\widetilde \boxtimes} A_m);
$$
有同构
$$
A_1 \operatorname{\boxed{*}} \cdots \operatorname{\boxed{*}} A_m \simeq (U_p)_{!*}(A_1\boxtimes\cdots\boxtimes A_m)|_{U_p}.
$$
这称为融合积 (fusion product).

定义内卷积
$$
A_1 \circledast \cdots \circledast A_m := \Delta^! (A_1 \operatorname{\boxed{*}} \cdots \operatorname{\boxed{*}} A_m).
$$

融合积展现出对称性.
例如 $\mathrm{Gr}_2$ 的对称性给出同构
$$
A_1 \circledast A_2 \simeq A_2 \circledast A_1.
$$

~~~

## 群表示的分解范畴

设 $H$ 为任意群. 定义 $H$ 在 $X^n$ 上的 D-模 $F$ 的**分解作用** (factorizable action) 为如下数据:

- 对 $n$ 的任意分划 $p \colon n = n_1+\cdots+ n_m$, 有 $H^m$ 在 $F|_{U_p}$ 上的作用, $U_p$ 是分划 $p$ 给出的开子空间;
- 这些作用关于 $p$ 的细化相容.

例如, $n=3$, $U_p = X^3 \setminus (\Delta_{13} \cup \Delta_{23})$, 有 $H^2$ 在 $F|_{U_p}$ 上的作用,

todo

## Hecke 特征层

回忆 **Hecke 叠** $\mathcal H_n$ 为如下对象的模空间: $X$ 上的两个 $G$-丛, 在 $X$ 的 $n$ 个点之外同构. 有两个投影映射
$$
\mathrm{Bun}_G \overset{\overleftarrow{h_n}}{\longleftarrow} \mathcal H_n \overset{\overrightarrow{h_n}}{\longrightarrow} X^n\times\mathrm{Bun}_G,
$$


## Hecke 范畴的结构

记 $1 \in \mathrm{Gr}_G$ 为 $G(\widehat {\mathcal O})\subset G(\widehat {\mathcal K})$ 对应的点. 记 $\delta_1 := 1_*\mathbb{C}$. 它是 $\mathsf{Sph}$ 上卷积的单位.
$$

$$

取定 $G$ 的[极大环面](极大环面.md) $T$, 单[根](根.md) $\alpha_i$, 单余根 $\check{\alpha_i}$;

$\mathrm{Gr}_G$ 的 $G(\widehat {\mathcal O})$-轨道一一对应于余根格 $X_*(T)$ 的 [$W$](Weyl群.md)-轨道, 记为 $\mathrm{Gr}_G^{\check{\lambda}}$, 其中 $\check{\lambda}$ 为轨道中的支配权.

$\mathsf{Sph}$ 的不可约对象均形如
$$
J(\check\lambda) = j_{!*} \mathcal O,
$$
其中 $j$ 是 $\mathrm{Gr}_G^{\check\lambda}$ 的含入映射, $\mathcal O$ 为平凡 D-模.

注. $\delta_1 = J(0)$.
~~~

## 纤维函子

考虑 $G \hookleftarrow B \twoheadrightarrow T$ 给出的图表
$$
\mathrm{Gr}_G \overset{b}{\leftarrow} \mathrm{Gr}_B \overset{t}{\rightarrow} \mathrm{Gr}_T,
$$
(现在我们将 $T$ 视为 $B$ 的商群而非子群)
定义
$$
F = t_! b^*\colon \mathsf{Sph}\to \mathsf{Sph}_T \simeq\mathsf{Vect}^{X_*(T)}.
$$

### 幺半结构

我们需要上同调函子
$$
H^*\colon \mathsf{Sat}_G \to \mathsf{Vect}_{\overline{\mathbb{Q}}_\ell}
$$
具有幺半结构 ([朱](Zhu-GrSat.md) 5.2.1).

记 $R_G := H^*(\mathbf{B}G)$ 为[分类空间](逆环路空间.md)的上同调环. 对于 $A\in\mathsf{Sat}_G$, $H^*_{L^+ G}(A)$ 是自由 $R_G$-模.

**引理** (5.2.3). 有一系列相容的同构 $H^*_{L^+G} (A_1 * \cdots * A_n) \simeq H^*_{L^+G} (A_1) \otimes_{R_G} \cdots \otimes_{R_G} H^*_{L^+G} (A_n)$. 从而有幺半函子
$$
H^*_{L^+G}\colon \mathsf{Sat}_G \to \mathsf{BiMod}(R_G,R_G).
$$

上述函子复合 "增广" $R_G \to \overline{\mathbb{Q}}_\ell$ 即得 $H^* \colon \mathsf{Sat}_G \to \mathsf{Vect}$.

考虑如下几何对象,

- $L^m G$, 即 "$m$ 阶无穷小圆盘" 上的 $G$-值函数空间, 直观上当 $m$ 越来越大时, $m$ 阶无穷小圆盘越来越大, 趋向于[形式圆盘](形式圆盘.md),
- $L^+G^{(m)} = \ker (L^+G \to L^m G)$, 即 "$m$ 阶平凡" [弧群](弧群.md),
- $\pi_m \colon \mathrm{Gr}^{(m)} = LG / L^+ G^{(m)} \to \mathrm{Gr}$, 它是 $\mathrm{Gr}$ 上的一个 $L^m G$-[主丛](主丛.md).

我们仅说明 $n=2$ 的情形. 假设 $m$ 足够大, 使得 $L^+G$ 在 $\mathrm{Gr}_{\leq \mu_2}$ 上的作用穿过商群 $L^mG$. 此时有
$$
\begin{aligned}
\mathrm{Gr}_{\leq\mu_1} \operatorname{\widetilde \times} \mathrm{Gr}_{\leq\mu_2}
&\simeq
(LG_{\leq\mu_1} \times \mathrm{Gr}_{\leq\mu_2})/L^+G
\\
&\simeq
(\mathrm{Gr}^{(m)}_{\leq\mu_1} \times \mathrm{Gr}_{\leq\mu_2})/L^mG.
\end{aligned}
$$
由等变上同调的 Kunneth 公式,
$$
\begin{aligned}
H^*_{L^+G}(\mathrm{IC}_{\mu_1}) \otimes_{R_G} H^*_{L^+G}(\mathrm{IC}_{\mu_2}) &\simeq H^*_{L^+G\times L^mG}(\pi_m^*\mathrm{IC}_{\mu_1}\boxtimes\mathrm{IC}_{\mu_2})\\
&\simeq H^*_{L^+G}
(\mathrm{IC}_{\mu_1} * \mathrm{IC}_{\mu_2}).
\end{aligned}
$$

### 交换性

接下来说明纤维函子是对称幺半函子.
[朱](Zhu-GrSat.md)指出对于[对称幺半范畴](对称幺半范畴.md)之间的一个幺半函子, 其交换性是[性质而非结构](结构.md), 也即提升为对称幺半函子的方式的空间可缩; 但我不知道如何证明. (对比: 一个幺半范畴构成对称幺半范畴需要额外的结构.)

## 识别对偶群

我们需要说明纤维函子的自同构群
$$
\widetilde G := \operatorname{Aut}^\otimes H^*
$$
是 Langlands 对偶群.

首先说明 $\widetilde G$ 是连通约化群. 这是如下几个命题的应用.

- $\mathsf{Sat}_G$ 作为张量范畴由有限个 $\mathrm{IC}_\mu$ 生成.

**命题** ([Deligne–Milne, Tannakian categories](Deligne–Milne-Tannakian-cat.md) 2.20). 设 $G$ 是域 $k$ 上的仿射群概形. 其如下性质反映于范畴 $\mathsf{Rep}(G)$ 的性质:

- $G$ 有限当且仅当存在 $X\in\mathsf{Rep}(G)$ 使得 $\mathsf{Rep}(G)$ 的任何对象都是某个 $X^n$ 的子商;
- $G$ 是代数的 (意思是 $G$ 对应的 $k$-代数有限生成), 当且仅当 $\mathsf{Rep}(G)$ 作为张量范畴有一个生成元;

**命题** (2.21). 设 $f\colon G\to G'$ 是域 $k$ 上仿射群概形的同态, 记 $f^*\colon \mathsf{Rep}(G') \to \mathsf{Rep}(G)$ 为拉回. 那么

- $f$ 忠实平坦, 当且仅当 $f^*$ 全忠实, 且任何 $f^*X'$ 的子对象均为 $X'$ 的子对象的像.
- $f$ 为闭嵌入, 当且仅当 $\mathsf{Rep}(G)$ 的每个对象均为某个 $f^*X'$ 的子商.

**推论** (2.22). 设 $G$ 是域 $k$ 上的仿射群概形. 那么

- $G$ 连通当且仅当对任意 $X\in\mathsf{Rep}(G)$, 由所有 $X^n$ 的所有子商构成的全子范畴关于张量积**不**封闭.

**命题** (2.23). 设 $G$ 是域 $k$ 上的连通代数群. 那么 $G$ 是约化群当且仅当 $\mathsf{Rep}(G)$ 半单.

下面证明 $\widetilde G$ 的[根数据](根数据.md)与 $G$ 对偶. 

先考虑 $G = T$ 为环面的情形.

- $\mathrm{Gr}_T$ (的既约部分) 为离散点集, 等同于 $X_*(T)$.
- $\mathsf{Sat}_T$ 等价于 $X_*(T)$-[分次](分次对象.md)有限维线性空间范畴;
- $H^*\colon \mathsf{Sat}_T\to \mathsf{Vect}$ 遗忘分次.

对偶环面 $T^\vee$ 的一维不可约表示对应于 $T^\vee$ 的特征, 即 $T$ 的余特征. 所以 $\mathsf{Rep}(T^\vee)$ 等价于 $X_*(T)$-分次有限维线性空间范畴.

为了从环面过渡到整个约化群, 由
$$
\mathrm{Gr}_G \leftarrow \mathrm{Gr}_B \to \mathrm{Gr}_T
$$
构造 "范畴化 Satake 变换"
$$
\mathrm{CT}\colon \mathsf{Sat}_G \to \mathsf{Sat}_T;
$$

- 记 $S_\lambda$ 为点 $\lambda\in X_*(T)$ 在上图中对应 $\mathrm{Gr}_G$ 的子空间, 同时也是 $t^\lambda$ 在 $LU\subset LG$ 作用下的轨道 ($U$ 为 $B$ 的幂幺根). 这在 Mirković–Vilonen 理论中称为 $\mathrm{Gr}_G$ 上的 "半无限轨道".
- $S_\lambda$ 的闭包是 $S_{\leq \lambda} = \bigcup_{\lambda'\leq\lambda} S_{\lambda'}$.
- 若 $t^\lambda\in\mathrm{Gr}_{\leq\mu}$, 则 $S_{\lambda}\cap\mathrm{Gr}_{\mu}$ 非空, $\dim (S_{\lambda}\cap\mathrm{Gr}_{\leq\mu}) = \langle \rho,\lambda + \mu\rangle$.
- 对于 $A\in\mathsf{Sat}_G$, 其在 $\mathsf{Sat}_T$ 中的推拉 $t_!b^* A$ 的 $\lambda$ 分量为 $H_c^*(S_\lambda,A)$, 且聚集在 $\langle 2\rho,\lambda\rangle$ 次.
- $H^* \simeq\mathrm{CT} :=\bigoplus_\lambda H^*_c(S_{\lambda},-)\colon \mathsf{Sat}_G\to\mathsf{Vect}$.
- 这给出群同态 $T^\vee\simeq\widetilde T \to \widetilde G$, 给出 $\widetilde G$ 的一个极大环面. 于是 $\widetilde G$ 的权格与余权格对偶于 $G$.

最后看单根和单余根. 一个权 $\lambda\in X^*(T^\vee)$ 落在正根生成的半群中, 当且仅当存在最高权表示 $L_\mu$ 使得 $\mu - \lambda$ 出现在其权中, 即存在 $\mu$ 使得 $t^{\mu-\lambda}\in\mathrm{Gr}_{\leq\mu}$, 这等价于 $\lambda$ 是 $G$ 的正余根的和.
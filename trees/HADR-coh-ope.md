---
title: HADR - 凝聚算畴
tag: 讲稿
author: [SimplicialCat](SimplicialCat.md)
---

## 凝聚算畴

凝聚算畴是使得其[代数上的模](OpAlgMod.md)这一概念具有良好表现 (例如具有张量积) 的算畴.

### 半惰性映射

设 $f\colon X\to Y$ 是 $\mathcal O$ 中的态射.

**定义**. 称 $\Gamma$ 中的态射为**半惰性**映射, 是指每个元素的像至多含一个元素.

**定义** ([Lurie HA](LurieHA.md) 3.3.1.1). 称 $\mathcal O$ 中的态射 $f\colon X\to Y$ 为**半惰性**映射, 如果
- $f$ 在 $\Gamma$ 中的像是半惰性映射;
- 对每个惰性映射 $g\colon Z\rightarrowtail Y$, 若 $gf$ 在 $\Gamma$ 中的像是惰性映射, 则 $gf$ 是惰性映射.

**注**. 半惰性映射中有一种情形会反复用到: 恰有一个元素的像为空, 其余元素的像为单元集.
这时 $f$ 忘掉了一个分量. 它半惰性, 但不惰性.

### 延拓

设 $f\colon X\leadsto Y$ 是活性映射, 其中 $X\in\mathcal O_{\langle n\rangle}$, $Y\in\mathcal O_{\langle m\rangle}$.
由 Segal 条件, 对任意颜色 $Y_0\in\mathcal O_{\langle 1\rangle}$, 可以把 $Y_0$ 加入 $Y$ 中, 得到对象 $Y\oplus Y_0\in\mathcal O_{\langle m+1\rangle}$.
记 $c\colon Y\oplus Y_0\to Y$ 为把额外分量忘掉的半惰性映射.

**定义** (延拓). $f$ 的**延拓** (extension) 为活性映射
$$
f^{+}\colon X\leadsto Y\oplus Y_0\,(Y_0\in\mathcal O_{\langle 1\rangle}),
$$
使得 $c\circ f^{+}=f$. 记 $f$ 的延拓构成的生象为 $\operatorname{Ext}(f)$.

**例**. [$\mathbb E_k$](En-算畴.md) 中的活性运算 $f\colon \langle 1\rangle\leadsto\langle m\rangle$ 可视为 $\mathbb{R}^k$ 中的 $m$ 个互异的点. $f$ 的延拓 $f^+\colon \langle 1\rangle\leadsto\langle m+1\rangle$ 是再加入一个和 $m$ 个点都互异的点, 故 $\operatorname{Ext}(f) = \mathbb{R}^k\setminus m$.

**定义** (链上的延拓) ([Lurie HA](LurieHA.md) 3.3.1.4). 设
$$
\sigma\colon X_0\overset{f_1}{\leadsto}X_1\overset{f_2}{\leadsto}\cdots\overset{f_n}{\leadsto}X_n
$$
为活性映射的链, 其中 $X_i\in\mathcal O_{\langle m_i\rangle}$, 并设 $S\subset\{0,1,\dots,n\}$ 向下封闭, 即 $i\in S$ 蕴含 $i-1\in S$.
定义生象 $\operatorname{Ext}(\sigma,S)$ 如下. 其对象为
- 对每个 $i$, 一个对象 $X_i'\in\mathcal O_{\langle m_i+\epsilon_i\rangle}$, 其中 $i\in S$ 时 $\epsilon_i=1$, 否则 $\epsilon_i=0$;
- 半惰性映射 $c_i\colon X_i'\to X_i$, 当 $i\in S$ 时恰忘掉一个位于指标 $a_i$ 的分量, 当 $i\notin S$ 时是等价;
- 活性映射 $f_i'\colon X_{i-1}'\leadsto X_i'$, 使得 $c_i f_i'=f_i c_{i-1}$;

并要求当 $0<i\in S$ 时, 底映射 $\varphi_i\colon\langle m_{i-1}+1\rangle\to\langle m_i+1\rangle$ 在指标 $a_{i-1}$ 处的子集 $S_{a_{i-1}}$ 包含 $a_i$.

**注**. 最后一条把各步新增的分量接成一条线: 第 $i-1$ 步新增的分量被 $f_i'$ 送到第 $i$ 步新增的分量上.
$S$ 的向下封闭保证这条线不断开. 它对应原文的条件 (c).

**注**. 当 $S=\{0\}$ 时, $\operatorname{Ext}(\sigma,S)$ 就是 $\operatorname{Ext}(f_1)$.
当 $S=\{0,1\}$ 时, 它记录的是同时给 $f_1$ 与 $f_2$ 添一个新输入, 并让 $f_2$ 把这两个新输入对接起来的数据.

### 凝聚性

**定义** (凝聚算畴) ([Lurie HA](LurieHA.md) 3.3.1.9). 称满足如下条件的算畴 $\mathcal O\to\Gamma$ 为**凝聚算畴** (coherent operad):
1. $\mathcal O$ 含幺, 即 $\mathcal O_{\langle 0\rangle}$ 中唯一的对象 $\varnothing$ 是[零对象](零对象.md);
2. 颜色范畴 $\mathcal O_{\langle 1\rangle}$ 是[生象](生象.md);
3. 对任意活性映射 $X\overset{f}{\leadsto}Y\overset{g}{\leadsto}Z$, 典范的方块
  $$
    \begin{array}{ccc}
    \operatorname{Ext}(\mathrm{id}_Y) & \to & \operatorname{Ext}(g)\\
    \downarrow & & \downarrow\\
    \operatorname{Ext}(f) & \to & \operatorname{Ext}(gf)
    \end{array}
  $$
  是生象的[推出](推出.md)方块.

**注**. 方块中的映射来自两种操作: 把 $\mathrm{id}_Y$ 的延拓与 $f$ 或 $g$ 复合, 以及把一段的延拓扩张到复合 $gf$ 上.

**注** ([Lurie HA](LurieHA.md) 3.3.1.11). 条件 (3) 只需在 $Z$ 是颜色, 即 $g$ 的靶为颜色的情形检查.

**注** ([Lurie HA](LurieHA.md) 3.3.1.5). 当颜色范畴是生象时, $\operatorname{Ext}(\sigma,S)$ 中每条态射都是等价, 因此 $\operatorname{Ext}(\sigma,S)$ 本身是生象, 条件 (3) 中的推出是生象的推出.

**例**. 取 $\mathcal O=\Gamma$, 则 $\mathcal O$ 凝聚.
事实上, 对活性映射 $f\colon X\leadsto Y$, 延拓等同于选择 $X$ 的一个分量来吸收新输入, 故 $\operatorname{Ext}(f)$ 等同于 $X$ 的分量集合.
条件 (3) 的方块于是退化为有限集的分解, 它是推出方块.

**例**. $\mathbb E_0$ 凝聚.
它的态射给每个元素指定至多一元的子集, 所以条件 (3) 中的方块可以等同于有限集的方块, 直接验证即可.

**注** ([Lurie HA](LurieHA.md) 3.3.1.16). 凝聚性可以按颜色逐个检查: 把算畴拆解为颜色上的一族算畴之后, 它凝聚当且仅当族中每个算畴凝聚.
拆解与汇编的记号见[拆解与汇编](HADR-disint-assem.md).

**定理** ([Lurie HA](LurieHA.md) 5.1.1.1). 对每个 $k\geq 0$, 小 $k$ 方块算畴 $\mathbb E_k$ 凝聚.

**注** (与平坦性和模的关系). 凝聚性有一条等价的刻画: 半惰性映射构成的模式沿源点投影平坦 ([Lurie HA](LurieHA.md) 3.3.2.2).
这与 [Blom–Loubaton–Ruit](BlomLoubatonRuitAlgd.md) 中的平坦性判据属于同一类 Conduché 型条件, 但作用在不同的纤维化上.
凝聚性的用处在于模: 当 $\mathcal O$ 凝聚时, 代数 $A$ 上的模构成 $\mathcal O$ 上的算畴, 于是可以谈论模的张量积 ([Lurie HA](LurieHA.md) 3.3.3.9).

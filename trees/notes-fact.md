---
title: 范畴的分解同调
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

参考文献: [](AyalaFrancisRozenblyumI.md)

合集: [](mfd-cat.md)

上一集: [](strat-cat.md)

## 1 关于条纹层 (striation sheaves) 的回顾

本节是对 [AFR](AyalaFrancisRozenblyumStrat.md) 的回顾, 参见[相关笔记](strat-cat.md).

### 1.1 分层空间

本文的 "分层空间" 特指一类具有良好微分拓扑行为的分层空间, 它是光滑流形在分层空间理论中的推广; 它的每一层为光滑流形, 层与层相接处还有额外的相容性. 我们不详细解释定义, 只陈述其性质:

- 分层空间被形如 $\mathbb{R}^i \times \mathbb{R}_{\geq 0}^j \times C(Z)$ 的基本开集 (又叫**奇点类型**) 覆盖, 其中 $Z$ 是更低维的分层空间;
- 分层空间的态射 $f\colon C(X)\to C(Y)$ (锥点为单独一层, 锥点打到锥点) 给出链环之间的 "切映射" $Df \colon X \to Y$.
- 事实上 (后面将介绍), 分层空间的 $(\infty,1)$-范畴 $\mathsf{Strat}$ 通过[出路范畴](出路范畴.md)函子 $\mathsf{Exit}\colon \mathsf{Strat}\to\mathsf{Cat}$ [全忠实](全忠实函子.md)地嵌入范畴的范畴, 从而分层空间的态射 $X\to Y$ 等同于其出路范畴之间的函子 $\mathsf{Exit}(X)\to\mathsf{Exit}(Y)$.

光滑流形的 $(1,1)$-范畴是分层空间范畴的全子范畴
$$
\mathsf{Mfd}\hookrightarrow\mathsf{Strat}.
$$

分层空间有几类重要的态射:

- **开嵌入**来自拓扑空间的开嵌入;
- **加细**在拓扑空间上为同胚, 只是可能加入新的分层;
- **纤维丛**要求在某个开覆盖的每片上为乘积;
- **可构造丛** (constructible bundle) 是一个归纳定义的概念, 对于态射 $f\colon X\to Y$, 要求对 $Y$ 的每一层 $Y_q$,
  - $f^{-1}Y_q \to Y_q$ 为纤维丛,
  - $\operatorname{Link}_{f^{-1}Y_q}(X)\to f^{-1}Y_q\times_{Y_q}\operatorname{Link}(Y)$ 为可构造丛.
- **紧合可构造丛**是满足紧集的逆像为紧集的可构造丛.

回忆, [单纯形](单纯形范畴.md)可实现为[分层空间](分层.md), 即有函子
$$
\Delta\to \mathsf{Strat},\,[n]\mapsto\Delta^n.
$$
其中 $\Delta^n$ 是通过迭代分层空间上的[锥](锥(拓扑学).md)操作定义的.

分层空间的范畴 $\mathsf{Strat}$ 一开始是 $(1,1)$-范畴, 但实际上它可[充实](充实范畴.md)于[生象](Ani.md), 即构成 $(\infty,1)$-范畴. 它可由如下的 Kan 复形充实结构 $\underline{\operatorname{Hom}}_{\mathsf{Strat}}$ 定义:
$$
\underline{\operatorname{Hom}}_{\mathsf{Strat}}(X,Y)[n] :=\operatorname{Hom}_{\mathsf{Strat}_{/\Delta^n}}(X\times\Delta^n, Y\times\Delta^n).
$$
它还有一个性质: $(\infty,1)$-范畴版本的 $\mathsf{Strat}$ 是 $(1,1)$-范畴版本关于所有投影 $X\times\mathbb{R}\to X$ 的[局部化](局部化(范畴论).md). 后文中我们将**永远使用 $(\infty,1)$-范畴版本** (用 $\operatorname{Hom}_{\mathsf{Strat}}$ 表示态射生象), 所以无需区分记号.

### 1.2 出路范畴

**命题**.
"出路范畴" 函子
$$
\mathsf{Exit}\colon \mathsf{Strat}\hookrightarrow \mathsf{sAni},\, X\mapsto ([n]\mapsto\operatorname{Hom}_{\mathsf{Strat}}(\Delta^n, X))
$$
是[全忠实函子](全忠实函子.md), 且其像落在范畴 (即[完备 Segal 生象](范畴对象.md)) 的范畴 $\mathsf{Cat}\hookrightarrow\mathsf{sAni}$ 中.


### 1.3 条纹层

回忆 $\mathsf{Strat}$ 有如下的余极限, 称为**特殊余极限**:

- 开覆盖;
- 爆破 (详见[上一集](strat-cat.md));
- 迭代锥 (详见[上一集](strat-cat.md));
- [泛等性](泛等性.md)

$$
\begin{array}{ccc}
\Delta^{ \{0 < 2\}} + \Delta^{ \{1 < 3\}} & \rightarrow & \Delta^{\{0 < 1 < 2 < 3\}} \\
\downarrow &  & \downarrow \\
{*} + {*} & \rightarrow & {*}.
\end{array}
$$

由出路范畴函子 $\mathsf{Exit}\colon \mathsf{Strat} \hookrightarrow \mathsf{Cat}$, 我们又可将范畴变为 $\mathsf{Strat}$ 上的预层. 我们甚至可以写出判断这样一个预层何时来自范畴的条件.

**定义**. **条纹层** (striation sheaf) 的范畴
$$
\mathsf{Stri}\hookrightarrow \mathsf{Psh}(\mathsf{Strat})
$$
是 $\mathsf{Strat}$ 上将前述 "特殊余极限" 变为极限图的预层构成的全子范畴.

当然, 条纹层不构成意象; 事实上这个 "层条件" 不构成 Grothendieck 拓扑. (毕竟 $\mathsf{Stri} \simeq \mathsf{Cat}$ 而 $\mathsf{Cat}$ 不是 $(\infty,1)$-意象.)

**定理**. 出路范畴函子 $\mathsf{Exit}\colon \mathsf{Strat}\to \mathsf{Cat}$ 对应的[脉](脉.md)函子 $\mathsf{Cat}\to\mathsf{Psh}(\mathsf{Strat})$ 将 $\mathsf{Cat}$ 等同于全子范畴 $\mathsf{Stri}$.

**定义**. 通过[分类空间](分类空间.md)的观念, 我们定义如下条纹层, 从而定义相应的范畴:

- $\mathsf{Bun}$ 分类可构造丛, 即 $\mathsf{Bun}(K)$ 是 $K\times\Delta^\bullet$ 上的可构造丛集合构成的 Kan 复形表现的生象;
- $\mathsf{cBun}$ 分类紧合可构造丛;
- $\mathsf{Exit}$ 分类带一个截面的可构造丛.

直观上, 两个范畴 $\mathsf{Bun}$, $\mathsf{Exit}$ 可描述如下:

- $\mathsf{Bun}$ 的对象是分层空间, 态射是 $\Delta^1$ 上的可构造丛 (注意, 态射不仅是分层空间之间的态射, 还包含了 "活性配边", 参见[流形图的笔记](notes-manifold-diagrams.md));
- $\mathsf{Exit}$ 的对象是分层空间带一个指定的点, 态射是 $\Delta^1$ 上的可构造丛带一个截面;

**命题**. 每个可构造丛 $X\to K$ 给出函子 $\mathsf{Exit}(K) \to\mathsf{Bun}$ 以及 $\mathsf{Exit}(X)\to\mathsf{Exit}$; 有拉回图
$$
\begin{array}{ccc}
\mathsf{Exit}(X) & \rightarrow & \mathsf{Exit} \\
\downarrow &  & \downarrow \\
\mathsf{Exit}(K) & \rightarrow & \mathsf{Bun}.
\end{array}
$$

特别地, $K = {*}$ 时, 我们知道 $\mathsf{Exit}(X)$ 就是 $\mathsf{Exit}\to\mathsf{Bun}$ 在对象 $X\in\mathsf{Bun}$ 处的纤维.

## 2 切结构

### 2.1 切丛

记 $\mathsf{Vect}^{\mathrm{inj}}$ 为实线性空间, 线性单射以及线性单射中的同伦构成的 $(\infty,1)$-范畴. 其中 $\operatorname{Hom}(\mathbb{R}^i,\mathbb{R}^j)\simeq\mathrm{O}(j) / \mathrm{O}(j-i)$.

每个分层空间都给出一个函子
$$
T_X\colon \mathsf{Exit}(X) \to \mathsf{Vect}^{\mathrm{inj}},
$$
称为其**切丛**. 事实上该构造关于 $X$ 有很好的函子性, 以至于可以写成 "万有出路范畴" 出发的函子
$$
T\colon \mathsf{Exit} \to \mathsf{Vect}^{\mathrm{inj}}.
$$

### 2.2 标架

**定义**. 一种**切结构**是一个函子
$$
\mathcal B \to \mathsf{Vect}^{\mathrm{inj}}.
$$
我们常将其简记为 $\mathcal B$.

**定义**. 设 $X$ 为分层空间, $\mathcal B$ 为切结构. 定义 $X$ 上的 $\mathcal B$-结构为提升
$$
\begin{array}{ccc}
 &  & \mathcal B \\
 & \nearrow & \downarrow \\
\mathsf{Exit}(X) & \underset{T_X}{\rightarrow} & \mathsf{Vect}^{\mathrm{inj}}.
\end{array}
$$
定义 $\mathcal B$-分层空间的范畴为
$$
\mathsf{Bun}^{\mathcal B} = \pi_* T^* \mathcal B \to \mathsf{Bun},
$$
其中 $\pi_*$ 表示沿 $\pi \colon \mathsf{Exit}\to\mathsf{Bun}$ 的[依值积](依值积.md).

**定义**. **变标架切结构** (vari-framing) 是函子
$$
\mathrm{vfr}\colon \mathbb{N}\to\mathsf{Vect}^{\mathrm{inj}},\,i\mapsto\mathbb{R}^i.
$$
这里 "变" (vari-) 意指跨分层时切丛维数改变.
另外, 对于自然数 $n$, 定义 $n$-变标架切结构为其限制
$$
\mathrm{vfr}_n\colon [n]\to\mathsf{Vect}^{\mathrm{inj}},\,i\mapsto\mathbb{R}^i.
$$

**例**. 考虑闭圆盘 $D^n$, 其边界划分为两个 $n-1$ 维圆盘, 递归向下. 它上面有一个 $n$-变标架切结构. 这可以理解为从 $*$ 反复作纬悬 $X\mapsto SX$ 得到.

**定义**. 变标架分层 $n$-流形的范畴为
$$
\mathsf{Mfd}_n^{\mathrm{vfr}} := \mathsf{Bun}^{\mathrm{vfr}_n}.
$$

## 3 圆盘

### 3.5

定义范畴 $\mathsf{cDisk}_n^{\mathrm{vfr}}$, 其对象简单地说就是由有限个圆盘粘起来的图案.

### 3.8 胞腔几何实现

定义函子
$$
\langle - \rangle \colon \Delta^{\mathrm{op}} \to \mathsf{cDisk}_1^{\mathrm{vfr}},
$$
然后归纳地定义**胞腔几何实现** ([AFR](AyalaFrancisRozenblyumI.md) 定义 3.53)
$$
\langle - \rangle \colon \Theta_n^{\mathrm{op}} \to \mathsf{cDisk}_n^{\mathrm{vfr}}.
$$

## 4 分解同调

### 4.2

**引理**. 函子 $\Theta_n^{\mathrm{op}} \to \mathsf{cDisk}_n^{\mathrm{vfr}}$ 的[脉](脉.md)
$$
\mathfrak C \colon (\mathsf{cDisk}_n^{\mathrm{vfr}})^{\mathrm{op}} \to \widehat {\Theta}_n
$$
落在全子范畴 $\mathsf{Cat}_{(\infty,n)}$ 中.

### 4.3

**定义** (4.13). 分解同调为函子
$$
\int\colon \mathsf{Cat}_{(\infty ,n)}\to\mathsf{Fun}(\mathsf{cDisk}_n^{\mathrm{vfr}},\mathsf{Ani})\hookrightarrow\mathsf{Fun}(\mathsf{cMfd}_n^{\mathrm{vfr}},\mathsf{Ani}),
$$
其中

- 第一步为沿 $\Theta_n^{\mathrm{op}}\hookrightarrow \mathsf{cDisk}_n^{\mathrm{vfr}}$ 的右 Kan 扩张;
- 第二步为沿 $\mathsf{cDisk}_n^{\mathrm{vfr}} \hookrightarrow \mathsf{cMfd}_n^{\mathrm{vfr}}$ 的左 Kan 扩张.

具体地, 对于 $(\infty,n)$-范畴 $\mathcal C$ 与标架分层流形 $M$, 分解同调可写为
$$
\int_M \mathcal C = \operatorname{colim}_{D\to M}\operatorname{Hom}_{\mathsf{Cat}_{(\infty,n)}}(\mathfrak C(D),\mathcal C).
$$


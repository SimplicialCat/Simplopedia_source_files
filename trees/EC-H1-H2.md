---
title: 平展上同调讨论班 : 非 Abel 上同调, 主齐性空间与 Brauer 群
tag: 讲义
author: [SimplicialCat](SimplicialCat.md)
---

这是 2025 年秋季平展上同调讨论班的一篇讲稿. 参考 [Milne](MilneEC.md).

- 第一部分 (主齐性空间与 $H^1$) 是第 III.4 节,
- 第二部分 (Brauer 群与 $H^2$) 是第 IV 章.

## TODO

第一次讲之后留下的漏洞:

- [x] 没能写出 [Čech 上圈](非交换Čech上同调.md)的[单纯同伦](单纯同伦.md)对应的具体条件. ([单纯同伦](单纯同伦.md)页面写出了单纯同伦的前几个分量以及具体条件, [非交换 Čech 上同调](非交换Čech上同调.md)页面写出了具体到 Čech 上圈的情形.)
- [ ] 没有说清具体的 $1$-景上[非交换 Čech 上同调](非交换Čech上同调.md)与真正的上同调的关系.
- [ ] 没证明 Zariski 局部自由 $\mathcal O_X$-模到平坦局部自由 $\mathcal O_X$-模的拉回函子反映同构 ([Milne LEC](MilneLEC.md) 定理 11.4 证明中略去的部分).
- [ ] 有限群 $G$ 的[主丛](主丛.md)与[Galois 覆叠](Galois覆叠.md), [平展基本群](平展基本群.md)的关系.

## 主齐性空间与一阶上同调

本节的目标是

- 说明一般的 $1$ 阶[非 Abel 上同调](非Abel上同调.md)与[主齐性空间](主丛.md) (principal homogeneous space) 的关系;
- 说明系数为 $\mathrm{GL}_n$ 的 $1$ 阶[平展上同调](平展上同调.md)与[向量丛](向量丛.md)的关系;
- 介绍 [Kummer 理论](Kummer理论.md).

### 非 Abel 上同调: 一般理论

某种意义上, 非 Abel 上同调是比传统的 "Abel" 上同调更简单的概念. 它的简单在于定义的简单, 而不简单在于没有什么计算的手段.

[上同调](上同调.md)页面讨论了上同调的一般理论. 数学上所有名为 "某某上同调" 的概念, 无论 Abel 或者非 Abel, 都是如下概念的特殊情况.

**定义** (上同调). 设 $\mathcal C$ 为 [$\infty$-范畴](无穷范畴.md), $X,A$ 是 $\mathcal C$ 的对象; 定义 $X$ 的 $A$-系数 $0$ 阶**上同调**为映射空间的截断
$$
H^0(X,A) := \pi_0 \operatorname{Hom}_{\mathcal C}(X,A).
$$
对于正整数 $n$, 对象 $X,A$, 若 $A$ 具有 $n$ 阶[逆环路空间](逆环路空间.md) $\mathbf{B}^n A$, 则定义 $X$ 的 $A$-系数 $n$ 阶上同调为
$$
H^n(X,A) := H^0(X,\mathbf{B}^n A) = \pi_0\operatorname{Hom}_{\mathcal C}(X,\mathbf{B}^n A).
$$


由上述讨论, 我们可定义群 $G$ 系数的 $1$ 阶上同调, 因为 $G$ 具有一阶[逆环路空间](逆环路空间.md) $\mathbf{B}G$, 上同调 $H^1(X,G)$ 就定义为
$$
H^1(X,G) := \pi_0\operatorname{Hom}(X,\mathbf{B}G).
$$

一般地, 要计算空间 $X$ 到空间 $M$ 的映射空间, 若能将 $M$ 表示为某类对象的[分类空间](分类空间.md), 则要计算的东西可以转化为 $X$ 上的这类对象的**丛**. 群 $G$ 的[逆环路空间](逆环路空间.md) $\mathbf{B}G$ 正是 $G$-[主齐性空间](主丛.md)的**群胚** (因为 "任何 $G$-主齐性空间都同构于 $G$ 本身, 而这个对象的自同构群就是 $G$"), 所以毫不奇怪地, 计算 $G$-系数 $1$ 阶非 Abel 上同调就是计算 $G$-[主丛](主丛.md).

### 平坦景上的主齐性空间

[主丛](主丛.md)页面介绍的主丛的一般理论. 现在我们将它具体到概形的平坦景上.

考虑概形 $X$ 上的平坦局部有限型群 $G$. 以下所有概形均为 $X$-概形.

在概形的平坦景上讨论, 重要的一点是局部有限表现概形的范畴[米田嵌入](米田嵌入.md)到平坦景上的层范畴, 这称为 Grothendieck 拓扑的[次典范性](次典范拓扑.md). 对概形的许多讨论都可以推广到平坦景上的层.

#### 局部平凡性

首先, 我们看主丛的局部平凡性如何表现在平坦景上. (回忆抽象的主丛的局部平凡性不过是因为主丛平凡化自身.)

**命题**. 设群 $G$ 作用于概形 $S$. 如下条件等价:

1. $S$ 忠实平坦, 局部有限型, 且 $S\times_X G\to S\times_X S$ 为同构, 其中两个分量分别为作用映射和投影映射.
2. 存在平坦覆盖 $\{U_i \to X\}$, 使得 $S_{U_i}$ 带有的 $G_{U_i}$-作用等同于 $G_{U_i}$ 在自身上的作用.

**证明**.

- 1 $\Rightarrow$ 2. 取覆盖为 $S\to X$ 即可.
- 2 $\Rightarrow$ 1. 令 $U=\bigsqcup_i U_i$, 则 $U$ 忠实平坦, 局部有限型, 且 $S_U$ 作为 $G_U$-作用同构于 $G_U$. 这意味着
  $$
    (S\times_X G)_U \to (S\times_X S)_U
  $$
  为同构. 沿 $U\to X$ 使用下降理论, 可知
  $$
    S\times_X G\to S\times_X S
  $$
  亦为同构.

#### 可表性

平坦景上的层不一定可表为概形. 但是对于平坦景上的 $G$-主齐性空间 $S$, 由于我们**已知**其被一个有限型忠实平坦映射拉回之后同构于 $G$, 故有较大的希望应用概形的 fpqc 下降 ([Milne](MilneEC.md) 定理 I.2.23) 证明 $S$ 可表. 这件事在如下情形中成立 ([Milne](MilneEC.md) 定理 III.4.3):

1. $G$ 在 $X$ 上仿射;
2. $G$ 在 $X$ 上光滑, 分离, 且 $X$ 的维数 $\leq 1$;
3. ...

#### 上圈

一般而言, [上同调](上同调.md)类的[表现](数学对象的表现.md)称为上圈. 对于一阶非 Abel 上同调, 有一种重要的表现称为 [Čech 上圈](非交换Čech上同调.md).

[非交换 Čech 上同调](非交换Čech上同调.md)页面介绍了 Čech 上圈的抽象陈述, Čech 上同调与真正的上同调的关系, 并讨论了 $0$-截断情形.

### Zariski, 平展与平坦的比较

见 [Zariski, 平展与平坦的比较](Zar-fl-et.md).

### 应用: Kummer 理论与 Artin–Schreier 理论

- [Kummer 理论](Kummer理论.md)
- [Artin–Schreier 理论](Artin–Schreier理论.md)

## Brauer 群与二阶上同调

本节介绍概形 $X$ 的 Brauer 群与 $H^2(X,\mathbb G_m)$ 的关系; $X$ 上的 [Azumaya 代数](Azumaya代数.md)的相似等价类 ([Morita 等价](Morita等价.md)类) 给出 $H^2(X,\mathbb G_m)$ 的元素.

假设读者了解域 $k$ 的 Brauer 群, 即 $k$ 上的[中心单代数](中心单代数.md)的相似类关于张量积构成的群.

### 局部环的 Brauer 群

设 $R$ 为[局部环](局部环.md).

相比于一个 [Azumaya 代数](Azumaya代数.md)具体是什么, 我们其实更加关心 Azumaya 代数的**自同构群**是什么. 因为我们最后关心的是这种对象的**丛的同构类**集合; 而任何一个丛都关联于一个群的[主丛](主丛.md), 这个群正是纤维的**自同构群**. 所以如下的命题是尤其重要的. 但目前我不知道如何更好地理解这个命题.

**命题** ([Skolem–Noether 定理](Skolem–Noether定理.md), [Milne](MilneEC.md) 命题 IV.1.4). 设 $A$ 是 $R$ 上的 [Azumaya 代数](Azumaya代数.md). 则 $A$ 作为 $R$-代数的自同构均为内自同构, 即形如 $a\mapsto uau^{-1}$, 其中 $u\in A$ 为可逆元.

**命题** ([Milne](MilneEC.md) 推论 IV.1.5). $M_n(R)$ 作为 $R$-代数的自同构群是 $\mathrm{PGL}_n(R) = \mathrm{GL}_n(R) / R^*$.

### Azumaya 代数与概形的 Brauer 群

[Azumaya 代数](Azumaya代数.md) 页面介绍了 Azumaya 代数的基本性质:

- 概形上的 Azumaya 代数是[平展](平展景.md)局部矩阵代数.
- 概形上的 Azumaya 代数的自同构在 **Zariski 局部**为内自同构 ([Skolem–Noether定理](Skolem–Noether定理.md)).
- 概形上的 Azumaya 代数的**同构类**由 $H^1(X_{\mathrm{\'et}},\mathrm{PGL}_n)$ 分类.
- 群同态 $\mathrm{GL}_n \to \mathrm{PGL}_n$ 给出的[上同调](非Abel上同调.md)的映射 $H^1(X_{\mathrm{\'et}},\mathrm{GL}_n) \to H^1(X_{\mathrm{\'et}},\mathrm{PGL}_n)$ (向量丛 $\to$ Azumaya 代数) 将向量丛 $E$ 对应到 $\operatorname{End}(E)$.

[Morita 等价](Morita等价.md)页面介绍了 Morita 等价的等价刻画, 由此可以证明

- [Azumaya 代数](Azumaya代数.md)的**相似**等同于 [Morita 等价](Morita等价.md), 也即模范畴的等价.

故

- Azumaya 代数的**相似类**含于 $H^2(X,\mathbb G_m)$, 即[可逆线性范畴层](可逆线性范畴层.md)的等价类.

#### 正合列

**命题**. 对概形 $X$, 有带基点集合的正合列
$$
\cdots\to H^1(X_{\mathrm{\'et}},\mathrm{GL}_n) \to H^1(X_{\mathrm{\'et}},\mathrm{PGL}_n) \overset{d}{\to} H^2(X_{\mathrm{\'et}},\mathbb G_m),
$$
其中 $d$ 将 Azumaya 代数 $A$ 的**同构类**对应到 $A$ 的**相似类**.
映射 $d$ 有两种具体写出的方法:

- 通过 [Čech 上同调](Čech上同调.md), 设 $H^1(X_{\mathrm{\'et}},\mathrm{PGL}_n)$ 的一个元素由覆盖 $U$ 上的上圈 $\alpha\colon U\times_X U\to \mathrm{PGL}_n$ 表现, 通过细化覆盖 (即取覆盖 $U'\to U$), 不妨设 $\alpha$ 可提升至 $\alpha\colon U\times_X U \to \mathrm{GL}_n$, 那么 $d$ 将这个上圈映射到 $\mathbb G_m$-系数的 $2$ 阶 Čech 上圈
$$
a = \alpha\mathrm{pr}_{23}\cdot (\alpha\mathrm{pr}_{13})^{-1} \cdot \alpha\mathrm{pr}_{12} \colon U\times_X U \times_X U \to \mathbb G_m\subset\mathrm{GL}_n.
$$
- 通过 [Azumaya 代数](Azumaya代数.md)表现的[束](束.md) (gerbe) $F_A$.
对 $U\in X_{\mathrm{\'et}}$, $F_A(U)$ 是[代数](结合代数.md)同构 $A_U \simeq \operatorname{End}(E)$ ($E$ 为 $U$ 上的向量丛) 构成的 $1$-群胚. 由于 Azumaya 代数[平展](平展景.md)局部同构于矩阵代数, $F_A$ 局部非空, 构成一个由群 $\mathbb G_m$ 控制的[束](束.md):
$$
\begin{aligned}
    \operatorname{Aut}_{F_A(U)}(x)&\simeq \operatorname{Aut}_{\operatorname{Aut}(\operatorname{End}(E))}(\mathrm{id})\\
    &\simeq Z(\operatorname{End}(E))\simeq \mathbb G_m(U),
\end{aligned}
$$
(其中 $Z$ 表示代数的[中心](中心.md)) 从而 (由[束](束.md)与[上同调](上同调.md)的关系) 定义了 $H^2(X_{\mathrm{\'et}},\mathbb G_m)$ 的元素; 并且它平凡当且仅当 $F_A$ 有[整体](整体截面.md)元素, 即 $A$ 在整体上同构于一个向量丛的自同态代数.

#### 挠

下图中每行每列均为群的[短正合列](群短正合列.md):
$$
\begin{array}
{ccccc}
\mu_n & \to & \mathbb G_m & \to & \mathbb G_m\\
\downarrow & & \downarrow & & |\!| \\
\mathrm{SL}_n & \to & \mathrm{GL}_n & \to & \mathbb G_m\\
\downarrow & & \downarrow & & \\
\mathrm{PGL}_n & = & \mathrm{PGL}_n
\end{array}
$$

比较第一列与第二列的上同调长正合列, 可得
$$
\begin{array}
{ccc}
H^1(X,\mathrm{PGL}_n) & \overset{\mathrm{id}}{\to} & H^1(X,\mathrm{PGL}_n)\\
\downarrow & & \downarrow \\
H^2(X,\mu_n) & \to & H^2(X,\mathbb G_m).
\end{array}
$$
而 $H^2(X,\mu_n)$ 是 $n$-挠群, 故同态 $H^1(X,\mathrm{PGL}_n) \to H^2(X,\mathbb G_m)$ 的像是 $n$-挠群.
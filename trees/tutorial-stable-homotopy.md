---
title: 稳定同伦论
tag: 教程
author: [SimplicialCat](SimplicialCat.md)
---

本文的目的是, 以尽可能少的前置知识, 解释[谱](谱.md) ([稳定 $\infty$-范畴](稳定无穷范畴.md)) 这一概念的意义和必要性, 从而使读者能够接受其抽象定义. 为此我试图解释[稳定化](稳定化.md)的动机, 也即为什么要将[纬悬](纬悬.md) $\Sigma$ 变为可逆函子.

前置知识: 拓扑学基本概念, 以及[同伦论的动机](motivation-homotopy-theory.md) (推荐读者先阅读这篇文章). 或许需要一点无穷范畴的直观.

---

## 负数维球面

同伦论中的最基本对象是球面 $S^0, S^1, S^2, \cdots$; 其具有如下递推关系:
$$
S^{n+1} = \Sigma S^n.
$$

球面在同伦论中的特殊地位在于, 球面到其它空间 $X$ 的映射等价类可以[探测](探测.md)出 $X$ 的逐阶同伦信息. 例如 $S^0\to X$ 探测 $X$ 的连通分支, $S^1\to X$ 探测环路空间 $\Omega X$ 的连通分支, $S^2\to X$ 探测环路空间的环路空间 $\Omega^2 X$ 的连通分支, 等等.

现在, 球面的体系有一个缺陷, 就是 $S^0$ 不再是谁的纬悬了. 因为任何 (带基点) 空间的纬悬都是连通的, 而 $S^0$ 不连通.

这有点像是自然数的缺陷. 自然数可以做加法, 乘法, 但有时做不了减法.

回忆我们如何让自然数可以做减法: 我们想象有一种数 $x$ (当然, 我们现在知道它叫**整数**), 它可以表示为两个自然数的差
$$
x = m-n.
$$
这里 "$-n$" 可认为是一个纯粹形式的记号. 要得到整数, 还需要人为规定一些等式:
$$
m-n = (m+1)-(n+1) = (m+2) -(n+2) = \cdots.
$$
这样, 任意自然数都可以做减法了.

记 $\mathbb{N}_{-n} = \{m-n\mid m\in\mathbb{N}\}$, 那么有映射 $\mathbb{N}_{-n} \to \mathbb{N}_{-(n+1)}$ 将 $m-n$ 映射到 $(m+1)-(n+1)$; 上述定义整数的过程用范畴论语言可表示为
$$
\mathbb{Z} = \operatorname{colim} (\mathbb{N}_0\to \mathbb{N}_{-1} \to \mathbb{N}_{-2}\to\cdots).
$$
这里 $\operatorname{colim}$ 是[余极限](余极限.md), 可以大致理解为, 根据人为规定的等式将一系列集合 "并起来".

**剧透**. 谱的范畴 [$\mathsf{Sp}$](Sp.md) 有一个类似的定义,
$$
\mathsf{Sp} = \operatorname{colim} (\mathsf{Ani}_0\to\mathsf{Ani}_{-1}\to\mathsf{Ani}_{-2}\to\cdots).
$$

简单地说, **谱**就是这样一种对象: 如果我们希望任何空间都是某空间的[纬悬](纬悬.md) (更准确地说是 $\Sigma$ 是**范畴等价**), 那么谱就会自然地出现, 正如我们由自然数定义整数一样.

---

整数有另一种看法. 虽然自然数上没有 "减一" 运算, 但有一种接近于 "减一" 的运算, 称为**前驱** (precursor), 记作 $\operatorname{prec}$. 它的定义是
$$
\begin{aligned}
    \operatorname{prec}(0) &= 0, \\
    \operatorname{prec}(n+1) &= n\,(n\in\mathbb{N}).
\end{aligned}
$$
(这可视为一种归纳定义. 注意我们在定义中没有使用减号.)

考虑如下定义.

**定义**. 一个**整数**是一个自然数列
$$
x = (x_0,x_1,x_2,\cdots),
$$
满足
$$
x_n = \operatorname{prec} x_{n+1}.
$$

依此定义, 我们看到整数就是如下的东西:
$$
\begin{aligned}
&\cdots,\\
-1&:=(0,0,1,2,\cdots),\\
0&:=(0,1,2,3,\cdots),\\
1&:=(1,2,3,4,\cdots),\\
2&:=(2,3,4,5,\cdots),\\
&\cdots
\end{aligned}
$$

于是, 整数上可以定义 "减一" 运算:

**定义**. 对于整数 $x$, 定义 $x-1$ 为如下整数:
$$
(x-1)_n := x_{n+1}.
$$

上述 $\mathbb{Z}$ 的定义用范畴论的语言可表述为

$$
\mathbb{Z} = \operatorname{lim}(\mathbb{N}\overset{\operatorname{prec}}{\leftarrow}\mathbb{N}\overset{\operatorname{prec}}{\leftarrow}\mathbb{N}\overset{\operatorname{prec}}{\leftarrow}\cdots).
$$

**剧透**. 谱的范畴 [$\mathsf{Sp}$](Sp.md) 有一个类似的定义,
$$
\mathsf{Sp} = \operatorname{lim} (\mathsf{Ani}\overset{\Omega}{\leftarrow}\mathsf{Ani}\overset{\Omega}{\leftarrow}\mathsf{Ani}\overset{\Omega}{\leftarrow}\cdots).
$$

## 纬悬

那么为什么我们希望任何空间都是某空间的[纬悬](纬悬.md)?

回忆, 带基点空间 $X$ 的基本群 $\pi_1(X)$, 即保基点映射 $S^1\to X$ 的同伦类集合 $[S^1,X]$, 是一个群. 这个群结构本质上不来自 $X$ 的结构, 而来自 $S^1$ 的结构 --- $S^1$ 是一个**余群**[^1], 也即有一个结合的余乘法
$$
S^1 \to S^1 \vee S^1,
$$
其中 $\vee$ 是 "一点并", 即带基点空间范畴中的[和](和(范畴论).md);
于是两个映射 $f,g\colon S^1\to X$ 就可以拼起来变成一个映射
$$
S^1\to S^1\vee S^1 \overset{f\vee g}{\longrightarrow} X.
$$

[^1]: 这句话有两种理解, 一是空间 $S^1$ 构成同伦范畴 $\operatorname{Ho}(\mathsf{Top})$ 中的余群, 二是生象 $S^1$ 构成生象范畴 $\mathsf{Ani}$ 中的余群. 不熟悉无穷范畴的读者可以暂且使用前一种理解, 并跳过下面的注.

**注**. $\pi_1(X)$ 的群结构还有另一种解释: 它来自 $\Omega X$ 的群结构. 任何范畴中, 对象的自同构的全体构成群; 将 $X$ 视为一个范畴, 对象为 $X$ 的点, 态射为道路, $2$-态射为同伦, 至于无穷; 那么 $\Omega X$ 则是这个范畴中基点的自同构群 $\operatorname{Aut}_X(*)$. 当然, 这里的群不是传统意义上 (集合范畴中) 的群, 而是[生象](生象.md)群.

对任意带基点空间 $X$, 其纬悬 $\Sigma X$ 都有余群结构
$$
\Sigma X = X \wedge S^1 \to X \wedge (S^1\vee S^1) = \Sigma X \vee \Sigma X.
$$
因而保基点映射类的集合 $[\Sigma X, Y]$ 有群结构.

当然, $[\Sigma X, Y]$ 的群结构有另一种解释: 由于同构
$$
[\Sigma X,Y] \simeq [X,\Omega Y],
$$
即 $\Sigma$ 与 $\Omega$ 之间的[伴随](伴随.md), 由 $\Omega Y$ 的群结构可得该集合上的群结构.

**注**. 顺便一提, 这对伴随是由于两边均为如下形状的交换图的集合,
$$
    \begin{array}{ccc}
        X&\to & * \\
        \downarrow && \downarrow \\
        * & \to & Y
    \end{array}
$$
换言之
$$
[\Sigma X,Y]\simeq [X,\Omega Y]=\pi_0\operatorname{Aut}_{X/,/Y}(*).
$$

总之, 如果任何空间都是某空间的[纬悬](纬悬.md), 那么任何两个空间之间的映射空间 (或映射同伦类的集合) 构成群.

当然, 纬悬的效果不仅如此. 如果任何空间都是某空间的[纬悬](纬悬.md), 那么自然也是某空间的两次纬悬; 而 $\Sigma^2 X = X \wedge S^1\wedge S^1$ 上的两种相容的余群结构合在一起, 构成了一种 $\mathbb E_2$-余群结构, 使得映射同伦类的集合 $[\Sigma^2 X, Y]$ 构成 **Abel 群**.


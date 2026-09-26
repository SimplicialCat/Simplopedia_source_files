---
title: 稳定同伦论
tag: 教程
author: [SimplicialCat](SimplicialCat.md)
---

本文的目的是, 以尽可能少的前置知识, 解释[谱](谱.md) ([稳定 $\infty$-范畴](稳定无穷范畴.md)) 这一概念的意义和必要性, 从而使读者能够接受其抽象定义. 为此我试图解释[稳定化](稳定化.md)的动机. 许多科普作品从纬悬函子 $\Sigma$ 出发, 而我试图从环路空间函子 $\Omega$ 出发, 借助 $\mathbb E_n$-代数和 $n$-连通空间的关系提供一个直观. (从纬悬函子 $\Sigma$ 出发定义的谱在传统上称为 $\Sigma$-谱, 而我做的事情意味着抛弃 $\Sigma$-谱而仅使用 $\Omega$-谱.)

前置知识: 拓扑学基本概念, 以及[同伦论的动机](motivation-homotopy-theory.md) (推荐读者先阅读这篇文章). 或许需要一点无穷范畴的直观.

在所有前置知识中, 最重要的是明白[生象](生象.md)的世界中**何为相等**. 如果不明白[生象](生象.md)的概念, 可以用拓扑空间 ([CW 复形](CW复形.md)) 来思考以下提到的所有空间, 只要记住:

- 每当两个点可以用一条线段连接, 它们就相等.
- 相等不是一个是或否的命题, 而是一个新的数学对象. 特别地, 两个点 $x,y$ 之间的两个等式 $p\colon x=y$, $q \colon x=y$ 不一定相等.

作为推论,

- 两个同伦的映射是相等的, 因为它们被映射空间中的一条线段所连接.

最后,

- 两个同伦等价的空间是相等的. 这是我们的约定.



## 寓言一则

我们以事后诸葛亮的视角 "回顾" 从自然数定义整数的过程.

虽然自然数上没有 "减一" 运算, 但有一种接近于 "减一" 的运算, 称为**前驱** (precursor), 记作 $\operatorname{prec}$. 它的定义是
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
x_n = \operatorname{prec} (x_{n+1}).
$$

依此定义, 我们看到整数就是如下的东西:
$$
\begin{aligned}
&\cdots,\\
-2&:=(0,0,0,1,2,\cdots),\\
-1&:=(0,0,1,2,3\cdots),\\
0&:=(0,1,2,3,4,\cdots),\\
1&:=(1,2,3,4,5,\cdots),\\
2&:=(2,3,4,5,6,\cdots),\\
&\cdots
\end{aligned}
$$

整数上可以通过逐项取前驱定义 "减一" 运算:

**定义**. 对于整数 $x$, 定义 $x-1$ 为如下整数:
$$
(x-1)_n := \operatorname{prec}(x_n).
$$

而 "减一" 的逆运算 "加一" 通过移位定义:

**定义**. 对于整数 $x$, 定义 $x+1$ 为如下整数:
$$
(x+1)_n := x_{n+1}.
$$

这样, 由定义即可验证 "减一" 与 "加一" 互逆:
$$
(x-1+1)_n = (x-1)_{n+1} = \operatorname{prec}(x_{n+1}) = x_n.
$$

上述 $\mathbb{Z}$ 的定义用范畴论的语言可表述为

$$
\mathbb{Z} = \operatorname{lim}(\mathbb{N}\overset{\operatorname{prec}}{\leftarrow}\mathbb{N}\overset{\operatorname{prec}}{\leftarrow}\mathbb{N}\overset{\operatorname{prec}}{\leftarrow}\cdots).
$$

如果读者不熟悉 $\operatorname{lim}$ 这个符号, 只需知道它的计算方式是这样的: 集合范畴中一个图的 $\operatorname{lim}$ 是一个集合, 其中的一个元素是在每个结点选一个元素, 使得它们在图中所有映射之下相容. 所以这个图的 $\operatorname{lim}$ 中的元素就是: 选一列自然数, 每个都是后一个的前驱.

**剧透**. 谱的范畴 [$\mathsf{Sp}$](Sp.md) 的一个定义是
$$
\mathsf{Sp} = \operatorname{lim} (\mathsf{Ani}_*\overset{\Omega}{\leftarrow}\mathsf{Ani}_*\overset{\Omega}{\leftarrow}\mathsf{Ani}_*\overset{\Omega}{\leftarrow}\cdots).
$$
这个范畴的对象是: 选一列带基点空间, 每个都是后一个的环路空间.

由 $\mathsf{Sp}$ 的定义, 其中可通过移位作 $\Omega$ 的逆运算 $\Omega^{-1}$.

## 环路空间与群

众所周知, 对于带基点拓扑空间 $X$, $\pi_1(X)$ 是个群. 两个保基点映射 $S^1\to X$ 的乘积由 $S^1 \to S^1\vee S^1 \to X$ 给出.

事实上, $\pi_1(X)$ 是 $\Omega X$ 的连通分支集合, 它的群结构是继承自 $\Omega X$ 的群结构[^1].

[^1]: 如果读者对此有疑惑, 很可能是因为在读者的设想中 $\Omega X$ 是个拓扑空间, 其中环路的复合不满足结合律. 确实如此, 但在 $\Omega X$ 表现的生象中, 环路的复合确实满足结合律 $(xy)z=x(yz)$, 这里的等式是一个同伦 (记得我们的约定吗?). 进一步, 在 $((xy)z)w$ 到 $x(y(zw))$ 的两个等式 $((xy)z)w = (xy)(zw) = x(y(zw))$ 与 $((xy)z)w = (x(yz))w = x((yz)w) = x(y(zw))$ 之间还有等式, 在更多变元的等式之间还有等式, 以至于无穷. 要系统性地写出所有等式需要聪明地使用范畴论工具, 这是高阶代数的主题, 此处无法展开. 总之, $\Omega X$ 的结合律比 $\pi_0 (X)$ 的结合律强得多; 因为后者只是一个集合, 集合中的等式截断为命题, 而生象中的等式永不截断.

读者或许还明白对任意带基点拓扑空间 $Y$, 都有 $\pi_2(Y)$ 是个**交换**群. 这是因为, $\pi_2(Y)$ 是 $S^2$ 到 $Y$ 的映射的同伦类, 其中的乘法是由 $S^2 \to S^2 \vee S^2 \to Y$ 给出的. 而映射 $S^2 \to S^2 \vee S^2$ 的给法不止一种 —— 事实上, 有 $S^1$ 那么多种. $\pi_2(Y)$ 的两个元素可以沿着东南西北任何一个方向相乘. 从东边到南边, 再到西边, 有一个连续的过程. 所以其实哪个方向的乘法都是一样的. 特别地, 西乘和东乘是一样的.

$\pi_2(Y)$ 是 $\Omega^2(Y)$ 的连通分支集合, 它的交换性是继承自 $\Omega^2(Y)$ 的 $\mathbb E_2$-结构.

在集合的世界中 $\mathbb E_2$-群就是交换群. 但在生象的世界中, $\mathbb E_2$-群要称为交换群还不够格. 因为交换群是这样的一种群: 其中任意 $n$ 个元素乘在一起有**唯一**的方式. 唯一就是说方式构成的空间同伦等价于一个点.

然而在 $\mathbb E_2$-群中, 两个元素乘在一起就有 $S^1$ 种方式. $S^1$ 是连通的 (这导致在集合的世界中它等于一个点), 但在生象的世界中 $S^1$ 不等价于一个点.

一般而言, $\Omega^n (Y)$ 是 $\mathbb E_n$-群. (因此 $\pi_n(Y)$ 是集合世界中的交换群.) 在 $\mathbb E_n$-群中, 两个元素乘在一起有 $S^{n-1}$ 种方式. $S^{n-1}$ 是连通的, 单连通的, ..., $(n-2)$-连通的. 但它仍然不是可缩的. 某种意义上 $\Omega^n (Y)$ 越来越接近交换群.

### 连通性等价于群结构

[群](群.md)就是一个东西的自同构. 一个东西视为一个模空间的点, 其自同构就是模空间在该点处的环路空间.

事实上, 对于带基点连通空间, 它的同伦型完全被环路空间的群结构决定. 用生象的话讲, 有等价
$$
\Omega\colon \mathsf{Ani}_{*,\geq 1} \overset{\simeq}{\longrightarrow} \mathsf{Grp}(\mathsf{Ani}).
$$

回顾一下高阶连通性. 我们说一个带基点空间 $X$ 是 $n$-[连通](连通性.md)的, 意思是其 $n$ 阶及以下[同伦群](同伦群.md) $\pi_0(X),\pi_1(X),\cdots,\pi_n(X)$ 平凡. 通常的连通是 $0$-连通.

一般地, $\mathbb E_n$-群等同于带基点 $(n-1)$-连通生象. 有等价
$$
\Omega^n\colon \mathsf{Ani}_{*,\geq n} \overset{\simeq}{\longrightarrow} \mathsf{Grp}_{\mathbb E_n}(\mathsf{Ani}).
$$

换言之, 能作为 $n$ 重环路空间的空间等同于 $\mathbb E_n$ 群.

### 令 $n\to\infty$

真正有资格称为交换群的是 $\mathbb E_{\infty}$-群.

在集合的世界中, $\mathbb E_2$-群就是 $\mathbb E_\infty$-群. 因为集合之间的两个映射相等就是相等, 没有两种不同的方式相等, 这叫[截断性](截断性.md). (集合范畴中的态射集是 $0$-截断的. 一般地, 如果一个范畴中的态射生象是 $n$-截断的, 那么这个范畴中的 $\mathbb E_{n+2}$-群就已经是 $\mathbb E_{\infty}$-群. 但是生象的范畴 $\mathsf{Ani}$ 的态射生象没有任何截断性.)

集合范畴中的交换群 $A$ 放在 $\mathsf{Ani}$ 中仍是交换群. 这意味着存在一列带基点生象 $\Omega^{-n} A$. 这样我们得到了 $\mathsf{Ani}$ 中的一大类 $\mathbb E_{\infty}$-群.

当然 $\mathbb E_{\infty}$-群不止这些. 有一个重要的例子, 所有有限集的全体构成一个生象
$$
\mathsf{Fin}^{\simeq} = \bigsqcup_{n\geq 0} (*/S_n).
$$
它带有一个交换的运算 $+$, 也就是无交并; 无交并的单位元是空集 $\varnothing$. 虽然 $\mathsf{Fin}^{\simeq}$ 不是群, 但它是**幺半群** (事实上它是一个元素生成的[自由](自由-遗忘伴随.md)幺半群), 并且像通常的幺半群一样, 它可以群化, 也就是自由地变成一个 $\mathbb E_\infty$-群. (剧透: 这个 $\mathbb E_\infty$-群对应的谱是[球谱](球谱.md) $\mathbb S = \Sigma^{\infty}S^0$.)

如果上面的讨论发生在集合的世界, 这就是大家熟悉的由 $\mathbb{N}$ 得到 $\mathbb{Z}$ 的过程. 但现在我们在生象的世界. (这就是为什么人们说 $\mathbb S$ 是 $\mathbb{Z}$ 在生象世界的类比.)

按照前面的经验, $\mathbb E_{\infty}$-群应该是什么东西的 $\Omega^{\infty}$. 但是 $\Omega^{\infty}$ 是什么?

将函子 $\Omega^n$ 的两边取极限 (下图的下两行):

[](tutorial-stable-homotopy-1.typ#:block)

由于等价的极限仍是等价, 我们得到
$$
\Omega^{\infty}\colon \mathsf{Sp}_{\geq 0} \overset{\simeq}{\longrightarrow} \mathsf{Grp}_{\mathbb E_\infty}(\mathsf{Ani}).
$$

注.

- $\mathsf{Ani}_{*,\geq n}$ 之间的函子不是遗忘 (含入), 而是 $\Omega\colon \mathsf{Ani}_{*,\geq (n+1)} \to \mathsf{Ani}_{*,\geq n}$.
- $U\colon \mathsf{Grp}_{\mathbb E_{n+1}}(\mathsf{Ani}) \to \mathsf{Grp}_{\mathbb E_n}(\mathsf{Ani})$ 是遗忘.
- $\Omega^\infty$ 左边的范畴有点像 $\mathsf{Ani}_{*,\geq \infty}$ 但是实际上在 $\mathsf{Ani}_*$ 中不存在非平凡的 $\infty$-连通对象.

**定义**. 在上述等价中, 普通 Abel 群 $A$ 对应的谱称为 [Eilenberg–Maclane 谱](Eilenberg–MacLane谱.md) $HA$.



### 回到寓言

谱的范畴上 $\Omega$ 是可逆的, 正如整数集合中 "减一" 运算是可逆的. 对于谱 $X$, 定义
$$
(\Omega^{-1}X)_n = X_{n+1}.
$$
由定义, $\Omega^{-1}$ 是 $\Omega$ 的逆.

在这样的范畴中, 每个对象 $X$ 都是 $n$ 阶环路空间:
$$
X = \Omega^n \Omega^{-n} X = \Omega^n Y\,(Y=\Omega^{-n} X),
$$
从而
$$
\operatorname{Hom}(Z,X) = \operatorname{Hom}(Z,\Omega^n Y) = \Omega^n \operatorname{Hom}(Z,Y)
$$
是个 $\mathbb E_n$-群. 而这对任意 $n$ 成立, 从而 $\operatorname{Hom}(Z,X)$ 是个交换群.

这种范畴称为稳定 $\infty$-范畴, 是 Abel 范畴在 $\infty$-范畴语境中的正确类比.

## $\Sigma$-$\Omega$ 与自由-遗忘伴随

回忆, 带基点空间的[压缩积](压缩积.md) (smash product) 是
$$
X \land Y = \frac{X \times Y}{(x,*)=*=(*,y)} = \frac{X\times Y}{X\lor Y},
$$
它的范畴论意义来自 $\land$-Hom 伴随:
$$
\operatorname{Hom}(X \land Y , Z) \simeq \operatorname{Hom}(X,\underline{\operatorname{Hom}}(Y,Z)).
$$
这里 $\underline{\operatorname{Hom}}(Y,Z)$ 表示 $Y$ 到 $Z$ 的保基点映射空间, 其基点为 $Z$ 基点处的恒等映射.

令 $Y = S^1$, 定义带基点空间 $X$ 的[纬悬](纬悬.md) $\Sigma X$ 为
$$
\Sigma X = X\land S^1.
$$
前面的 $\land$-Hom 伴随给出一对伴随 $\Sigma \dashv \Omega$:
$$
   \operatorname{Hom}(\Sigma X,Z) \simeq \operatorname{Hom}(X,\Omega Z).
$$

在上一节的巨大交换图的每一个 $\Omega$ 旁边都可以补上一个左伴随. 下面的遗忘函子 $U$ 也有左伴随, 不妨称为自由函子. (把自由函子明确写出来是有可能的, 只是比较复杂.)

[](tutorial-stable-homotopy-2.typ#:block)

带基点空间 $X$ 生成的自由 $\mathbb E_1$-群是
$$
\operatorname{Free}_{\mathbb E_1\text{-grp}}(X) = \Omega \Sigma X.
$$
或许一条直观是: $\Sigma X$ 是由若干环路拼成的, $X$ 的每个点都贡献一条环路; 而 $\Omega\Sigma X$ 的元素则可以将这些环路以任意顺序组合在一起.

更一般地, 带基点空间 $X$ 生成的自由 $\mathbb E_n$-群是
$$
\operatorname{Free}_{\mathbb E_n\text{-grp}}(X) = \Omega^n \Sigma^n X.
$$
直观是: $\Sigma^n X$ 是由若干 $S^n$ 拼成的, $X$ 的每个点都贡献一个 $S^n$; 而 $\Omega^n \Sigma^n X$ 的元素则可以将这些 $S^n$ 以任意 "$\mathbb E_n$ 的方式" 组合在一起.

由此很容易相信 (虽然不太容易证明), 有一对伴随函子
$$
\Sigma^\infty \dashv \Omega^\infty \colon \mathsf{Ani}_* \rightleftarrows \mathsf{Sp},
$$
并且 $\Sigma^\infty$ 的像实际上落在 $\mathsf{Sp}_{\geq 0}$ 中.
在下面一行这对应 $\mathbb E_\infty$-群的自由–遗忘伴随
$$
\operatorname{Free}_{\mathbb E_\infty\text{-grp}} \dashv U \colon \mathsf{Ani}_* \rightleftarrows \mathsf{Grp}_{\mathbb E_\infty}(\mathsf{Ani}).
$$

## 上同调

[上同调](上同调.md)是生象到 Abel 群的一系列函子
$$
E^n \colon \mathsf{Ani}_* \to \mathsf{Ab},
$$
满足

- (纬悬同构) $E^{n+1}(\Sigma X) \simeq E^n(X)$,
- (长正合列) 对任意映射 $A\to X$, 有长正合列 $E^n(X/A) \to E^n(X) \to E^n(A) \to E^{n+1}(X/A)\to\cdots$.

**定理** (Brown). 设 $E^n$ 为上同调理论, 则存在生象 $K_n$ 使得
$$
E^n (X) = \pi_0 \operatorname{Hom}(X,K_n).
$$

这就是说 $X$ 的上同调就是 $X$ 上取值于特定生象的函数的集合. 上同调之所以是 Abel 群, 是因为每个 $K_n$ 都是 $\mathbb E_\infty$-群. 而这是因为由纬悬同构,
$$
\pi_0\operatorname{Hom}(X,\Omega K_{n+1}) \simeq \pi_0 \operatorname{Hom}(\Sigma X, K_{n+1}) \simeq \pi_0 \operatorname{Hom}(X,K_n)
$$
从而有等价 $K_n\simeq\Omega K_{n+1}$. 那么由谱的定义, $\{K_n\}$ 构成了一个谱.

而长正合列则是来源于映射生象将余极限变为极限的性质: 余纤维列
$$
A\to X \to X/A
$$
给出纤维列
$$
\operatorname{Hom}(X/A,K_n) \to \operatorname{Hom}(X,K_n) \to \operatorname{Hom}(A,K_n)
$$
而纤维列给出同伦群的长正合列
$$
\pi_m \operatorname{Hom}(X/A,K_n) \to \pi_m \operatorname{Hom}(X,K_n) \to \pi_m \operatorname{Hom}(A,K_n)\to \pi_{m+1} \cdots,
$$
$$
\pi_m \operatorname{Hom}(X,K_n) = \pi_0 \Omega^m \operatorname{Hom}(X, K_n) = \pi_0 \operatorname{Hom}(X, K_{n+m}) = E^{k+m} (X).
$$

普通的以 Abel 群 $A$ 为系数的上同调是对应 [Eilenberg–Maclane 谱](Eilenberg–MacLane谱.md) $HA$ 的上同调:
$$
H^n(X,A) = \pi_0 \operatorname{Hom}(X, \Omega^{-n} A).
$$

## 映射谱与张量积

**定义** (映射谱). 谱 $X$ 到 $Y$ 的**映射谱** $[X, Y]$ 为如下的谱:
$$
[X, Y]_n = \operatorname{Hom}_{\mathsf{Sp}}(X,\Omega^{-n} Y).
$$
容易验证这的确是一个谱:
$$
\Omega [X, Y]_{n+1} = \Omega\operatorname{Hom}_{\mathsf{Sp}}(X,\Omega^{-n-1} Y) = [X, Y]_n.
$$

特别地, $\operatorname{Hom}_{\mathsf{Sp}}(X,Y) = [X, Y]_0 = \Omega^{\infty} [X, Y]$.

**命题**. 谱的范畴 $\mathsf{Sp}$ 上存在一个运算 $\otimes$ ("张量积"), 使得有自然同构
$$
[X\otimes Y,Z] = [X,[Y, Z]].
$$

**命题**.
$$
\Sigma^{\infty}(X \land Y) = \Sigma^{\infty}X \otimes \Sigma^{\infty} Y.
$$

*证明*. 我们完整写出这个证明的目的, 是展示其中仅用到了 $\Sigma$ 的一个性质: 它是 $\Omega$ 的左伴随.
$$
\begin{aligned}
&\operatorname{Hom}_{\mathsf{Sp}}(\Sigma^{\infty}(X\land Y),Z) \\&= \operatorname{Hom}_{\mathsf{Ani}_*}(X\land Y,\Omega^{\infty}Z)\\
&=\operatorname{Hom}_{\mathsf{Ani}_*}(X,\underline{\operatorname{Hom}}_{\mathsf{Ani}_*}(Y,\Omega^{\infty}Z))
\\
&=\operatorname{Hom}_{\mathsf{Ani}_*}(X,\operatorname{Hom}_{\mathsf{Sp}}(\Sigma^{\infty}Y,Z))
\\
&=\operatorname{Hom}_{\mathsf{Ani}_*}(X,\Omega^{\infty}[\Sigma^{\infty}Y,Z])
\\
&=\operatorname{Hom}_{\mathsf{Sp}}(\Sigma^{\infty}X,[\Sigma^{\infty}Y,Z])
\\
&=\operatorname{Hom}_{\mathsf{Sp}}(\Sigma^{\infty}X\otimes \Sigma^{\infty}Y,Z).
\end{aligned}
$$
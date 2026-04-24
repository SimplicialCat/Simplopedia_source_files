---
title: Gestalt
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

[](term-gestalt.md) (Gestalt, 复数 Gestalten) 是 [Scholze–Stefanich](ScholzeStefanichGestalten.md) 提出的一种几何概念, 旨在恢复完全的[代数–几何对偶](代数-几何对偶.md): 通过考虑几何对象上的 "线性 $(\infty,n)$-范畴" 取值的层, 即[高阶拟凝聚层](高阶拟凝聚层.md), 使得任何几何对象都具有代数的对应物, 而不再需要对 "仿射" 几何对象进行粘合操作.

> The language of Gestalten translates difficult algebra of higher categories into more intuitively manageable geometry, in the same way that the language of schemes translates difficult commutative algebra into more intuitively manageable geometry.
>
> --- Peter Scholze, [2026 年 3 月 Bourbaki 演讲](ScholzeBourbakiGL.md)

[](notes-Gestalten.md)

## 观念

1. 代数几何中的几乎所有几何对象都来自于仿射概形之类的基本对象的 "粘合". 做这件事的一般框架是[景](景.md)和[意象](意象.md)的理论. 给仿射概形的范畴配备适当的覆盖结构, 然后取其上的层, 这就相当于取仿射概形的 (形式上的) 余极限, 得到一个包含许多几何对象的[意象](意象.md).
而后[模空间](模空间.md)的研究让人们自然地考虑群胚取值的层, 又称[叠](叠.md). 群胚取值的层是带有同伦信息的几何对象, 构成一个 [∞-意象](∞-意象.md).
2. 在[代数–几何对偶](代数-几何对偶.md)中, 通常不是所有几何对象都有完美的代数侧对偶. 例如在概形中, 只有仿射概形能被其上的整体函数环完全决定. 不仿射的概形如 $\mathbb P^1_k$ ($k$ 为域), 其上没有足够多的整体函数, 以至于仅看整体函数我们无法将它和一个点区分开.
3. 在有非平凡高阶同伦信息的几何对象 (例如群概形 $G$ 的[分类空间](分类空间.md) $* / G$) 上, 整体函数更加不可能提供全部的信息. 但 [Tannaka](淡中对偶.md) 指出此时[拟凝聚层](拟凝聚层.md)的范畴 $\mathsf{QCoh}(X)$, 直观上即 "线性空间值的整体函数", 连带着其上的[对称幺半](对称幺半范畴.md)结构, 能够忠实地记录这个几何对象. 这里[对称幺半范畴](对称幺半范畴.md)作为一种代数对象, 可视为环的推广.
4. 事实上, $\mathsf{QCoh}$ 能忠实记录的几何对象就已经包括了所有的 (qcqs) 概形.
不仅如此, 一些叠 (对角线仿射的 qcqs [Artin 叠](代数叠.md)) 也能被其拟凝聚层范畴忠实记录, 人们称之为 $1$-仿射 ($1$-affine) 叠.
5. 将 Abel 范畴升级为[导出范畴](导出范畴.md), 我们考虑的代数对象变成了[可表现](可表现范畴.md)[对称幺半](对称幺半∞-范畴.md)[稳定 ∞-范畴](稳定无穷范畴.md). 通过取导出范畴 $D \colon \mathsf{CAlg}(\mathsf{Sp})\hookrightarrow\mathsf{CAlg}(\mathsf{Pr}_{\mathrm{st}}^{\mathrm{L}})$, 环 (包括环谱) 忠实地嵌入这种代数对象.
6. 但仍旧有几何对象无法被拟凝聚层的 (导出) 范畴记录. 例如 $\mathbf{B}^2\mathbb G_m$ (与 [Brauer 群](Brauer群.md)有关) 上就没有足够的拟凝聚层, 以至于仅看拟凝聚层无法将它和一个点区分开. 而 $\mathbf{B}^2\mathbb G_m$ 上能够记录其全部几何信息的是一个 "范畴值" 的拟凝聚层, 事实上是万有的 "范畴值线丛" (正如 $\mathbf{B}\mathbb G_m$ 上有万有线丛一样).
7. 为了记录所有几何对象, 我们需要不断地走向范畴层级更高的代数对象, 即[高阶拟凝聚层](高阶拟凝聚层.md). 这就是 Gestalt 的起源.



## 定义

[](term-gestalt.md)的定义是基于一个称为 **Stefanich 环**的代数对象.

一个 Stefanich 环 $A$ 是如下资料:

- 一个越来越高阶的[可表现范畴](可表现范畴.md)的[交换代数](交换代数.md)的塔
  $$
        (A_0,A_1,A_2,\cdots),A_n\in \mathsf{CAlg}(n\mathsf{Pr}),
  $$
- 每个部分 $A_n$ 等价于高一阶的部分 $A_{n+1}$ 的 "环路空间":
  $$
        A_n \simeq \operatorname{End}_{A_{n+1}}(1) \in \mathsf{CAlg}(n\mathsf{Pr}).
  $$

换言之, Stefanich 环构成的 $(\infty,1)$-范畴为
$$
\mathsf{StRing} = \operatorname{lim}_{\operatorname{End}_{-}(1)} \mathsf{CAlg}(n\mathsf{Pr}).
$$
(忽略这些范畴的高阶不可逆态射, 仅考虑其 $(\infty ,1)$-范畴结构.)

**注**. 由定义中的第二个条件, Stefanich 环 $A=(A_0,A_1,A_2,\cdots)$ 的每个部分 $A_n$ 的交换代数结构实际上被高一阶的部分 $A_{n+1}$ 决定了. 进一步, 我们可以在定义中仅要求 $A_n\in n\mathsf{Pr}$, 且有等价 $A_n \simeq \operatorname{End}_{A_{n+1}}(*)$ ($A_n$ 的基点为恒等). 这样 (由 [Eckmann–Hilton论证](Eckmann--Hilton论证.md)) 交换代数的结构就来自于一连串等价
$$
A_n = \operatorname{End}_{A_{n+1}}(*) = \operatorname{End}_{\operatorname{End}_{A_{n+2}}(*)}(*) = \cdots.
$$

**定义**. [](term-gestalt.md)为 Stefanich 环的对偶: $\mathsf{Gest} = \mathsf{StRing}^{\mathrm{op}}$.

### 相对情形

给定 Stefanich 环 $A$, 记对应的[](term-gestalt.md)为 $X=\operatorname{Gest}(A)$, 可以证明[相对](相对.md)于 $X$ 的[](term-gestalt.md)的范畴为
$$
\mathsf{Gest}_{/X}=(\mathsf{StRing}_{A/})^{\mathrm{op}}\simeq\operatorname{lim}_{\operatorname{End}_{-}(1)}\mathsf{CAlg}(A_n).
$$


## 性质

**定理** ([Scholze–Stefanich](ScholzeStefanichGestalten.md)). (在实用的意义上,) $\mathsf{Gest}$ 是一个 [$\infty$-意象](∞-意象.md).

## 例

普通的交换环 $A$ 给出一个 Stefanich 环
$$
(A,\mathsf{Mod}(A),1\mathsf{Pr}_A,2\mathsf{Pr}_A,\cdots).
$$

对于仿射概形范畴上适当的 Grothendieck 拓扑, 该构造即延拓至适当的叠.

### 空集

空集对应的[](term-gestalt.md)为 $\operatorname{Gest}(*,*,*,\cdots)$.

### 单点

单点对应的[](term-gestalt.md)为 $\operatorname{Gest}(*,\mathsf{Ani},1\mathsf{Pr},\cdots)$. 与任何几何对象的语境中一致, 单点是 $\mathsf{Gest}$ 的终对象.


### 映射空间

"Betti 局部系统的叠" $\mathrm{LocSys}_G$ 可表示为[](term-gestalt.md)的映射空间
$$
\mathrm{LocSys}^{\text{Betti}}_G \simeq \operatorname{Map}(*/\pi_1, */G) = \operatorname{Hom}(\pi_1,G)/G.
$$
其中 $*/G$ 为[逆环路空间](逆环路空间.md), $G$-作用为[共轭作用](共轭作用.md).
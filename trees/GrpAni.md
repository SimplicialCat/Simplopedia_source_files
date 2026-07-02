---
title: 生象群
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

如果说[生象](生象.md)是集合在高阶范畴语境中对应的概念, 那么生象群则是群的对应概念. 所谓群就是一个对象的对称性的抽象; 生象群就是一个 $(\infty,1)$-范畴中一个对象的自同构的抽象, 也就是一个带基点 $(\infty,0)$-范畴.

同时, 生象群也可视为 [$\mathsf{Ani}$](Ani.md) 中特殊的 [$\mathbb E_1$-代数](结合代数.md), 其每个元素都有逆.

## 群作用

[群作用](群作用.md)即是将抽象的群映射到具体的对称性: 群 $G$ 在范畴 $\mathcal C$ 的对象上的作用即是函子 $\mathbf{B}G \to \mathcal C$.

### 共轭作用

[共轭作用](共轭作用.md)是群 $G$ 给出的 $G$ 本身的对称性; 一种简明的看法是: 移动 $\mathbf{B}G$ 的基点, 给出其作为带基点生象的对称性.

### 半直积

此时一个自然的观察是, 群可以作用于另一个群上.
设群 $H$ [作用](群作用.md)于群 $N$, 即作用于带基点连通对象 $\mathbf{B}N\in\mathsf{Ani}_{*/}^{\geq 1}$, 其商 $(\mathbf{B}N) / H$ 自然地是一个带基点生象, 对应于一个群 $G$, 称为 $N$ 与 $H$ 的[半直积](半直积.md).

## 群同态

群同态是特殊的群作用: 一个群作用在另一个单对象范畴的唯一对象上.

在 $\infty$-范畴的语境中, 正如子集的概念常常替换为一般映射, **子群**的概念常常替换为一般同态. 对子群定义的[陪集空间](陪集空间.md)也可对任何群同态定义.

### 核

对于生象群同态 $f\colon G\to H$, 其**核**由如下[纤维列](纤维列.md)定义:
$$
\mathbf{B}\ker f \to \mathbf{B}G \overset{\mathbf{B}f}{\to} \mathbf{B}H.
$$
也即
$$
\mathbf{B}\ker f = \operatorname{fib}(\mathbf{B}f) = \mathbf{B}G \times_{\mathbf{B}H}*.
$$

### 余核

对于生象群同态 $f\colon G\to H$, 其**余核**由如下[余纤维列](余纤维列.md)定义:
$$
\mathbf{B}G \overset{\mathbf{B}f}{\to} \mathbf{B}H \to \mathbf{B}\operatorname{coker}f.
$$

**注意**. 余核的行为与经典群论有很大差异.

- 即使对于正规子群, $\operatorname{coker}f$ 一般也不是 $H$ 在 $G$ 上右[作用](群作用.md)的商 $G/H$.
- 即使对于正规子群, $H\to\operatorname{coker}f$ 的核一般也不是 $G$.

**例**. $2\mathbb{Z} \to \mathbb{Z}$ 的余核是 $\Omega\mathbb{RP}^2$ 而不是 $\mathbb{Z}/2$.

一般地, 函子 $\mathsf{Grp}(\mathsf{Set}) \to \mathsf{Grp}(\mathsf{Ani})$ 保持极限, 但不保持余极限.

### 中心与中心化子

群 $G$ 的[中心](中心.md) $Z(G)$ 是 $G$ 在自身上的[共轭作用](共轭作用.md)的[不动点集](不动点.md).

子群 (或群同态) $H\to G$ 的[中心化子](中心化子.md)是 $H$ 在 $G$ 上的[共轭作用](共轭作用.md)的[不动点集](不动点.md).

[](中心作用.md)

[](内自同构.md)

[](群的外自同构.md)

todo

### 正规子群与正规化子

[](正规子群.md)

[](正规化子.md)

### 小结

群论中的许多构造都可以定义在生象群的语境中, 许多构造都形如某些熟悉对象的自同构群.

对于群同态 $f\colon H\to G$, 即带基点生象的映射 $\mathbf{B}f\colon \mathbf{B}H \to \mathbf{B}G$,

- 其作为生象映射的自同构群 $\operatorname{Aut}_{\operatorname{Hom}_{\mathsf{Ani}}(\mathbf{B}H,\mathbf{B}G)}(\mathbf{B}f)$ 即为 $f\colon H\to G$ 的[中心化子](中心化子.md);
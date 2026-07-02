---
title: 滤与分次的叠观点
tag: 百科
subject: [代数几何](代数几何.md)
author: [SimplicialCat](SimplicialCat.md)
---

## 陈述

### 分次与半群作用

设 $N$ 为交换幺半群, 则环 $A$ 上的 $N$-[分次](分次代数.md)等同于仿射概形 $\operatorname{Spec}A$ 上的 $\operatorname{Spec}\mathbb{Z}[N]$-[作用](群作用.md). 详见[分次代数](分次代数.md).

考虑 $N=\mathbb{Z}$ 的特殊情形, 记 $\mathbb G_m = \operatorname{Spec}\mathbb{Z}[x^{\pm 1}] = \operatorname{Spec}\mathbb{Z}[\mathbb{Z}]$ 为[乘法群概形](乘法群概形.md). 那么环 $A$ 上的 $\mathbb{Z}$-[分次](分次代数.md)等同于 $\mathbb G_m$ 在[仿射概形](仿射概形.md) $\operatorname{Spec}A$ 上的[作用](群作用.md). 在[相对](相对.md)情形中, [概形](概形.md) $X$ 上的[拟凝聚](拟凝聚层.md)代数 $A$ 上的 $\mathbb{Z}$-[分次](分次代数.md)等同于[相对谱](相对谱.md) $\operatorname{Spec}_X A$ 上的 $\mathbb G_m$-[作用](群作用.md).

分次环 $A$ 上的[分次模](分次模.md) $M$ 相当于 $\operatorname{Spec}A$ 上的 $\mathbb G_m$-等变拟凝聚层, 也即商叠 $\operatorname{Spec}A / \mathbb G_m$ 上的[拟凝聚层](拟凝聚层.md). 具体地, 考虑两个作用 $\mathrm{act},\mathrm{triv} \colon \mathbb G_m\times\operatorname{Spec}A\to\operatorname{Spec}A$, 对应两个环同态 $A\to A[x^{\pm 1}]$, 那么 $\operatorname{Spec}A$ 上的 $\mathbb G_m$-等变拟凝聚层是 $A$-模 $M$ 带有同构
$$
M\otimes_{A,\mathrm{act}}A[x^{\pm 1}] \simeq M\otimes_{A,\mathrm{triv}}A[x^{\pm 1}],
$$
这至少给出一个映射 $M \to M[x^{\pm 1}]$, 它将 $M$ 的 $n$ 次齐次元素 $m$ 映射到 $m x^n \in M[x^{\pm 1}]$.

### 滤

特别地, 令 $A = \mathbb{Z}[t]$, 我们得到 $\mathbb{Z}$-分次的 $\mathbb{Z}[t]$-模相当于 $\mathbb A^1$ 上的 $\mathbb G_m$-等变拟凝聚层, 也即商叠 [$\mathbb A^1 / \mathbb G_m$](A1-Gm.md) 上的拟凝聚层.

另一方面, $\mathbb{Z}$-分次的 $\mathbb{Z}[t]$-模也相当于 $\mathbb{Z}$-模范畴中的[滤对象](滤过.md), 其中 $t$ 的作用即为滤对象中的各阶结构映射.

## 相关概念

[](吸引子.md)
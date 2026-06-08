---
title: 仿射直线对乘法群的商
tag: 百科
subject: [代数几何](代数几何.md)
author: [SimplicialCat](SimplicialCat.md)
---

仿射直线 $\mathbb A^1 = \operatorname{Spec}\mathbb{Z}[x] = \operatorname{Spec}\mathbb{Z}[\mathbb{N}]$ 上有[乘法群](乘法群概形.md) $\mathbb G_m = \operatorname{Spec}\mathbb{Z}[x^{\pm 1}] = \operatorname{Spec}\mathbb{Z}[\mathbb{Z}]$ 的[作用](群作用.md). 在 $\mathsf{Aff}$ 上的 ($\mathsf{Ani}$-值 fpqc) 层范畴中取其商, 记作 $\mathbb A^1 / \mathbb G_m$.

## 性质

### 拟凝聚层: 单纯消解

由 $\mathbb A^1\to \mathbb A^1 / \mathbb G_m$ 的 [Čech 脉](Čech脉.md) (其[几何实现](几何实现(单纯图表的余极限).md)为 $\mathbb A^1 / \mathbb G_m$) 可以将 $\mathsf{QCoh}(\mathbb A^1 / \mathbb G_m)$ [表现](数学对象的表现.md)为余单纯范畴
$$
\mathsf{QCoh}(\mathbb A^1) \rightrightarrows \mathsf{QCoh}(\mathbb A^1 \times \mathbb G_m) \to^3 \cdots
$$
的极限.

### 作为线丛截面的分类空间

概形 (叠) $X$ 到 $\mathbb A^1 / \mathbb G_m$ 的映射等同于 $X$ 上的线丛带有一个截面 (这个结构与 Cartier [除子](除子.md)有关). 具体地, 映射
$$
X \to \mathbb A^1 / \mathbb G_m
$$
相当于如下资料:
- 映射 $X \to \mathbf{B}\mathbb G_m$, 对应 $X$ 上的 $\mathbb G_m$-[主丛](主丛.md) $P\to X$ (也给出[关联](关联丛.md)的[线丛](线丛.md) $\mathcal L = P\times_{\mathbb G_m}\mathbb A^1$),
- 以及 $\mathbb G_m$-[等变映射](等变映射.md) $P\to\mathbb A^1$, 这又相当于 $\mathbb G_m$-等变截面 $P\to P\times\mathbb A^1$, 也即截面 $X\to\mathcal L$.

### 与滤的关系

见[滤与分次的叠观点](fil-gr.md).
---
title: 导出范畴
tag: 讲义
author: [SimplicialCat](SimplicialCat.md)
---

## 引言

上一讲介绍了[稳定 $\infty$-范畴](稳定无穷范畴.md), 并说明它的[同伦范畴](同伦范畴.md)是三角范畴; 实践中, 基本上每个三角范畴都是由某个更体现其本质的稳定 $\infty$-范畴产生的.

稳定 $\infty$-范畴上可以附加一根衡量同伦信息层级的标尺, 称为 [$t$-结构](t-结构.md); 处于标尺最中间的部分称为它的心. 心是一个 [Abel 范畴](Abel范畴.md). 反过来, 从一个 Abel 范畴开始可以典范地构造一个稳定 $\infty$-范畴以之为心, 这就是[导出范畴](导出范畴.md).

## Abel 范畴

设 $\mathcal A$ 为 [Abel 范畴](Abel范畴.md).





## 导出范畴的泛性质

**命题** ([Lurie HA](LurieHA.md) 定理 1.3.3.2). 设 $\mathcal A$ 为 [Abel 范畴](Abel范畴.md), 其中[投射对象](投射对象.md)充足. 对任意带有左完备 [t-结构](t-结构.md)的[稳定范畴](稳定无穷范畴.md) $\mathcal C$, 右正合函子 $\mathcal A \to \mathcal C^{\heartsuit}$ 可唯一地延拓为右 t-正合函子 $\mathsf{D}^-(\mathcal A)\to \mathcal C$. 换言之, 导出范畴 $\mathsf{D}^-(\mathcal A)$ 是万有的以 $\mathcal A$ 为心的稳定范畴.

**例**. 对于两个如上的 Abel 范畴 $\mathcal A,\mathcal B$, 右正合函子 $f\colon \mathcal A\to\mathcal B$ 唯一地延拓为右 t-正合函子 $f\colon \mathsf{D}^-(\mathcal A) \to \mathsf{D}^-(\mathcal B)$, 这便是 $f$ 的[导出函子](导出函子.md).

**例**. [谱](谱.md)的范畴 [$\mathsf{Sp}$](Sp.md) 的心是 Abel 群的范畴 $\mathsf{Ab}$; 于是有右 t-正合函子 $\mathsf{D}^-(\mathsf{Ab}) \to \mathsf{Sp}$, 将 Abel 群链复形映射为对应的谱; 这称为广义 Eilenberg–Maclane 谱.
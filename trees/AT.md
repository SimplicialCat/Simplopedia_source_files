---
title: 代数拓扑的现代语言
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

按照 [Hatcher](HatcherAT.md) 的目录用现代语言讲述的代数拓扑. 注意:

- 这不是针对初学者的教程, 仅供熟悉[生象](生象.md)语言的读者查阅.
- 生象语言在本书中并非全能. 有些内容 "本质" 属于拓扑空间范畴, 而不能直接用生象语言解释.

## 第 0 章. 基本概念

#### 同伦与同伦型

所谓**同伦**就是[生象](生象.md)中的等式. 一个拓扑空间的**同伦型**就是其表现的[生象](生象.md).

#### 胞腔复形

胞腔复形又叫 [CW 复形](CW复形.md), 是带有一个[滤过](滤过.md)
$$
X_0 \to X_1 \to X_2\to \cdots
$$
的生象, 其逐项[余纤维](余纤维列.md)为球面束 ([球面](球面.md)的一点并).

#### 生象的操作

- [积](积(范畴论).md)
- 商, 也就是[余纤维](余纤维列.md)
- [纬悬](纬悬.md) (suspension)
- [联合](联合.md) (join)
- [压缩积](压缩积.md)

## 第 1 章. 基本群

带基点生象 $(X,x_0)$ 的[基本群](基本群.md) $\pi_1(X,x_0)$ 是[环路空间](环路空间.md) $\Omega(X,x_0)$ 的 $0$-[截断](截断性.md).

### 1.1 基本构造

对于等式 $h\colon x_0 = x_1$, 有换基点同态
$$
\pi_1 (X,x_0) \overset{\simeq}{\to}\pi_1(X,x_1),\,[f]\mapsto [h \cdot f \cdot \bar h].
$$

#### 圆圈的基本群

[$S^1$](球面.md) 的基本群是无限循环群 $\mathbb{Z}$.

这里原书讲了基本群的应用, Brouwer 不动点定理和 Borsuk–Ulam 定理. 这两个定理不能直接用生象语言解释.

#### 诱导同态

带基点生象的映射 $\varphi\colon (X,x_0)\to (Y,y_0)$ 诱导基本群的同态 $\pi_1(X,x_0) \to \pi_1(Y,y_0)$. 这说的是基本群的函子性.

这里原书证明了 $\pi_1(S^n) = 0$ ($n\geq 2$). 这个命题对生象成立, 但这个证明不能用生象语言解释.

### 1.2 Van Kampen 定理

[Van Kampen 定理](VanKampen定理.md)

### 1.3 覆叠空间

[覆叠空间](覆叠.md)

### 1.A 图与自由群

## 第 2 章. 同调

### 单纯同调与奇异同调

拓扑空间 $X$ 的奇异同调是其[奇异单纯集](奇异单纯集.md) $\operatorname{Sing}X$ 的单纯同调.

单纯集的单纯同调是如下复合:
$$
\mathsf{sSet} \overset{\mathbb{Z}[-]}{\longrightarrow} \mathsf{sAb} \overset{\mathrm{DK}}{\longrightarrow} \mathsf{Ch}_{\geq 0}(\mathbb{Z}) \overset{H_n}{\longrightarrow}\mathsf{Ab},
$$
它[表现](数学对象的表现.md)了如下函子:
$$
\mathsf{Ani} \overset{\mathbb{Z}[-]}{\longrightarrow}\mathsf{Mod}(H\mathbb{Z})_{\geq 0} \overset{H_n}{\longrightarrow} \mathsf{Ab}.
$$

### 正合列与切除


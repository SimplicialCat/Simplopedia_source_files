---
title: n 重范畴
tag: 百科
subject: [范畴论](范畴论.md)
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

$n$ 重范畴 ($n$-fold category) 是有 $n$ 类互相独立的态射的范畴. 可以归纳地定义 $n$ 重范畴为 $(n-1)$ 重范畴之中的[范畴对象](范畴对象.md).



## 定义

### 归纳定义

归纳地定义 $n$ 重范畴:

- $0$ 重范畴就是[生象](生象.md).
- 对于 $n\geq 1$, $n$ 重范畴是 $(n-1)$ 重范畴的范畴中的[范畴对象](范畴对象.md) (即完备 [Segal 对象](Segal空间.md)).

### 通过代数模式定义

$n$ 重范畴可用[代数模式](代数模式.md) $\Delta^n$ 的 Segal 对象附加完备性条件来定义. 具体地, $\Delta^n$ 的一个 Segal 对象是一个函子
$$
X\colon (\Delta^n)^{\mathrm{op}} \to \mathsf{Ani},
$$
即一个 $n$ 重[单纯生象](单纯对象.md), 满足 Segal 条件
$$
X(\cdots,[k],\cdots)\simeq X(\cdots,[1],\cdots)^{\times_{X(\cdots,[0],\cdots)}k}.
$$
而 $n$ 重范畴则可定义为满足每个分量的[完备性](范畴对象.md)的 Segal 对象.



## 性质

### 与 $n$-范畴的联系

[$n$-范畴](∞-n-范畴.md)可视为某些方向退化的 $n$ 重范畴.

## 例

### 外张量积

给定范畴 $\mathcal C_1,\cdots,\mathcal C_n$, 可构造 $n$ 重范畴 $\mathcal C_1 \boxtimes\cdots\boxtimes\mathcal C_n$,
$$
([k_1],\cdots,[k_n]) \mapsto \mathcal C_1 ([k_1])\times\cdots\times\mathcal C_n ([k_n]).
$$

### 景的二重范畴

[景](景.md)构成一个二重范畴 (double category). 两类态射分别称为景的态射和余态射.

### 正交分解系与二重范畴

[Branko Juran](JuranFactDCat.md) 证明每个[正交分解系](正交分解系.md)都可视为一个二重范畴, 两类态射分别就是分解系中的两类态射.

来自正交分解系的二重范畴称为**分解二重范畴**.

不妨采取如下约定 (参考 [Blom–Loubaton–Ruit](BlomLoubatonRuitAlgd.md), 其与 [Juran](JuranFactDCat.md) 约定相反): 正交分解系中的**左类**在二重范畴中为**纵向**态射, **右类**为**横向**态射. (相反的约定当然也可以.)

若将二重范畴视为 $\mathsf{Cat}$ 中的[完备 Segal 对象](范畴对象.md) $\mathcal C \colon \Delta^{\mathrm{op}}\to \mathsf{Cat}$, 其中

- $\mathcal C_0$ 的**态射**视为**纵向**态射,
- $\mathcal C_1$ 的**对象**视为**横向**态射,
- $\mathcal C_1$ 的**态射**视为方块 (即 $\mathcal C$ 作为双单纯对象时在 $([1],[1])$ 上的元素),

则 $\mathcal C$ 为分解二重范畴当且仅当 "取横向态射的终点" 函子 $t\colon \mathcal C_1 \to \mathcal C_0$ 为[推前纤维化](纤维范畴.md). 这个条件是直观的: 每个图
$$
\begin{array}{ccc}
\bullet & \rightarrow & \bullet \\
 &  & \downarrow \\
 &  & \bullet
\end{array}
$$
都能唯一地填充为方块. 这对应着分解系统中 "将错误顺序的复合变为正确顺序的复合" 的操作.


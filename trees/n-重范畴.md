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


## 性质

### 与 $n$-范畴的联系



## 例

### 景的二重范畴

[景](景.md)构成一个二重范畴 (double category). 两类态射分别称为景的态射和余态射.

### 正交分解系与二重范畴

每个[正交分解系](正交分解系.md)都可视为一个二重范畴, 两类态射分别就是分解系中的两类态射.
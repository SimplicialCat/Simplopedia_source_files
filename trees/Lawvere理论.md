---
title: Lawvere 理论
tag: 百科
subject: [逻辑](逻辑.md)
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

### 作为语法范畴

Lawvere 理论的[语法范畴](语法范畴.md)是满足如下条件的范畴 $\mathcal T$:

- $\mathcal T$ 具有有限[积](积(范畴论).md);
- $\mathcal T$ 有一个对象 $x$, 使得所有对象都同构于某个 $x^n$ ($n$ 为自然数).

### 作为自由代数单子

Lawvere 理论是 $\mathsf{Set}$ 上的[有限性单子](有限性单子.md), 即保持滤余极限的单子.

## 性质

### 由模型的范畴恢复

对于 Lawvere 理论 $\mathcal T$, 其在 $\mathsf{Set}$ (或 $\mathsf{Ani}$) 中的模型的范畴 $\mathsf{Mod}(\mathcal T)$ 可以恢复出 $\mathcal T$ 本身.

具体地, 给定[可表现范畴](可表现范畴.md) $\mathcal C$ 以及其中的一个对象 $\mathbf{1}$, 满足 $\operatorname{Hom}(\mathbf{1},-)\colon \mathcal C\to\mathsf{Set}$ [保守](保守函子.md)且保持[筛余极限](筛余极限.md). 令 $\mathcal T$ 为 $\mathcal C$ 中的对象 $\mathbf{1}^{\sqcup n}\,(n\geq 0)$ ("有限生成自由对象") 构成的全子范畴, 那么 $\mathcal C\simeq\mathsf{Mod}(\mathcal T)$.

这是一件不寻常的事情: 一般的一阶理论不能由它在 $\mathsf{Set}$ 中的模型恢复出来.

## 例

见[代数理论](代数理论.md).
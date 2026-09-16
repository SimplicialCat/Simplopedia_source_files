---
title: Segal 范畴 Γ
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

## 定义

### 直接定义

Segal 范畴 $\Gamma$ 是[带基点](带基点对象.md)有限集范畴的[反范畴](反范畴.md):
$$
\Gamma := \mathsf{Fin}_*^{\mathrm{op}}.
$$
记其对象为 $\underline{n} = \{*,1,\cdots,n\}\,(n\geq 0)$.

由定义, 范畴 $\Gamma$ 的态射可描述如下: 态射 $\underline{n} \to \underline{m}$ 将每个 $1\leq i\leq n$ 对应到 $\{1,\cdots,m\}$ 的一个子集, 这些子集互不相交.

### 通过泛性质

称具有[零对象](零对象.md)和有限[积](积(范畴论).md)的范畴为**半加性范畴**.

**定义**. Segal 范畴 $\Gamma$ 是一个对象生成的[自由](自由-遗忘伴随.md)半加性范畴.

## 性质

Segal 范畴 $\Gamma$ 的[零对象](零对象.md)为 $[0]$, [积](积(范畴论).md)为
$$
\underline{n}\times \underline{m} = \underline{n+m}.
$$
特别地,
$$
\underline{n} = \underline{1}^{\times n}.
$$
这说明 $\Gamma$ 是一个 [Lawvere 理论](Lawvere理论.md). 事实上, 它正是[带基点对象](带基点对象.md)的 Lawvere 理论.

### 与单纯形范畴的关系

[单纯形范畴](单纯形范畴.md) $\Delta$ 到 $\Gamma$ 有一函子, 将对象 $[n]\in\Delta$ 对应到 $\underline{n}\in\Gamma$. 详见 [Segal 函子 $\gamma$](Segal函子γ.md).


### 代数模式

范畴 $\Gamma$ 可用于定义 [$\mathbb E_\infty$-代数](交换代数.md)的[代数模式](代数模式.md).
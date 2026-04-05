---
title: Thom 谱
tag: 百科
subject: [稳定同伦论](稳定同伦论.md)
author: [SimplicialCat](SimplicialCat.md)
---


## 定义

定义 $d$ 阶实[向量丛](向量丛.md) $\xi\colon V\to X$ 的 **Thom 谱**为其 [Thom 空间](Thom空间.md)的[纬悬谱](纬悬谱.md)的 $-d$ 次位移
$$
\operatorname{Th}(\xi) := \Sigma^{-d}\Sigma^{\infty}\text{Th}(V).
$$

## 性质

### 幺半性

对于 $X$ 上的向量丛 $\xi$ 与 $Y$ 上的向量丛 $\eta$, 记 $\xi\boxplus\eta$ 为 $X\times Y$ 上 $\xi$ 与 $\eta$ 的外直和, 则 $(X\times Y)^{\xi\boxplus\eta}\simeq X^\xi \wedge Y^{\eta}$, 从而
$$
\operatorname{Th}(\xi\boxplus\eta)\simeq\operatorname{Th}(\xi)\wedge\operatorname{Th}(\eta);
$$
这是由于空间偶的缩积
$$
	(V,V_0)\wedge (W,W_0)=(V\times W,V\times W_0\cup V_0\times W).
$$

## 例

### 万有 Thom 谱

- 万有实 Thom 谱 [MO](MO.md) 为万有实向量丛的 Thom 谱.
- 万有实 Thom 谱 [MU](MU.md) 为万有复向量丛的 Thom 谱.

## 相关概念

[Thom 空间](Thom空间.md)
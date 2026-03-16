---
title: Thom 空间
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Thom 空间是一种由[向量丛](向量丛.md) "扭曲" 的[纬悬](纬悬.md).

另见 [Thom 谱](Thom谱.md).

## 定义

对于空间 $X$ 上的向量丛 $\xi\colon V\to X$, 定义其 Thom 空间为[生象](生象.md)
$$
X^\xi := \operatorname{cofiber} (V\setminus X \hookrightarrow V)\simeq \operatorname{cofiber}(S(V)\hookrightarrow D(V)),
$$
其中 $D(V)$, $S(V)$ 分别为圆盘丛与球丛.

## 性质

### 函子性

对于映射 $f\colon Y\to X$ 与 $X$ 上的向量丛 $\xi$, 有自然的映射
$$
Y^{f^*\xi} \to X^\xi.
$$

### 幺半性

设 $\xi\boxplus\eta\colon V\times W\to X\times Y$ 为两个向量丛的外直和, 则
$$
(X\times Y)^{\xi\boxplus\eta} \simeq X^\xi\wedge Y^\eta.
$$

### 稳定性

$$
X^{\xi\oplus\mathbb{R}^n} = \Sigma^n X^\xi.
$$

### 平凡丛的 Thom 空间

$$
X^{\mathbb{R}^n} = \Sigma^n X.
$$

## 相关概念

[Thom 谱](Thom谱.md), [广义上同调中的定向](广义上同调中的定向.md)
---
title: "幂零 Lie 代数"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


对于 [Lie 代数](Lie代数.md) $\mathfrak g$, 定义序列 $\mathfrak g_i$: $\mathfrak g_0=\mathfrak g$, $\mathfrak g_{i+1}=[\mathfrak g_i,\mathfrak g]$. 若存在 $i$ 使得 $\mathfrak g_i=0$, 则称 $\mathfrak g$ 幂零. 

## 性质

幂零 Lie 代数的子与商均幂零.

**命题**. 对有限维 Lie 代数 $\mathfrak g$, $\mathfrak g$ 幂零当且仅当对任意 $x\in\mathfrak g$, $\operatorname{ad}(x)$ 幂零.

**定理** (Engel). 设 $\pi\colon \mathfrak g\to\operatorname{End}_k(V)$ 是 Lie 代数 $\mathfrak g$ 的有限维表示, 使得对任意 $X\in\mathfrak g$, $\pi(X)$ 幂零. 那么
- $\pi(\mathfrak g)$ 幂零.
- 存在所有 $\pi(X)$ 特征值为 $0$ 的共同特征向量.
- 存在 $V$ 的一组基使得所有 $\pi(X)$ 的矩阵为上三角阵.

## 相关概念

[可解 Lie 代数](可解Lie代数.md)
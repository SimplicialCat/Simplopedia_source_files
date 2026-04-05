---
title: "Thom 类"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---



设 $\xi\colon V\to X$ 是带定向的向量丛, $\mathrm {Th}(\xi)$ 为 [Thom 谱](Thom谱.md), 则有同构
$$
\mathrm {Th}(\xi)\wedge H\mathbb{Z} \simeq X_+ \wedge H\mathbb{Z}.
$$

**定理** (Thom) 对于局部紧空间 $X$, 记 $\check H_c^*(X)$ 为紧支集 [Čech 上同调](Čech上同调.md), 定义为 $\operatorname{ker}(H^*(\dot X) \to H^*(\infty))$. 设 $X$ 为紧拓扑空间, $V\to X$ 是带定向的 $n$ 维向量丛, 那么存在唯一的上同调类 $u_V\in \check H_c^n(V)$, 使得它限制在每个纤维 $V_x$ 上等同于定向类, 且有同构
$$
\smile u_V\colon \check H_c^i(X)\to \check H_c^{i+n}(V).
$$

Thom 类在 $X$ 上的限制为 [Euler 类](Euler类.md).

## 性质

设 $V_1$, $V_2$ 分别为 $X_1$, $X_2$ 上的向量丛, 则两个向量丛的外直积的 Euler 类等于各自 Euler 类的积:
$$
u_{V_1\times V_2} = u_{V_1} \smile u_{V_2}.
$$
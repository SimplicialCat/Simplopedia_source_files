---
title: Maurer–Cartan 形式
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Maurer–Cartan 形式是 Lie 群 $G$ 上唯一的左不变 $\mathfrak g$-取值 $1$-形式.

## 定义

记 $L_g\colon G\to G$ 为左平移, 定义 $G$ 上的 $\mathfrak g$-值 $1$-形式 $\omega$:
$$
\omega_g (X)=(L_{g^{-1}})_*X\,(X\in T_gG).
$$

## 性质

不变性:
$$
(R_g)^*\omega = \operatorname{Ad}(g^{-1})\circ \omega.
$$
**证明**.
设 $X\in T_hG$.
$$
\begin{aligned}
	(R_g)^*\omega (X)&= \omega((R_g)_*X)\\
	&=(L_{(hg)^{-1}})_*X\\
	&=(L_{g^{-1}})_* (L_{h^{-1}})_*X\\
	&=\operatorname{Ad}(g^{-1})((L_{h^{-1}})_*X)=\operatorname{Ad}(g^{-1})\circ\omega (X).
\end{aligned}
$$

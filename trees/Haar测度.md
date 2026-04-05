---
title: "Haar 测度"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


在任何 Lie 群上存在一个左不变的体积形式 (处处非零的最高形式), 且在差一个常数的意义下唯一. 它对应的测度称为**左 Haar 测度**. 在紧 Lie 群上, 我们可进一步要求全空间的测度为 $1$, 称之为**归一化左 Haar 测度**. 类似地可定义右 Haar 测度. 当左右两者相等时, 我们称之为 **Haar 测度**.

一般, 左 Haar 测度与右 Haar 测度未必相同. 例如 $\displaystyle G= \Big\{ \begin{pmatrix} y & x \\ 0 & 1 \end{pmatrix}\colon x,y\in\mathbb{R},y>0\Big\}$ 的左 Haar 测度是 $y^{-2}\,dxdy$, 而右 Haar 测度是 $y^{-1}\,dxdy$. 两者通过取逆映射相联系.

## 模函数

设 $\omega$ 是 Lie 群 $G$ 上的左 Haar 测度. 那么存在函数 $\Delta\colon G\to \mathbb{R}^+$, 满足
$$
\omega = \Delta(g) R_g^* \omega.
$$
称 $\Delta$ 为 $G$ 的**模函数**. 容易说明 $\Delta$ 是 Lie 群同态.

若 $\Delta$ 恒等于 $1$, 则称 Lie 群 $G$ 是幺模 (unimodular) 的; 这等价于存在 (双不变的) Haar 测度.

**定理**. 紧 Lie 群是幺模的.

**证明**. 若 $G$ 是紧的, 则 $\Delta(G)$ 是 $\mathbb{R}^+$ 的紧子群, 它只能是平凡群. $\square$


---
title: "Laplace 算子"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


另见[广义 Laplace 算子](广义Laplace算子.md).

## Hodge Laplace 算子

Riemann 流形上的微分形式的 Hodge Laplace 算子
$$
\triangle = (d+\delta)^2=d\delta+\delta d.
$$
Laplace 方程 $\triangle f = 0$ 的解称为调和函数或调和形式. 微分形式 $\mu$ 是调和形式等价于 $d\mu=0$ 且 $\delta\mu=0$.

在整个 $M$ 上调和的函数与 $H^0(M)$ 一致, 这是一个非平凡的整体的结论. 更一般的结论是调和形式的 [Hodge 理论](Hodge分解定理.md).

## Laplace--Beltrami 算子

Riemann 流形上的函数的 Laplace--Beltrami 算子
$$
\triangle f =\operatorname{div}\operatorname{grad}f= \operatorname{tr}\operatorname{Hess}f
$$
参见 [Hesse 矩阵](Hesse矩阵.md).

使用 [Levi-Civita 联络](Levi-Civita联络.md), Laplace--Beltrami 算子可表示为
$$
\triangle f = -g^{ij}\nabla_i\nabla_j f= - \nabla^i \nabla_i f.
$$
使用坐标, Laplace--Beltrami 算子可表示为
$$
\triangle = \frac{1}{\sqrt{\det g}} \frac{\partial}{\partial  x^i} \left(g^{ij} \sqrt{\det g}\frac{\partial}{\partial  x^j}\right).
$$


## Bochner Laplace 算子

对于联络给出的算子 $\nabla\colon \Omega^p(M)\to \Omega^p(M)\otimes \Omega^1(M)$, Bochner Laplace 算子定义为
$$
\triangle ' = \nabla^* \nabla,
$$
其中 $\nabla^*$ 是 $\nabla$ 的伴随.

## Weitzenböck 恒等式


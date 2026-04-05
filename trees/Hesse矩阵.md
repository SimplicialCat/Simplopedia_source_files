---
title: "Hesse 矩阵"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


对于 Riemann 流形 $M$ 上的函数 $u$, Hesse 矩阵
$$
\operatorname{Hess}u := \nabla^2 u = \nabla(du)
$$
是 $T^*M\otimes T^*M$ 的截面. 由 $\nabla$ 的定义,
$$
\nabla^2 u (X,Y)=\nabla_X(\nabla u)(Y)=\nabla_X\nabla_Y u - \nabla_{\nabla_{X}Y}u.
$$
由 [Levi-Civita 联络](Levi-Civita联络.md)的无挠性, 知 Hesse 矩阵对称:
$$
\nabla^2 u(X,Y)=\nabla^2 u (Y,X).
$$
使用局部坐标,
$$
\nabla^2 u = (\partial _i\partial _j u-\Gamma_{ij}^k\partial _k u) dx^i\otimes dx^j.
$$
Hesse 矩阵的迹是 [Laplace 算子](Laplace算子.md).
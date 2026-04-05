---
title: "Killing 向量场"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


## 定义

在 Riemann 流形 $(M,g)$ 上, 若向量场 $X$ 满足
$$
\mathcal L_X g = 0,
$$
则称 $X$ 为 Killing 向量场.

## 性质

$X$ 是 Killing 向量场等价于对任意向量场 $Y,Z$,
$$
g(\nabla_Y X, Z) + g(Y, \nabla_Z X) = 0;
$$
写成坐标形式即
$$
\nabla_i X^k g_{kj} + \nabla_j X^k g_{ki} = 0.
$$
等价地,
$$
\nabla_i X_j + \nabla_j X_i = 0.
$$
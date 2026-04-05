---
title: "sl2的表示"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


$\mathfrak {sl}(2)$ 的表示理论是[约化 Lie 代数](约化Lie代数.md)的表示理论的核心, 因为后者最困难的部分在于单 Lie 代数的不可约表示, 而后者常常可化为 $\mathfrak {sl}(2)$ 的表示.

$\mathfrak {sl}_2$ 的一组基为
$$
X=\begin{pmatrix}0&1\\0&0\end{pmatrix}\quad Y=\begin{pmatrix}0&0\\1&0\end{pmatrix}\quad H=\begin{pmatrix}1&0\\0&-1\end{pmatrix},
$$
它们满足关系
$$
[H,X]=2X,\quad[H,Y]=-2Y,\quad[X,Y]=H.
$$

$\mathfrak {sl}(2)$ 的有限维不可约表示一定包含一个最高权向量, 被 "升算子" $X$ 零化, 且是 $H$ 的特征向量, 特征值为最大权 $\Lambda$.

最大权 $m$ 的表示可实现如下: 考虑两个变量 $z_1,z_2$ 的 $m$ 次齐次多项式的空间,
$$
X = - z_2 \frac{\partial}{\partial  z_1},\quad
Y = - z_1 \frac{\partial}{\partial  z_2},\quad
H = - z_1 \frac{\partial}{\partial  z_1} + z_2 \frac{\partial}{\partial  z_2}.
$$

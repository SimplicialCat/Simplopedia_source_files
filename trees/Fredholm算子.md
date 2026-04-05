---
title: "Fredholm 算子"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


## 定义

设 $H$ 为 Hilbert 空间, $\mathcal B$ 为 $H$ 上的有界线性算子构成的 Banach 代数. Fredholm 算子是指 $\mathcal B$ 中核与余核维数均有限的算子.

Fredholm 算子在紧算子误差的意义下可逆, 即 Fredholm 算子是 "有界算子商去紧算子" $\mathcal B(H_1,H_2)/ \mathcal K(H_1,H_2)$ 中的可逆元.

对于 Fredholm 算子 $T$, 方程 $Tu=0$ 仅有有限个线性无关的解; 且方程 $Tu=v$ 有解只需要 $v$ 满足有限个线性条件.

### 无解算子的情形

我们也可对 (稠密子空间上定义的) 无界的闭算子谈论它何时是 Fredholm 算子.

## 指标

Fredholm 算子 $T$ 的[解析指标](解析指标.md)定义为
$$
\operatorname{ind}T=\dim\ker T - \dim\operatorname{coker}T.
$$
类似地可定义两个不同 Hilbert 空间之间的 Fredholm 算子.

指标是连续的, 而只取整数值, 因此对于一族随时间 $t$ 连续变化的 Fredholm 算子 $A_t$, 指标 $\operatorname{ind} A_t$ 与 $t$ 无关.

## 与 K-理论的关系

一个可分 Hilbert 空间上 Fredholm 算子的空间是 $0$ 阶[拓扑 K-理论](拓扑K-理论.md)的分类空间.

## 例

考虑 $\ell^2 = L^2(\mathbb{Z}_{\geq 0})$ 上的移位算子 $S\colon (x_0,x_1,x_2,\cdots)\mapsto (0,x_0,x_1,\cdots)$. 则 $S$ 为 Fredholm 算子, 且 $\operatorname{ind}S=-1$.

[椭圆算子](椭圆算子.md) (作用在 $L^2$ 空间上) 是无界的 Fredholm 算子, 其指标是非常重要的问题.
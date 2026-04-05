---
title: Lie 算畴
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

### 作为对称序列

固定基域 $k$, 记 $\operatorname{Lie}(x_1,\cdots,x_n)$ 为 $n$ 个变元生成的[自由](自由-遗忘伴随.md) $k$-Lie 代数; 令 $L(n)$ 为 $\operatorname{Lie}(x_1,\cdots,x_n)$ 中由所有恰包含每个 $x_i$ 一次的单项式生成的子空间. 具体地, 其一组基为
$$
[x_{\sigma(1)},[x_{\sigma(2)},\cdots[x_{\sigma(n-1)},x_n]\cdots]],
$$
其中 $\sigma\in$ [$S_{n-1}$](对称群.md).

对称群 [$S_n$](对称群.md) 通过变元的置换作用于 $L(n)$ 上. 那么 $\{L(n)\}$ 构成 $k$-线性空间范畴上的[对称序列](对称序列.md).
---
title: 微分分次 Lie 代数
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

微分分次 Lie 代数是[链复形范畴](链复形无穷范畴.md)中的 [Lie 代数](Lie代数.md).

## 定义

微分分次 Lie 代数 (DGLA) $(L,[-,-],d)$ 由 $\mathbb{Z}$-分次线性空间 $L=\bigoplus_{i\in\mathbb{Z}} L^i$, Lie 括号 $[-,-]\colon L^i\times L^j\to L^{i+j}$ 以及微分 $d\colon L^i \to L^{i+1}$ 构成, 满足

- 分次交换性
$$[b,a]=(-1)^{\bar a\bar b}[a,b],$$
- Jacobi 恒等式
$$
[a,[b,c]] = [[a,b],c]+ (-1)^{\bar a \bar b}[b,[a,c]],
$$
- Leibniz 法则
$$
d[a,b]=[da,b]+(-1)^{\bar a}[a,db],
$$
- 以及 $dd=0$.

Jacobi 恒等式可理解为, 对于 $a\in L^i$, $\operatorname{ad}(a)$ 是 $i$ 阶导子.

## 例

对微分流形 $M$, Lie 代数 $\mathfrak g$, $M$ 上的 $\mathfrak g$-值微分形式 $\big(\Omega^\bullet(M,\mathfrak g),[-,-],d\big)$ 是微分分次 Lie 代数.


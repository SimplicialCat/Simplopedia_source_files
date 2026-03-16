---
title: "Pfaff 型"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Pfaff 型是偶数维反对称矩阵的一个函数. 在[陈--Weil 理论](陈--Weil理论.md)中, Pfaff 型对应 [Euler 类](Euler类.md).

## 定义

设 $A=(a_{ij})$ 是反对称矩阵, 将其对应到 $2$-向量 $\omega = \sum_{i<j} a_{ij} e_i \wedge e_j$, 定义 $\operatorname{Pf}(A)$ 满足
$$
\frac{1}{n!}\omega^n = \operatorname{Pf}(A) e_1\wedge\cdots \wedge e_n.
$$

## 性质

对反对称矩阵 $A$, $\operatorname{Pf}(A)^2 = \det (A)$. 对任意矩阵 $P$, $\operatorname{Pf}(P^T AP) = \det (P) \operatorname{Pf}(A)$.
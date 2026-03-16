---
title: Jacobi 多项式
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Jacobi 多项式是 Legendre 多项式, Chebyshev 多项式 (I 型及 II 型) 的共同推广.

## 定义

固定实数 $a,b>-1$. 记 $\mu(x)=(1-x)^\alpha (1+x)^\beta$. 两个连续函数 $f,g\colon [-1,1]\to\mathbb{R}$ 的内积定义为 
$$
(f,g) = \int_{-1}^{1} f(x) g(x) \mu(x)\,dx.
$$
称内积为零的两个函数正交.
**Jacobi 多项式**是 $[-1,1]$ 上关于两两正交的一族多项式 $P^{(a,b)}_n$.

记 $(a)_n := a (a+1) \cdots (a+n-1)$ 为上阶乘. Jacobi 多项式也可用[超几何函数](超几何函数.md)定义:
$$
P^{(a,b)}_n(x) := \frac{(a+1)_n}{n!}\cdot {_2}F{_1} \Big({-n,n+a+b+1\atop a+1};\frac{1-x}{2}\Big)
$$

## 性质

### 微分方程

Jacobi 多项式 $P^{(a,b)}_n$ 是[微分算子](微分算子.md)
$$
(1-x^2 )\frac{d^2}{d x^2} + (b-a-(a+b+2)x) \frac{d}{dx}
$$
的[特征向量](特征向量.md), 特征值为 $-n(n+a+b+1)$.
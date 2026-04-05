---
title : 非交换 Poincaré 对偶
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 陈述

设 $M$ 为流形, 同时用 $M$ 表示其对应的[生象](生象.md).

### 紧支集截面

设 $X \colon M \to \mathsf{Ani}_{*}$ 为函子, $U\subset M$ 为开集. 定义 $X$ 在 $U$ 上的**紧支集截面**的空间为
$$
\Gamma_{\mathrm{c}}(U,X) = \operatorname{colim}_{K\subset U} \Gamma(M,X) \times_{\Gamma(M\setminus K,X)} *,
$$
其中 $K\subset U$ 取遍 $U$ 的**紧**子集. 直观地, $\Gamma_{\mathrm{c}}(U,X)$ 的元素就是 $U$ 上取值于 $X$ 的函数, 在一个紧集之外的取值均为 $X$ 的基点.

那么 $\Gamma_{\mathrm{c}}(U,X)$ 关于 $U,X$ 均有 (协变) 函子性.

### 环路空间

记 $\mathsf{BTop}(n)$ 为 $n$-维流形与嵌入构成的 $\infty$-范畴中由 $\mathbb{R}^n$ 一个对象构成的全子范畴. 考虑范畴 $\mathsf{BTop}(n)_{/M}$, 即由嵌入 $\mathbb{R}^n\to M$ 构成的 $\infty$-范畴.

事实上, $\mathsf{BTop}(n)_{/M}$ 与[生象](生象.md) $M$ 之间有一个等价. 下面我们固定这个等价, 将二者等同起来.



### 非交换 Poincaré 对偶

**非交换 Poincaré 对偶**是如下命题:
$$
\int_M \Omega_M X \simeq \Gamma_{\mathrm{c}}(M,X).
$$

### 与经典 Poincaré 对偶的关系

下表显示了经典 Poincaré 对偶如何构成非交换 Poincaré 对偶的特例.

|对象|非交换版本|交换 (经典) 版本|
|-|-|-|
|系数| $X\colon M \to \mathsf{Ani}_*$| $A\colon M \to \mathsf{Mod}(\mathbb{Z})$<br>$\to\mathsf{CAlg}(\mathsf{Ani})$|
|$\mathbb E_M$-代数|$\Omega_M X$| $A[-n]$|
|[分解同调](分解同调.md)|$\displaystyle \int_M \Omega_M X$|$\displaystyle\int_M A[-n]$|
|紧支集截面|$\Gamma_{\mathrm{c}}(M,X)$|$\operatorname{colim}_M A[-n]$|


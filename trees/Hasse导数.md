---
title: "Hasse 导数"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

#代数

## 定义

设 $k$ 为环, $R$ 为 $k$-代数.

对非负整数 $m,n$, 定义
$$
D^{(n)}(x^m)=\begin{cases}
\dbinom{m}{n}& m\geq n,\\
0&\text{其余情况},
\end{cases}
$$
并线性延拓到 $k[x]$. 可以验证这些映射定义了导子 $D \colon k[x] \to k[x]$.

使用如下引理, 我们可将 $D$ 延拓到 $k(x)$.

**引理**. 设 $A$ 为[完备](完备.md)分次代数, 且 $A_0$ 为域. 设 $R$ 为整环 $D \colon R \to A$ 为同态. 若 $D^{(0)} \colon R \to A_0$ 为嵌入, 则 $D$ 唯一地延拓到 $R$ 的分式域上.

**证明**. 由于 $A$ 完备且 $A_0$ 为域, 可知 $A$ 中零次项非零的元素均可逆.

## 性质

设 $K/k$ 为扩域, $x\in K$ 满足 $x$ 在 $k$ 上超越, 而 $K/k(x)$ 是有限可分扩张 (这样的 $x$ 称为分离变量, separating variable). 此时 [Kähler 微分](Kähler微分.md)环满足 $\dim_K\Omega_{K/k}=1$, 且 $dx\neq 0$.
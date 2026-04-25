---
title: Gestalten - 几何对象
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

## 例

### 仿射直线

任取基底 $X = \operatorname{Gest}(A)$. 考虑将[](term-gestalt.md) $Y=\operatorname{Gest}_X(B)$ 映射为 $B_0\in A_1$ 的函子. 其表示对象为
$$
\mathbb A^1 := \operatorname{Gest}_X(A_0\{x\}),
$$
$A_0\{x\}$ 表示对 $A_0$ 自由添加一个元素得到的 $\mathbb E_\infty$-代数. 例如

$$
*\{x\} = \bigsqcup_{n\geq 0} */\Sigma_n,
$$
$$
\mathbb{Z}\{x\} = \bigoplus_{n\geq 0} \mathbb{Z}[*/\Sigma_n].
$$

还可以定义另一个对象
$$
\mathbb G_a := \operatorname{Gest}_X (A_0[x]),
$$
$A_0[x]$ 是多项式代数 $\bigsqcup_{n\geq 0} A_0\cdot x^n$. 例如
$$
*[x] = \mathbb{N}.
$$

在 $\mathbb{Q}$ 上, $\mathbb{A}^1\simeq\mathbb G_a$.

### 乘法群

任取基底 $X = \operatorname{Gest}(A)$. 考虑将[](term-gestalt.md) $Y=\operatorname{Gest}_X(B)$ 映射为 $B_0^\times \in A_1$ 的函子. 其表示对象为
$$
\mathrm{GL}_1 := \operatorname{Gest}_X(A_0\{x^{\pm 1}\}),
$$
$A_0\{x\}$ 表示对 $A_0$ 自由添加一个**可逆**元素得到的 $\mathbb E_\infty$-代数.

还可以定义另一个对象
$$
\mathbb G_m := \mathrm{GL}_1\times_{\mathbb A^1}\mathbb G_a = \operatorname{Gest}_X (A_0[x^{\pm 1}]),
$$
$A_0[x^{\pm 1}]$ 是代数 $\bigsqcup_{n\in\mathbb{Z}} A_0\cdot x^n$. 例如
$$
*[x^{\pm 1}] = \mathbb{Z}.
$$
$\mathbb G_m$ 表示的函子将 $Y=\operatorname{Gest}(B)$ 映射到 $\operatorname{Hom}_{\mathsf{CAlg}(\mathsf{Ani})}(\mathbb{Z}, B_0)$.

在 $D(\mathbb{Q})$ 上, $\mathrm{GL}_1\simeq\mathbb G_m$.

### 射影直线

设 $X = D(\mathbb{Q})$. 考虑两个映射 $\mathrm{GL}_1 \to\mathbb A^1$, 分别是 $x\mapsto x$ 与 $x\mapsto x^{-1}$. 在[](term-gestalt.md)中可作推出
$$
\mathbb A^1 \sqcup_{\mathrm{GL}_1} \mathbb A^1.
$$
([](term-gestalt.md)的余极限是 Stafanich 环的极限, 也就是逐项取极限.)

### $\mathbb G_m$ 的分类叠

[模空间](模空间.md)是几何对象的范畴上的层.

### de Rham 空间


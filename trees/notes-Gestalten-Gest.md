---
title: Gestalten - 几何对象
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---



## Gestalten 的意象

Gestalten 的范畴在实用意义上是个[意象](意象.md), 实际上是 "可数意象" (countably topos), 满足了我们对一个几何对象的范畴的所有期待.

**命题-定义**. 设小范畴 $\mathcal C$ 具有可数余极限和有限极限. 若如下等价条件成立, 则称 $\mathcal C$ 为**可数意象**:


- 存在具有有限极限的小范畴 $S$, 以及[正合局部化](正合局部化.md) $\mathsf{Psh}(S)^{\aleph_1} \to \mathcal C$.
- $\mathcal C$ 满足可数版本的 [Giraud 公理](Giraud公理.md), 即
  - $\mathcal C$ 中的可数余极限是万有余极限;
  - $\mathcal C$ 中的和无交;
  - 群胚对象有效.
- 范畴 $\mathsf{Ind}_{\aleph_1}(\mathcal C)$ 是意象.

### 拉回保持余极限

拉回保持余极限是意象的一个重要性质, 也是 [Giraud 公理](Giraud公理.md)的第一条. 我们看看 Gestalten 为何满足这一性质, 这其实令人惊叹.

Gestalten 的余极限是 Stefanich 环的极限, 那么这个性质就是说 Stefanich 环的极限在基变换下保持.

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


---
title: 极限与余极限交换
tag: 百科
subject: [范畴论](范畴论.md)
author: [SimplicialCat](SimplicialCat.md)
---

## 陈述

在 $\mathsf{Set}$ 或 $\mathsf{Ani}$ 中, 对指标范畴 $I,J$ 以及一族对象 $X_{i,j}$, 有自然的映射
$$
\operatorname{colim}_{i\in I}\operatorname{lim}_{j\in J}X_{i,j} \to \operatorname{lim}_{j\in J}\operatorname{colim}_{i\in I} X_{i,j};
$$
当它是等价时, 称 $I$-极限与 $J$-余极限交换.

两个常见的例子: $\mathsf{Set}$ 或 $\mathsf{Ani}$ 中,

- [有限极限](有限极限.md)与[滤余极限](滤余极限.md)交换,
- [有限积](积(范畴论).md)与[筛余极限](筛余极限.md)交换.

这两个事实分别可用于描述[本质代数理论](本质代数理论.md)以及[代数理论](代数理论.md).

注意, 对于 $\mathsf{Set}$ 与 $\mathsf{Ani}$, "[有限](有限范畴.md)" 的概念不相同, 从而滤, 筛等概念也不尽相同.

以下对 $\mathsf{Set}$ 陈述的命题对 $\mathsf{Ani}$ 也有相应版本.

### 极限图类的 Galois 对应

"$\mathsf{Set}$ 中的 $I$-极限与 $J$-余极限交换" 的关系给出极限图的类与余极限图的类之间的 [Galois 对应](Galois对应.md).

对于小范畴的类 $\mathfrak I$, $\mathfrak J$, 记

- ${\mathfrak I}^{r} = \{$ $J$ : 对任意 $I\in \mathfrak I$, $\mathsf{Set}$ 中 $J$-余极限与 $I$-极限交换 $\}$;
- ${\mathfrak J}^{l} = \{$ $I$ : 对任意 $J\in \mathfrak J$, $\mathsf{Set}$ 中 $J$-余极限与 $I$-极限交换 $\}$.

由定义, $\{\text{有限范畴}\}^{r} = \{\text{滤范畴}\}$.

注意, $\{\text{滤范畴}\}^{l} \supset \{\text{有限范畴}\}$, 但 $\{\text{滤范畴}\}^{l}$ 不仅包含有限范畴, 还包含所有存在[共首](共首函子.md)有限子范畴的范畴, 如 $(\mathbb{N},\leq)$. 不过, 以这种范畴为指标的极限等价于有限极限.



### 与锥的存在性的关系

[滤范畴](滤范畴.md)的有限图上有[余锥](锥(范畴论).md). 如下是这一结论的推广.

**命题**. 对于小范畴 $I$, $J$, 若 $\mathsf{Set}$ 中 $I$-极限与 $J$-余极限交换, 则 $J$ 中的任何 $I^{\mathrm{op}}$-图 $X\colon I^{\mathrm{op}}\to J$ 上有[余锥](锥(范畴论).md).

*证明*. 考虑函子 $F\colon I\times J\to\mathsf{Set}$,
$$
F(i,j) = \operatorname{Hom}_J(X(i),j).
$$
那么
$$
\operatorname{colim}_{j\in J} F(i,j) = 1,
$$
从而
$$
\operatorname{lim}_{i\in I}\operatorname{colim}_{j\in J}F(i,j) = 1.
$$
假设 $\mathsf{Set}$ 中 $I$-极限与 $J$-余极限交换, 则
$$
\operatorname{colim}_{j\in J}\operatorname{lim}_{i\in I}F(i,j) = 1.
$$
这说明存在 $j\in J$ 使得 $\operatorname{lim}_{i\in I}F(i,j)$ 至少存在一个元素. 而 $\operatorname{lim}_{i\in I}F(i,j)$ 的元素等同于 $X$ 上的余锥, 故结论成立.
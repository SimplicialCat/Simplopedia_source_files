---
title: Ran 空间
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

一个空间的 Ran 空间, 粗略地说是其中有限点集的模空间; 这个有限点集没有顺序; 当两个或更多的点在某处重合时, 等同于在此处只有一个点.

空间 $X$ 的 Ran 空间
$$
\operatorname{Ran}X \text{ ``='' } 1 + X + \frac{X^2}{S_2} + \frac{X^3}{S_3} + \cdots
$$
类似于实数 $x$ 的指数
$$
\exp(x) = 1 + x + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots.
$$

## 定义

记 $\mathsf{Fin}^{\mathrm{surj}}$ 为有限集与满射构成的范畴. 那么空间 $X$ 的 Ran 空间可定义为
$$
\operatorname{Ran} X := \operatorname{colim}_{I\in \mathsf{Fin}^{\mathrm{surj}}} X^I.
$$

**注意**. 有限集 $I$ 的置换 (自同构) 也是范畴 $\mathsf{Fin}^{\mathrm{surj}}$ 的态射. 这意味着映射 $X^n \to \operatorname{Ran}X$ 穿过商空间 $X^n / S_n$.

## 性质

### 幺半群

空间 $X$ 上的 Ran 空间是 $X$ 生成的幺半群: 有 "并" 映射
$$
\operatorname{Ran}X \times \operatorname{Ran}X \to \operatorname{Ran}X.
$$

### 滤

Ran 空间 $\operatorname{Ran}X$ 带有[滤过](滤过.md),
$$
(\operatorname{Ran}X)_n = \operatorname{Sym}^nX:= X^n / S_n.
$$

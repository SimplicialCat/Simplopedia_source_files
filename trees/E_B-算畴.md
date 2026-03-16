---
title : E_B-算畴
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

算畴 $\mathbb E_B$ 是 [Lurie HA](LurieHA.md) (Definition 5.4.2.10) 引入的一个记号, 对任意映射 $B \to \mathsf{BTop}(n)$ 定义一个[算畴](算畴.md) $\mathbb E_B$, 推广了 [$\mathbb E_n$-算畴](En-算畴.md).

## 定义

记 $\mathsf{BTop}(n)$ 为拓扑群 ([生象](生象.md)[群](群.md)) $\mathsf{Top}(n):=\operatorname{Aut}_{\mathsf{Top}}(\mathbb{R}^n)$ 的[逆环路空间](逆环路空间.md), 也即流形与嵌入构成的 $\infty$-范畴 $\mathsf{Mfd}_n$ 中 $\mathbb{R}^n$ 一个对象构成的全子范畴.

回忆任何范畴 $\mathcal C$ 均给出算畴 $\mathcal C^{\coprod}$, 其 $m$ 元运算为
$$
\operatorname{Hom}(X_1,\cdots,X_m; Y) := \prod_{i=1}^m \operatorname{Hom}_{\mathcal C}(X_i,Y).
$$

考虑[算畴](算畴.md) $\mathsf{BTop}(n)^\otimes$, 其 $m$ 元运算为开嵌入 $\sqcup_m\mathbb{R}^n \to \mathbb{R}^n$.

给定映射 $B\to \mathsf{BTop}(n)$, 定义 $\mathbb E_B$ 为如下算畴:
$$
\mathbb E_B := \mathsf{BTop}(n)^\otimes \times_{\mathsf{BTop}(n)^{\coprod}}B^{\coprod}.
$$
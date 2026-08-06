---
title: 算畴上的代数上的模
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

对于单色[算畴](算畴.md) $\mathcal O$ 上的[代数](算畴上的代数.md) $A$, 可以谈论 $A$ 上的 ($\mathcal O$-)模. 这种模是如下的一个新的算畴 $\widetilde{\mathcal O}$ 上的代数:

记 $a$ 为算畴 $\mathcal O$ 唯一的颜色, 添加第二种颜色 $m$, 并且对每种运算 $a^n\to a$, 用 $m$ 代替左边的一个 $a$ 和右边的 $a$, 得到一种新的运算 $a\cdots a m a\cdots a \to m$, 即得到算畴 $\widetilde{\mathcal O}$.

## 定义

### 通过算子范畴

[算畴](算畴.md) $\mathcal O$ 的一种定义是 $\mathsf{Fin}_*$ 上的纤维化 $p\colon \mathcal O^\otimes\to\mathsf{Fin}_*$, 称为算子范畴. 我们定义一个新的算畴 $\widetilde{\mathcal O}$ 的算子范畴 $\widetilde {\mathcal O}^\times$ 为如下拉回:
$$
\begin{array}{ccc}
\widetilde {\mathcal O}^\otimes & \rightarrow & \widetilde {\mathsf{Fin}}_* \\
\downarrow &  & \downarrow \\
\mathcal O^\otimes & \rightarrow & \mathsf{Fin}_*
\end{array}
$$
其中 $\widetilde {\mathsf{Fin}}_*$ 是

## 例

对于 [$\mathbb E_1$](A∞-算畴.md)-代数 (即[结合代数](结合代数.md)) $A$, 其上的 $\mathbb{E}_1$-模不是[左模或右模](结合代数上的模.md), 而是 $(A,A)$-[双模](双模.md). 在对称幺半范畴中, 结合代数 $A$ 上的双模也即 $A\otimes A^{\mathrm{op}}$-左模.

对于 [$\mathbb{E}_\infty$](E∞-算畴.md)-代数 (即[交换代数](交换代数.md)) $A$, 其上的 $\mathbb{E}_\infty$-模等同于左模, 也等同于右模; 但注意 $\mathbb{E}_\infty$-模**不**等同于双模 ($\mathbb{E}_1$-模).

## 性质

### 泛包络代数

算畴 $\mathcal O$ 上的代数 $A$ 上的模等同于一个结合代数上的[左模](结合代数上的模.md), 这个结合代数称为 $A$ 的[泛包络代数](泛包络代数(算畴).md) $\mathcal UA$. [Lie 代数的泛包络代数](泛包络代数.md)是这个概念的特例.
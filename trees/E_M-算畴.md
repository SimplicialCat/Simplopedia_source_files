---
title : E_M-算畴
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

$\mathbb E_M$-算畴是指[流形](流形.md) $M$ 给出的一个[算畴](算畴.md), 其颜色为 $M$ 中的开圆盘 (即 $\mathbb{R}^n$ 到 $M$ 的开嵌入), 运算为不交圆盘的含入.

$\mathbb{E}_M$ 的颜色的范畴等价于 $M$ 对应的[生象](生象.md) $\operatorname{Sing}M$. 但是 $\mathbb{E}_M$ 不能由 $\operatorname{Sing}M$ 决定, 而是与 $M$ 的流形结构有关. 更准确地说, 与 $M$ 的切丛 $TM$ 的分类映射 $M \to \mathsf{BTop}(n)$ 有关.
更一般地, 对任意映射 $B \to \mathsf{BTop}(n)$ 都有 [$\mathbb E_B$-算畴](E_B-算畴.md), 详见此页面.

## 定义

记

- $\mathsf{Mfd}_n$ 为 $n$ 维流形以及之间的**嵌入**构成的 $\infty$-范畴,
- $\mathsf{BTop}(n)$ 为其中 $\mathbb{R}^n$ 构成的全子范畴, 它是[生象群](群.md) $\mathsf{Top}(n) := \operatorname{Emb}(\mathbb{R}^n,\mathbb{R}^n)$ 的[逆环路空间](逆环路空间.md),

**注**. 对任意流形 $M\in\mathsf{Mfd}_n$,
范畴 $\mathsf{BTop}(n)_{/M}$ 实际上是一个[生象](生象.md), 且等价于 $\operatorname{Sing}M$. 遗忘函子 $\mathsf{BTop}(n)_{/M} \to \mathsf{BTop}(n)$ 等同于映射 $\operatorname{Sing} M \to \mathsf{BTop}(n)$, 它是 $M$ 的[切丛](切丛.md)的分类映射.

范畴 $\mathsf{BTop}(n)$ 上还有一个[算畴](算畴.md)结构, 记作 $\mathsf{BTop}(n)^\otimes$, 其 $k$ 元运算为 $k$ 个 $\mathbb{R}^n$ 的无交并到 $\mathbb{R}^n$ 的嵌入.

接下来定义算畴 $\mathbb E_M$. 其底层范畴为 $\mathsf{BTop}(n)_{/M}$, 运算为 $M$ 的嵌入子流形之间的含入
$$
\begin{array}
{ccc}
\sqcup_k \mathbb{R}^n &&\\
\downarrow & \searrow &\\
\mathbb{R}^n & \to & M.
\end{array}
$$
(注意图中 $\sqcup_k \mathbb{R}^n \to M$ 为嵌入, 即 $k$ 个圆盘互不相交.)
更严格地说, 算畴 $\mathbb E_M$ 是如下的拉回:
$$
\begin{array}
{ccc}
\mathbb E_M & \to & \mathsf{BTop}(n)^\otimes \\
\downarrow & & \downarrow \\
(\mathsf{BTop}(n)_{/M})^{\sqcup} & \to & (\mathsf{BTop}(n))^{\sqcup}.
\end{array}
$$

> 这里似乎无法用 "纯 $\infty$-范畴" 的语言来描述这个算畴, 无可避免地需要来自流形范畴的同伦信息.

## 性质

### 分解同调

对于有[筛余极限](筛余极限.md)的[对称幺半范畴](对称幺半范畴.md) $\mathcal O$, 可构造其中 $\mathbb{E}_M$-代数的[分解同调](分解同调.md)
$$
\int_M \colon \mathsf{Alg}_{\mathbb E_M}(\mathcal O) \to \mathcal O,
$$
$$
\int_M \mathcal A := \operatorname{colim}_{U\in (\mathsf{Disk}_n)_{/M}} \mathcal A (U).
$$

### "环路空间"

设 $X \colon \operatorname{Sing}M \to$ [$\mathsf{Ani}_{*}$](Ani_pt.md) 为函子, $U\subset M$ 为开集. 定义 $X$ 在 $U$ 上的**紧支集截面**的空间为
$$
\Gamma_{\mathrm{c}}(U,X) = \operatorname{colim}_{K\subset U} \Gamma(\operatorname{Sing}M,X) \times_{\Gamma(\operatorname{Sing}(M\setminus K),X)} *,
$$
其中 $K\subset U$ 取遍 $U$ 的紧子集.
那么 $\Gamma_{\mathrm{c}}(U,X)$ 关于 $U,X$ 均有 (协变) 函子性.

对于流形 $M$ 以及函子 $X\colon\operatorname{Sing}(M) \to \mathsf{Ani}_*$, 可构造 $\mathsf{Ani}$ 中的 $\mathbb{E}_M$-代数 $\Omega_M X$, 使得其颜色 $U\subset M$ ($M$ 的嵌入圆盘) 处的分量为紧支集截面生象 $\Gamma_{\mathrm{c}}(U,X)$.

例如, 若 $X$ 为取值为带基点生象 $(A,a)$ 的常值函子, $M$ 的维数为 $n$, 则 $\Omega_M X$ 在一个圆盘 $U$ 处的分量等价于 $\Omega^n(A,a)$.

## 相关概念

[分解同调](分解同调.md)
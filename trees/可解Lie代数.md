---
title: 可解 Lie 代数
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

对于 Lie 代数 $\mathfrak g$, 定义
$$
D \mathfrak g = [\mathfrak g,\mathfrak g],\quad D^{n+1}\mathfrak g = [D^n\mathfrak g,D^n\mathfrak g].
$$
若存在正整数 $n$ 使得
$$
D^n \mathfrak g = 0,
$$
则称 $\mathfrak g$ 为可解 Lie 代数.

## 例

[幂零 Lie 代数](幂零Lie代数.md)是可解 Lie 代数.

$\mathfrak {gl}_n$ 中的上三角矩阵 (也即保持一个旗不变的线性变换, 参见[旗流形](旗流形.md)) 构成的 Lie 代数是可解 Lie 代数.

## 性质

可解 Lie 代数的子与商均可解.

可解 Lie 代数的可解扩张可解, 即对于左右两边为可解 Lie 代数的短正合列, 中间项也可解.

**定理** (Lie). 设 $\pi\colon \mathfrak g\to\operatorname{End}_k(V)$ 是有限维可解 Lie 代数 $\mathfrak g$ 的有限维表示, $k$ 代数闭, 则存在所有 $\pi(X)$ 的公共特征向量.

**证明**. 对 $\mathfrak g$ 的维数归纳. 由 $\mathfrak g$ 的可解性, 当然有 $\mathfrak g \supsetneq D\mathfrak g$. 取 $\mathfrak g$ 的子空间 $\mathfrak g_1$ 包含 $D\mathfrak g$, 且 $\dim \mathfrak g_1 = \dim\mathfrak g - 1$. 由于 $[\mathfrak g,\mathfrak g_1] \subset D\mathfrak g \subset \mathfrak g$,

假设 $\mathfrak g_1$ 的元素已经有公共特征向量 $b \in V$, 那么存在 ...

(见 Knapp, Lie Groups Beyond An Introduction 定理 1.25)
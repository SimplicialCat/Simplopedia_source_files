---
title: Kummer 理论
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

### 单位根概形

设 $n$ 为正整数. 考虑[乘法群概形](乘法群概形.md) $\mathbb G_m = \operatorname{Spec}\mathbb{Z}[x^{\pm 1}]$. 记
$$
n\colon \mathbb G_m \to \mathbb G_m
$$
为 $n$ 次方映射,
定义 "$n$ 次单位根" [群概形](群概形.md)为其核:
$$
\mu_n := \operatorname{ker}(n\colon \mathbb G_m \to \mathbb G_m).
$$
作为[函子](函子式代数几何.md) $\mathsf{Ring} \to \mathsf{Set}$, $\mu_n(A)$ 是 $A$ 中 $n$ 次方等于 $1$ 的元素的集合. 作为[仿射概形](仿射概形.md), $\mu_n = \operatorname{Spec}\mathbb{Z}[x]/(x^n-1)$.

### 基底的选取

记 $\zeta_n$ 为 $n$ 次[本原单位根](本原单位根.md). Kummer 理论关注的是定义在 $A:=\mathbb{Z}[1/n][\zeta_n]$ 上的概形 $X$, 这种概形 $X$ 满足 $\mathcal O(X)$ 具有本原 $n$ 次单位根, 且 $n$ 在其中可逆.

[基变换](基变换.md)到 $A$ 上会产生如下两个重要现象:

- 由于本原单位根 $\zeta_n$ 的存在, 单位根群 $\mu_n$ 成为 $n$ 阶**循环群** $\mathbb{Z}/n$. 具体地, $A[x]/(x^n-1) \simeq \prod_{i=0}^{n-1} A[x]/(x-\zeta_n^i) \simeq A^n$.

- 由于 $n$ 可逆, 概形态射 $n\colon \mathbb G_m \to\mathbb G_m$ 成为[平展覆盖](平展概形态射.md) ($y^n-x$ 关于 $y$ 的导数可逆), 从而是[平展景](平展景.md)上的[满射](意象中的满射.md).

### 长正合列

对于 $\mathbb{Z}[1/n][\zeta_n]$-[概形](概形.md) $X$, 其[平展景](平展景.md)上的[短正合列](群短正合列.md)
$$
0 \to \mu_n \to \mathbb G_m \overset{n}{\to} \mathbb G_m\to 0
$$
给出[平展上同调](平展上同调.md)的长正合列
$$
\begin{aligned}
0 &\to \mu_n(X) \to \mathcal O(X)^* \overset{n}{\to} \mathcal O (X)^*\\
&\to H^1(X_{\mathrm{\'et}},\mu_n) \to \operatorname{Pic}(X) \overset{n}{\to} \operatorname{Pic}(X),
\end{aligned}
$$
其中 $\operatorname{Pic}(X) = H^1(X,\mathbb G_m)$ 为 [Picard 群](Picard群.md).
这个结论也可以表述为正合列
$$
0 \to \mathcal O(X)^* / (\mathcal O(X)^*)^n
\to H^1(X_{\mathrm{\'et}},\mu_n) \to \operatorname{Pic}(X)_n \to 0.
$$

设 $X$ 为代数闭域 $k$ 上的完备光滑曲线, 则 [Picard 群](Picard群.md)分解为 $\operatorname{Pic}^0(X)\oplus \mathbb{Z}$, 而 $\operatorname{Pic}^0(X) \simeq \operatorname{Jac}(X)(k)\simeq (\mathbb{Z}/n)^{2g}$, $\operatorname{Jac}(X)$ 为 [Jacobi 簇](Jacobi簇.md).

**结论**. 设 $X$ 为代数闭域 $k$ 上亏格为 $g$ 的完备连通光滑曲线, 正整数 $n$ 在 $k$ 中可逆, 则
$$
H^1(X_{\mathrm{\'et}},\mu_n)\simeq H^1(X_{\mathrm{\'et}},\mathbb{Z}/n)\simeq (\mathbb{Z}/n)^{2g}.
$$  
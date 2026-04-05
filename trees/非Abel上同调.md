---
title: 非 Abel 上同调
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

非 Abel 上同调是一种广义的[上同调](上同调.md)概念, 强调其系数对象并非 Abel 群.

群 $G$ 系数的 $1$ 阶非 Abel 上同调类一一对应于 $G$-[主丛](主丛.md)的等价类.

非 Abel 上同调的一种计算方法是 [Čech 上同调](非交换Čech上同调.md).

## 性质

### 长正合列

对于群短正合列 $K\to G\to H$ 有[纤维列](纤维列.md)
$$
K\to G\to H\to \mathbf{B}K \to \mathbf{B}G \to \mathbf{B}H,
$$
从而有非 Abel 上同调的正合列
$$
\begin{aligned}
H^0(X,K) &\to H^0(X,G) \to H^0(X,H)\\
\to H^1(X,K) &\to H^1(X,G) \to H^1(X,H).
\end{aligned}
$$

对于 $0$-截断群的[中心扩张](中心扩张.md)
$$
A \to G \to H
$$
(即不仅要短正合列, 还要求 $A\to G$ 落在 $G$ 的[中心](中心.md)中, 特别地 $A$ 为 Abel 群), 纤维列与长正合列还能增加一项:
$$
A\to G \to H \to \mathbf{B}A \to \mathbf{B}G\to\mathbf{B}H
\to\mathbf{B}^2 A,
$$
$$
\begin{aligned}
    H^0(X,A) &\to H^0(X,G) \to H^0(X,H)\\
\to H^1(X,A) &\to H^1(X,G) \to H^1(X,H)\\
\to H^2(X,A) &.
\end{aligned}
$$

### 群结构

虽然名为 "非交换" Čech 上同调, 当然它也可以处理交换群.

对于 [$\mathbb E_2$](E2-代数.md)-群 $A$, 有 $\mathbf{B}A$ 为[群](群.md), 从而 $H^1(X,A)=\pi_0\operatorname{Hom}(X,\mathbf{B}A)$ 为群.

具体地, 设 $P_1,P_2$ 为 $X$ 上的 $A$-主丛, 分别由 $p_1,p_2\colon X\to\mathbf{B}A$ 分类. 考虑如下拉回图.
$$
\begin{array}
    {ccccc}
    P_1\times_X P_2 & \to & * \\
    \downarrow & & \downarrow \\
    ? & \to & \mathbf{B} A & \to & *\\
    \downarrow & & \downarrow & & \downarrow \\
    X & \underset{(p_1,p_2)}{\to} & \mathbf{B}A\times\mathbf{B}A & \underset{\mu}{\to} & \mathbf{B}A
\end{array}
$$
其中 $\mu$ 为 $\mathbf{B}A$ 的乘法映射, 竖直向下的映射 $\mathbf{B}A\to\mathbf{B}A\times\mathbf{B}A$ 为 $\mathbf{B}(a\mapsto (a^{-1},a))$.
图中问号位置的对象即是 $P_1$ 与 $P_2$ 在 $H^1(X,A)$ 中的**和**
$$
P_1+P_2 := (P_1 \times_X P_2) / A,
$$
其中 $A$ 通过 $(p_1,p_2) a = (p_1 a^{-1}, p_2 a)$ [作用](群作用.md)于 $P_1\times_X P_2$ 上.

## 例

### Zariski 景, 平展景与平坦景

**定理**.
在[概形](概形.md) $X$ 对应的 [Zariski 景](Zariski景.md), [平展景](平展景.md), [平坦景](平坦景.md)上计算同一个群概形 $\mathrm{GL}_n$ (对应的层) 的上同调, 比较映射
$$
H^1(X_{\mathrm{Zar}},\mathrm{GL}_n)\to
H^1(X_{\mathrm{\'et}},\mathrm{GL}_n)\to
H^1(X_{\mathrm{flat}},\mathrm{GL}_n)
$$
均为同构.

特别地, 对于域 $k$, $H^1(\operatorname{Spec}k,\mathbb G_m)=0$. 这是 [Hilbert 定理 90](Hilbert定理90.md).

_证明_. 见 [Zariski, 平展与平坦的比较](Zar-fl-et.md).
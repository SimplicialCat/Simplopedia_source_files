---
title: Segal 空间
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Segal 空间 (Segal 生象) 可用于定义 $(\infty,1)$-范畴.
道理是, 假设我们要在[生象](生象.md)概念的基础上定义范畴, 我们可以采用[脉](脉.md)的观念, 对一个假想的 $(\infty,1)$-范畴 $\mathcal C$, 用各个单形 $[n]$ 探测之, 得到[单纯](单纯对象.md)生象 $N(\mathcal C)$:
$$
N(\mathcal C)_n = \operatorname{Hom}_{\mathsf{Cat}_{(\infty,1)}}([n],\mathcal C) = \operatorname{Fun}([n],\mathcal C)^{\simeq},
$$
其中 $(-)^\simeq$ 表示取范畴的[对象的生象](对象的生象). 这一过程又称为 **Rezk 脉**.
函子 $N$ 的像恰为完备 Segal 生象的范畴.

类似地, 完备 Segal 对象也可用于定义一般的 $\infty$-范畴内部的范畴, 见[范畴对象](范畴对象.md).

## 定义

一个 Segal 生象是一个[单纯生象](单纯对象.md) $X \colon \Delta^{\mathrm{op}} \to \mathsf{Ani}$, 满足对任意 $m,n\in\mathbb{N}$, 下图为拉回.
$$
\begin{array}
    {ccc}
    X_{m+n} & \to & X_m \\
    \downarrow && \downarrow \\
    X_n & \to & X_0
\end{array}
$$
该图来自 [$\Delta$](单纯形范畴.md) 中的如下交换图.
$$
\begin{array}
    {ccc}
    \{0 < \cdots < m+n\} & \leftarrow & \{0 < \cdots < m\} \\
    \uparrow && \uparrow \\
    \{m < \cdots < m+n\} & \leftarrow & \{m\}
\end{array}
$$

### 完备 Segal 生象

对于 Segal 生象 $X$ 中的 $1$-单形 $f \in X_1$, 若 $f$ 既有左逆又有右逆 (具体地, 存在 $\sigma,\tau \in X_2$ 使得 $d_0\sigma = f = d_2\tau$, 且 $d_1\sigma, d_1\tau$ 均落在 $s \colon X_0 \to X_1$ 的像中), 则称 $f$ 为**等价**.

对于 Segal 生象 $X$, 记 $X_1^{\simeq}\subseteq X_1$ 为 $X_1$ 中的等价构成的子生象; 若 $s \colon X_0 \to X_1^\simeq$ 为生象的等价, 则称 $X$ 为**完备 Segal 生象**.

完备 Segal 生象也可等价地定义为关于
$N(0\overset{\simeq}{\to} 1) \to {*}$
的[局部对象](局部对象.md).

完备 Segal 生象等同于 [$(\infty,1)$-范畴](无穷范畴.md). 另见[范畴对象](范畴对象.md).
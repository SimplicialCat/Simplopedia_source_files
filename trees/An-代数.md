---
title: A_n-代数
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

$\mathbb A_n$-代数是比[结合代数](结合代数.md)弱一些的结构, 只要求 $n$ 个元素可以[融贯](融贯.md)地结合.

## 定义

### 通过代数模式

考虑[代数模式](代数模式.md) $\Delta_{\leq n} = \{[0],[1],\cdots,[n]\}$, 其中惰性映射为区间含入, 活性映射为保端点映射, 初等对象是 $[1]$. 该模式的 Segal 对象即为 $\mathbb A_n$-代数.

具体地, 对于[积幺半范畴](积幺半范畴.md) $\mathcal C$, 其中的 $\mathbb A_n$-代数就是函子
$$
X\colon \Delta_{\leq n}^{\mathrm{op}} \to \mathcal C,
$$
满足
$$
X([k]) \overset{\simeq}{\to} X([1])^k\, (k\leq n).
$$

对于 $\mathbb A_n$-[幺半范畴](幺半范畴.md) $\mathcal C$, 视为函子 $\Delta_{\leq n}^{\mathrm{op}} \to \mathsf{Cat}$, 其中的 $\mathbb A_n$-代数可定义为自然变换
$$
\begin{array}{ccc}
\Delta_{\leq n}^{\mathrm{op}} & \rightarrow & \mathsf{Cat} \\
|\!| & \Uparrow & \uparrow \\
\Delta_{\leq n}^{\mathrm{op}} & \rightarrow & 1.
\end{array}
$$

## 例

$n=1$: $\mathbb A_1$-代数 $A$ 就是[带基点对象](带基点对象.md) $1\to A$.

$n=2$: $\mathbb A_2$-代数是 $\mathbb A_1$-代数 $A$ 加上一个运算 $m_2\colon A\otimes A \to A$, 没有任何条件.

$n=3$: $\mathbb A_3$-代数是 $\mathbb A_2$-代数 $A$ 加上一个运算 $m_3\colon A\otimes A\otimes A \to A$, 以及交换图
$$
\begin{array}{ccc}
A\otimes A\otimes A & \rightarrow & A\otimes A \\
\downarrow & \searrow & \downarrow \\
A\otimes A & \rightarrow & A,
\end{array}
$$
其中对角线的箭头是 $m_3$, 上边和左边分别是 1,2 分量和 2,3 分量的 $m_2$ 运算. 没有更多条件. 用[阻碍](阻碍.md)的语言讲, $\mathbb A_2$-代数提升为 $\mathbb A_3$-代数的阻碍是 $S^0 \to \operatorname{Hom}(A\otimes A\otimes A, A)$ 沿 $S^0 \to *$ 延拓的阻碍.

$n=4$: $\mathbb A_4$-代数是 $\mathbb A_3$-代数加上一个运算 $m_4\colon A\otimes A\otimes A\otimes A \to A$, 以及 $\operatorname{Hom}(A\otimes A\otimes A\otimes A, A)$ 中的交换图
$$
\begin{array}{ccccc}
((xy)z)w & \rightarrow & (x(yz))w & \rightarrow & x((yz)w) \\
 & \searrow &  &  & \downarrow \\
 &  & (xy)(zw) & \rightarrow & x(y(zw)),
\end{array}
$$
可见这相当于一个映射
$S^1 \to \operatorname{Hom}(A\otimes A\otimes A\otimes A, A)$ 沿 $S^1 \to *$ 延拓的阻碍.

一般地, $\mathbb A_n$-代数提升为 $\mathbb A_{n+1}$-代数的阻碍是某个映射 $S^{n-2} \to \operatorname{Hom}(A\otimes A\otimes A, A)$ 沿 $S^{n-2} \to *$ 延拓的阻碍.

## 性质

### 截断情形

在 $(n,1)$-范畴中, $\mathbb A_{n+2}$-代数就已经是 $\mathbb A_{\infty}$-代数, 即[结合代数](结合代数.md).
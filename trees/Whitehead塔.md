---
title: Whitehead 塔
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

带基点[生象](生象.md)
$*\to X$
的 **Whitehead 塔**是对映射
$*\to X$
作 [($n$-连通, $n$-截断) 分解](连通-截断分解.md)所得的序列
$$
*\to \cdots \to Z_2 \to Z_1 \to Z_0 \to Z_{-1} \to Z_{-2} =X,
$$
满足

- $*\to Z_n$ 是 $n$-[连通](连通性.md)映射, 也即 $Z_n$ 是 $(n+1)$-[连通](连通性.md)生象;
- $Z_n\to X$ 是 $n$-[截断](截断性.md)映射.

## 性质

### 纤维

记号如上. 映射 $Z_n\to Z_{n-1}$ 的纤维为 [Eilenberg–MacLane 空间](Eilenberg–MacLane空间.md) $K(\pi_{n+1}(X),n)$.

### 一种显式构造

$Z_n$ 的一种显式构造为 $\mathbf{B}^{n+2}\Omega^{n+2}X$.

### 与截断的关系

$Z_n$ 是如下的拉回.
$$
\begin{array}
	{ccc}
	Z_n & \to & *\\
	\downarrow && \downarrow\\
	X & \to & \tau_{\leq n+1} X.
\end{array}
$$
换言之, $Z_n$ 是 $X$ 的万有 $(n+1)$-连通覆叠. 对任意 $(n+1)$-连通带基点生象 $Y$, 保基点映射 $Y\to X$ 唯一地穿过 $Z_n$,
$$
\operatorname{Hom}_*(Y,X) \simeq \operatorname{Hom}_*(Y,Z_n).
$$

## 例

$n=-1$:

- $Z_{-1}\to X$ 是基点处的连通分支. 任何带基点连通生象到 $X$ 的保基点映射唯一地穿过 $Z_{-1}$.
- $Z_{-1}X = \mathbf{B}\Omega X$.
- $Z_{-1}$ 同构于纤维 $\operatorname{fib}(X\to \pi_{0}X)$.

$n=0$:

- $Z_0 \to X$ 是[万有覆叠](万有覆叠.md). 任何带基点单连通生象到 $X$ 的映射唯一地穿过 $Z_0$.
- $Z_0 X = \mathbf{B}^2\Omega^2 X$.
- $Z_{0}$ 同构于纤维 $\operatorname{fib}(X \to \tau_{\leq 1}X)=\operatorname{fib}(X\to\mathbf{B}\pi_1(X))$.
- 纤维 $\operatorname{fib}(Z_0\to Z_{-1})$ 是基点处的[基本群](基本群.md) $\pi_1(X,x_0)$.

### 正交群

正交群 $\mathrm{O}_n$ 的 Whitehead 塔为
$$
\cdots\to \text{String}_n \to \mathrm{Spin}_n \to \mathrm{SO}_n \to \mathrm{O}_n.
$$
## 相关概念

[Postnikov 塔](Postnikov塔.md)
---
title: Schur 函子
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Schur 函子是一系列函子 $S^\lambda\colon \mathsf {Mod}(R)\to \mathsf{Mod}(R)$, 它将 $R$ 模 $X$ 对应到其 $n$ 次张量积中 [$S_n$](对称群.md) 作用下以一定规律 (即[对称群的表示](对称群的表示.md)) 变换的子模. 例如对称幂 $\operatorname{Sym}^n X$ 和交错幂 $\wedge^n X$ 都是 Schur 函子.

Schur 函子是 [Schur 多项式](Schur多项式.md)的[范畴化](范畴化.md).

## 定义

### 具体版本

设 $X$ 是向量空间, $\lambda$ 是 [Young 图(表)](Young图.md).

考虑 $X^{\otimes n}$, 每个部分对应 Young 图的一个方块.
取出其中交换同一**行**的任何两部分都**不变**的**子空间**;
然后投影到其中交换同一**列**的任何两部分都**变号**的**商空间**;
所得的就是 $S^\lambda X$.

### 抽象版本

使用群代数 $\mathbb{C}[S_n]$, 我们可以更抽象地给出 $S^\lambda$ 的定义.

我们可以将 "对每一**行对称化**" 的操作视为元素 $p_\lambda^S \in \mathbb{C}[S_n]$, "对每一**列反称化**" 的操作视为元素 $p_\lambda^A\in\mathbb{C}[S_n]$. 定义 **Young 对称化子**
$$
p_\lambda = p_\lambda^A p_\lambda^S\in\mathbb{C}[S_n],
$$
于是
$$
S^\lambda X = p_\lambda (X^{\otimes n}).
$$
注意 $p_\lambda^A$ 和 $p_\lambda^S$ 都是幂等算子, 但它们**不交换**. 事实上, $p_\lambda$ 只差一个常数就是幂等算子.

进一步, 由于 $p_\lambda$ 作用在 $\mathbb{C}[S_n]$ 上给出 $S_n$ 的不可约表示 $V_\lambda$ (见[对称群的表示](对称群的表示.md)), 故 Schur 函子可写为
$$
S^\lambda X = V_\lambda \otimes_{\mathbb{C}[S_n]} X^{\otimes n}.
$$
甚至我们可以对 $S_n$ 的任何表示 $V$ 定义函子 $S_V$.

## 例

对于 $\lambda = (n)$, 即一行的 Young 图, $S^\lambda E = \operatorname{Sym}^n E$;

对于 $\lambda = (1,\cdots,1)$, 即一列的 Young 图, $S^\lambda E = \wedge^n E$;
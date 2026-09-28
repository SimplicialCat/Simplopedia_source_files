---
title: Blakers–Massey 定理
tag: 百科
subject: [同伦论](同伦论.md)
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

若采取 "高连通度 = 小" 的直观 (见 [Goodwillie 演算](Goodwillie演算.md)), 那么 Blakers–Massey 定理说的是: 在一个小邻域内, 推出近乎于拉回.

## 陈述

考虑 [$\mathsf{Ani}$](Ani.md) 中的如下[推出](推出.md)图,
$$
\begin{CD}
A @>{f}>> B \\
@V{g}VV @VVV \\
C @>>> D
\end{CD}
$$
若 $f$ 是 $m$-[连通](连通性.md)映射, $g$ 是 $n$-[连通](连通性.md)映射, 则
$$
A \to B\times_D C
$$
是 $(m+n)$-连通映射.

### 在模态中的推广

[ABFJ](ABFJ-BM.md) 的文章给出了 Blakers–Massey 定理的推广:

**定理**. 设 $(L,R)$ 是意象中的[模态](模态.md) (即关于[基变换](基变换.md)封闭的[正交分解系](正交分解系.md)), 考虑[推出](推出.md)图
$$
\begin{CD}
A @>{f}>> B \\
@V{g}VV @VVV \\
C @>>> D,
\end{CD}
$$
若[对角线](对角线.md)的[推出积](推出积.md) $\Delta_f \operatorname{\square}_Z \Delta_g$ 属于 $L$, 则映射 $A \to B\times_D C$ 属于 $L$.

## 证明



## 例

取 $B = C = *$, 则有 $D = \Sigma A$, 而拉回为 $*\times_{\Sigma A} * = \Omega \Sigma A$. 我们得到 [Freudenthal 纬悬定理](Freudenthal纬悬定理.md): 对于 $n$-连通空间 $A$, $A\to\Omega\Sigma A$ 是 $2n$-连通映射.


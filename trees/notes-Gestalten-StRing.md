---
title: Gestalten - Stefanich 环
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

对于交换环 $A$, 其模范畴 $\mathsf{Mod}(A)$ 为[可表现](可表现范畴.md)[对称幺半范畴](对称幺半范畴.md). 许多对于环可以讨论的事情可以在范畴层面讨论. 换言之, 可表现对称幺半范畴是环的推广.

推广不会仅做一次就停止. 对于可表现对称幺半范畴 $\mathcal A$, 其在 $\mathsf{Pr}$ 中的[模范畴](高阶模.md)为可表现对称幺半 $2$-范畴, 这种对象又可视为可表现对称幺半范畴的推广. 以此类推至于无穷, 就得到 **Stefanich 环**的概念.

**定义**. Stafanich 环的范畴 $\mathsf{StRing}$ 是如下 $\aleph_1$-[可表现范畴](可表现范畴.md):
$$
\begin{aligned}
\mathsf{StRing} &= \operatorname{colim}^{1\mathsf{Pr}}(\mathsf{CAlg}(\mathsf{Ani})\hookrightarrow\mathsf{CAlg}(1\mathsf{Pr})\hookrightarrow\cdots)\\
&= \operatorname{lim}^{\mathsf{Cat}}(\mathsf{CAlg}(\mathsf{Ani})\leftarrow\mathsf{CAlg}(1\mathsf{Pr})\leftarrow\cdots).
\end{aligned}
$$

由于上述第二行定义, $\mathsf{StRing}$ 的一个对象可写为 $A = (A_0,A_1,A_2,\cdots)$, $A_n\in\mathsf{CAlg}(n\mathsf{Pr})$, 带有等价 $A_n = \operatorname{End}_{A_{n+1}}(1)$. 事实上, 这一串等价
$$
A_n = \operatorname{End}_{A_{n+1}}(1) = \operatorname{End}_{\operatorname{End}_{A_{n+2}}(1)}(1) = \cdots
$$
自动给出 $A_n$ 的交换代数结构.

$\mathsf{StRing}$ 的始对象是 $(*,\mathsf{Ani},1\mathsf{Pr},\cdots)$; 即任何 Stefanich 环 $A$ 都带有一列函子 $(n-1)\mathsf{Pr} \to A_n$.
这可以如下理解: $A_n$ 是 $n\mathsf{Pr}$ 中的交换代数, 而 $n\mathsf{Pr}$ 是 $1\mathsf{Pr}$ 中 $(n-1)\mathsf{Pr}$-模的范畴. 模范畴中的[交换代数](交换代数.md)相当于原范畴中的交换代数带有代数同态; 故 $A_n$ 带有代数同态 $(n-1)\mathsf{Pr} \to A_n$.

Stefanich 环的态射 $f\colon A\to B$ 是一族相容的交换代数同态 $A_n \to B_n$. 我们采用一个看似 "错位" 的记号 $f^*_{n-1}\colon A_n\to B_n$ 来表示这个同态.[^1]

[^1]: 这是因为 $A_n$ 可想象为几何对象 $X$ 上的 $(n-1)$-范畴层, 而 $f^*_{n-1}$ 可想象为 $(n-1)$-范畴层的拉回. 换言之, $f^*$ 的下标表示的是其操作的**对象**的范畴层级.

由定义, $f^*_{n-1}\colon A_n\to B_n$ 是[可表现范畴](高阶可表现范畴.md)之间保持余极限的函子, 从而有右伴随 $f_{n-1,*}\colon B_n\to A_n$.
它自动构成松对称幺半函子, 从而给出[交换代数](交换代数.md)范畴之间的函子 $f_{n-1,*} \colon \mathsf{CAlg}(B_n) \to \mathsf{CAlg}(A_n)$.
此时 $1_{B_n}\in\mathsf{CAlg}(B_n)$ 给出 $A_n$ 中的交换代数, 记作
$$
(B/A)_{n-1} := f_{n-1,*}(1_{B_n}) \in \mathsf{CAlg}(A_n).
$$

这可视为 $B$ 在 $A$ 上的一种[相对](相对.md)观点, 正如在代数几何中我们常常固定一个基环 $A$ 考虑 $A$-代数一样. 而 "绝对" 的基环是 $A = (*,\mathsf{Ani},\mathsf{Pr},\cdots)$, 此时,
$(B/A)_{n-1} = B_{n-1} \in \mathsf{CAlg}((n-1)\mathsf{Pr})$.

函子 $f_{n-1,*}$ 可想象为几何对象之间 $(n-1)$-范畴层的推前, 即[整体截面](整体截面.md)操作的相对版本. 当几何对象被其上 $(n-1)$-范畴层的整体截面完全确定时, 称其 $(n-1)$-[仿射](高阶仿射性.md). 在[相对](相对.md)情形中, 也有仿射态射的概念.

在 Stefanich 环的世界中, 任何一个层级的 "$A$-代数" 都可视为 Stefanich 环的 (仿射) 同态 $A\to B$. 更准确地说有如下命题.

**命题**. 对 $n\geq 1$, 有全忠实函子
$$
\mathsf{CAlg}(A_n) \to \mathsf{StRing}_{A/},
$$
该函子为 $B\mapsto (B/A)_{n-1}$ 的左伴随. 进一步, 有等价
$$
\begin{aligned}
\mathsf{StRing}_{A/} &\simeq
\operatorname{colim}^{\mathsf{Pr}}(\mathsf{CAlg}(A_1)\hookrightarrow\mathsf{CAlg}(A_2)\hookrightarrow\cdots)\\
& =\operatorname{lim}^{\mathsf{Cat}}(\mathsf{CAlg}(A_1)\leftarrow\mathsf{CAlg}(A_2)\leftarrow\cdots),
\end{aligned}
$$
其中 $B\in\mathsf{StRing}_{A/}$ 对应于 $((B/A)_0,(B/A)_1,\cdots)$.

*证明概要*. 依定义,
$$
\mathsf{StRing}_{A/} \simeq
\operatorname{lim}^{\mathsf{Cat}}(
\mathsf{CAlg}(1\mathsf{Pr})_{A_1/}
\leftarrow
\mathsf{CAlg}(2\mathsf{Pr})_{A_2/}
\leftarrow
\cdots
).
$$
我们仔细观察其中的转移映射
$$
\operatorname{End}_{-}(1)\colon 
\mathsf{CAlg}(n\mathsf{Pr})_{/ A_n}
\leftarrow
\mathsf{CAlg}((n+1)\mathsf{Pr})_{/ A_{n+1}}.
$$
设 $B_{n+1}\in \mathsf{CAlg}((n+1)\mathsf{Pr})_{/ A_{n+1}}$. 拆开定义, 我们发现 $B_{n+1}$ 的信息相当于对称幺半可表现 $1$-范畴的如下图表.

[](notes-Gestalten-StRing-2.typ#:block)

而这样一个图表的信息仅相当于其下方的一个态射 $g$.

此时 $\operatorname{End}_{B_{n+1}}(1_B)$ 是单位 $1_B\in B_{n+1}$ 在两个函子的右伴随的复合下的像, $\operatorname{End}_{B_{n+1}}(1_B) = f^R g^R (1_B)$. 复合中间经过的对象是 $g^R (1_B) \in \mathsf{CAlg}(A_{n+1})$, 如下图.

[](notes-Gestalten-StRing-1.typ#:block)

由此我们看出, 转移映射中间可穿过 $\mathsf{CAlg}(A_{n+1})$, 于是前述极限可改写为

$$
\mathsf{StRing}_{A/} \simeq
\operatorname{lim}^{\mathsf{Cat}}(
\mathsf{CAlg}(A_1)
\leftarrow
\mathsf{CAlg}(A_2)
\leftarrow
\cdots
),
$$

且 Stefanich 环的同态 $A\to B$ 对应序列
$$
((B/A)_0, (B/A)_1,\cdots).
$$

对于 $R\in\mathsf{CAlg}(A_n)$, 有 $\mathsf{Mod}_{A_n}(R)\in \mathsf{CAlg}(\mathsf{Mod}_{1\mathsf{Pr}}(A_n))$,
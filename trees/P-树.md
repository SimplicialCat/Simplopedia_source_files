---
title: P-树 (多项式函子标记的树)
tag: 百科
subject: [范畴论](范畴论.md)
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

设
$$
P = (I \overset{s}{\leftarrow} A \overset{p}{\to} B \overset{t}{\to} I)
$$
为[多项式](多项式函子.md), 定义 $P$-**树**为[树](树.md) $T = (E \leftarrow M \to N \to E)$ 到 $P$ (作为多项式函子) 的态射, 也即 "边由 $I$ 标记, 结点由 $B$ 标记的树".

注意由定义, 对于 $P$-树的每个以 $b\in B$ 为标记的结点, 记 $p^{-1}(b) = \{a_1,\cdots,a_n\}$, 那么
- 该节点的**入边**必须一一对应于 $\{a_1,\cdots,a_n\}$, 且入边的标记分别为 $s(a_1),\cdots,s(a_n)$;
- 该结点的**出边**的标记为 $t(b)$.

### 归纳定义

类似于普通的树, $P$-树也具有如下归纳定义:

- 元素 $i\in I$ 本身是 $P$-树 (无节点, 只有一条边的树);
- 设 $T_1,\cdots,T_n$ 是 $P$-树, 其根的标记分别为 $i_1,\cdots,i_n\in I$. 设 $b\in B$, 满足 $p^{-1}(b) = \{a_1,\cdots,a_n\}$, $s(a_1) = i_1$, $\cdots$, $s(a_n) = i_n$, 则有一棵 $P$-树, 根节点以 $b$ 标记, 以 $t(b)$ 为根标记, 根节点上长着 $T_1,\cdots,T_n$.

## 性质

### 始代数

**命题**. $P$-树的集合 (生象) 为 $\mathsf{Set}_{/I}$ 上自函子
$$
X \mapsto I + P(X)
$$
的[始代数](始代数.md). 这直接体现了 $P$-树的归纳定义. 因为 $P$ 作为 $\mathsf{Set}_{/I}$ 的自函子, 在 $(f\colon I\to\mathsf{Set})\in\mathsf{Set}^I =\mathsf{Set}_{/I}$ 的值为
$$
P(f)(i) = \sum_{b\in t^{-1}(i)}\prod_{a\in p^{-1}(b)} f(s(a)),
$$
直观上, 以 $i$ 为根标记的 $P$-树,
- 要么是无节点的树,
- 要么是一个 $b\in t^{-1}(i)$, 以及对每个 $a\in p^{-1}(b)$ 包含一个以 s(a) 为根标记的 $P$-树.


## 例

### 线性树

当 $P = (1 \leftarrow 1 \to 1 \to 1)$ (对应 $\mathsf{Set}$ 上的恒等函子) 时, $P$-树即为线性树, 即形如
$$
\begin{array}
{c}
\downarrow\\
\bullet\\
\downarrow\\
\bullet\\
\vdots\\
\bullet\\
\downarrow
\end{array}
$$
的树.

### 树的子树

[树](树.md) $T$ 本身也是多项式, 此时 $T$-树就是 $T$ 的子树.

### 平面树

考虑自由幺半群单子 ([列表](列表.md)函子) $L$, 其对应多项式 
$$
1\leftarrow \{(n,m)\in\mathbb{N}^2\mid n<m \} \to \mathbb{N} \to 1,
$$
那么 $L$-树就是每个结点的入边带有一个[全序](全序集.md)的树, 又称**平面树** (planar tree).
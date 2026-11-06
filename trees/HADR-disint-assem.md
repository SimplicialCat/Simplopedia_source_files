---
title: HADR - 拆解与汇编
tag: 讲稿
author: [SimplicialCat](SimplicialCat.md)
---

### 含幺算畴

设 $p\colon \mathcal O \to \Gamma$ 为算畴, 即代数模式的弱 Segal 纤维化. 考虑唯一的活性映射 $f\colon \langle 1\rangle \to \langle n \rangle$, $\mathcal O$ 中居于 $f$ 上的态射可理解为 $n$ 元运算. 特别地, $n=1$ 时, 颜色范畴 $\mathcal O_{\langle 1 \rangle}$ 中的活性态射即是 $1$ 元运算.

现在我们考虑一个更基本的对象, 即 $0$ 元运算. 它是 $\mathcal O$ 中居于 $\langle 1 \rangle \to \langle 0 \rangle$ 上的态射. 注意 $\mathcal O_{\langle 0 \rangle} = 1$, 我们记 $\mathcal O_{\langle 0 \rangle}$ 中唯一的对象为 $\varnothing$, 因为它的直观确实是 "$0$ 个颜色放在一起".

**定义**. 若对任意 $X \in \mathcal O_{\langle 1 \rangle}$, $\operatorname{Hom}_{\mathcal O}(X,\varnothing) = 1$, 换言之 $\varnothing$ 是 $\mathcal O$ 的[零对象](零对象.md), 则称 $\mathcal O$ 为**含幺算畴** (unital operad).

**例**.

- $\Gamma$ 自身是含幺算畴, 因为 $\langle 0\rangle = \varnothing$ 是零对象.
- $\mathbb E_0$ 是含幺算畴, 但 $\mathsf{Triv}$ 不是含幺算畴. 注意 $\mathbb E_0$ 中存在唯一的态射 $\langle 1\rangle\to\langle 0 \rangle = \varnothing$, 代表 $0$ 元运算 "取基点", 而平凡算畴 $\mathsf{Triv}$ 中不存在这个态射.


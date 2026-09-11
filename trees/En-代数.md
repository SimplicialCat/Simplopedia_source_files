---
title: En-代数
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

$\mathbb E_n$-代数是算畴 [$\mathbb E_n$](En-算畴.md) 上的[代数](算畴上的代数.md), 一种直观是具有 $n$ 个相容的[结合运算](结合代数.md)的代数.

关于 $n=2$ 的特殊情形, 见 [$\mathbb E_2$-代数](E2-代数.md).

对于一个 $1$-范畴中的[结合代数](结合代数.md) (如幺半群), 它**要么是**交换的, **要么不是**交换的; 这是[性质而非结构](结构.md). 而对于[无穷范畴](无穷范畴.md)中的[结合代数](结合代数.md), 有一列无穷多个概念, 称为 $\mathbb E_n$-代数. 当 $n$ 越来越大时, $\mathbb E_n$-代数接近于[交换代数](交换代数.md), 又称 $\mathbb E_\infty$-代数.

## 性质

如下事实体现了 "$\mathbb{E}_n$-代数是有 $n$ 个相容的[结合运算](结合代数.md)的代数" 的直观.

**命题** (Dunn 可加性). 对于[对称幺半范畴](对称幺半范畴.md) $\mathcal C$,
$$
\mathsf{Alg}_{\mathbb E_n}(\mathcal C)\simeq \underbrace{\mathsf{Alg}_{\mathbb E_1}\cdots \mathsf{Alg}_{\mathbb E_1}}_{\text{$n$}}(\mathcal C).
$$

### 模范畴

对于[可表现](可表现范畴.md)对称幺半范畴 $\mathcal C$, 有对称幺半函子
$$
\mathsf{Mod}\colon \mathsf{Alg}_{\mathbb{E}_1}(\mathcal C) \to \mathsf{Mod}_{\mathsf{Pr}}(\mathcal C).
$$
对上式取 $\mathsf{Alg}_{\mathbb E_{(n-1)}}$, 得到函子
$$
\mathsf{Mod}\colon \mathsf{Alg}_{\mathbb E_n}(\mathcal C) \to \mathsf{Alg}_{\mathbb E_{(n-1)}}(\mathsf{Mod}_{\mathsf{Pr}}(\mathcal C)).
$$
直观地, 一个 $\mathbb E_n$-代数可以 "拿出一个 $\mathbb E_1$-结构" 构造模范畴, "还剩" $\mathbb E_{(n-1)}$-结构.

迭代这一操作, $\mathbb E_n$-代数可定义 $n$-阶模
$$
\mathsf{Mod}^n\colon \mathsf{Alg}_{\mathbb E_n}(\mathcal C) \to \mathsf{Mod}^n(\mathcal C).
$$

### 拓扑场论

每个 $\mathbb E_n$-代数都作为 [Morita 范畴](Morita范畴.md)的对象通过[分解同调](分解同调.md)给出[拓扑场论](拓扑场论.md).
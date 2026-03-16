---
title: "广义 Laplace 算子"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

设 $M$ 是 Riemann 流形.

对于 $M$ 上的 $2$ 阶微分算子 $H$, 若其[象征](象征.md)满足 $\sigma_2(H)(\xi)=|\xi|^2$, 则称之为广义 Laplace 算子.

以坐标表示, 广义 Laplace 算子形如
$$
H = -g^{ij}\partial_i \partial_j + \text{一阶项}.
$$

由[象征](象征.md)的等价定义, 广义 Laplace 的定义也等价于对任意 $f\in C^\infty(M)$,
$$
[[H,f],f]=-2|df|^2.
$$

## 带联络的向量丛上的 Laplace 算子

对 $M$ 上任何带有联络的向量丛 $E$, 我们定义 Laplace 算子 $\triangle^E\colon \Gamma(E)\to \Gamma(E)$,
$$
\triangle^E s = -\operatorname{tr} (\nabla\nabla s).
$$
其中两个 $\nabla$ 分别表示 $E$ 和 $T^*M\otimes E$ 上的联络 (这样写是为了简便. 只要明白每个对象所属的空间, 就不会有歧义). 由联络的定义, 对向量场 $X,Y$,
$$
\nabla\nabla s (X,Y) = \nabla_X \nabla_Ys-\nabla_{\nabla_X Y} s.
$$
于是在坐标下
$$
\triangle^E = -g^{ij}\big(\nabla_i\nabla_j-\Gamma_{ij}^k\nabla_k\big),
$$
这说明 $\triangle^E$ 是广义 Laplace 算子.

特别地, 若 $E$ 为平凡线丛,
$$
\triangle = -g^{ij}\big(\partial_i\partial_j-\Gamma_{ij}^k\partial_k\big),
$$

## 广义 Laplace 算子的结构

可以证明, 任何广义 Laplace 算子都形如 $\triangle^E+F$, 其中 $\triangle^E$ 由 $E$ 上某个联络定义 (不同的广义 Laplace 算子可能对应不同的联络), $F$ 为 $\operatorname{End}(E)$ 的截面.

(证明暂略)

总而言之, 广义 Laplace 算子由三个部分决定:

- $M$ 的 Riemann 度量决定了二次项;
- $E$ 的一个联络决定了一次项;
- $\operatorname{End}(E)$ 的一个截面决定了零次项.

## 与 Dirac 算子的关系

[Lichnerowicz 公式](Lichnerowicz公式.md)指出 [Dirac 算子](Dirac算子.md)的平方是广义 Laplace 算子.
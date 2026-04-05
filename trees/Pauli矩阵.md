---
title: "Pauli 矩阵"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Pauli 矩阵是

$$
\sigma^0 = \begin{pmatrix}
    1 & 0 \\
    0 & 1
\end{pmatrix},
\sigma^1 = \begin{pmatrix}
    0 & 1 \\
    1 & 0
\end{pmatrix},
\sigma^2 = \begin{pmatrix}
    0 & -i \\
    i & 0
\end{pmatrix},
\sigma^3 = \begin{pmatrix}
    1 & 0 \\
    0 & -1
\end{pmatrix}.
$$
也有人将 $i\sigma^1$ 记作 $\sigma^1$.

## 性质

### 与 Lie 代数的关系

$i\sigma^1,i\sigma^2,i\sigma^3$ 是 $\mathfrak {su}(2)$ 的基. 作为 Lie 代数有 $\mathfrak {su}(2)\simeq \mathfrak {so}(3)$.

### 交换关系

- 交换关系: $[i\sigma^1,i\sigma^2] = -2i\sigma^3$ (轮换).
- 反交换关系: $\{i\sigma^1,i\sigma^1\}=-2$, $\{i\sigma^1,i\sigma^2\}=0$. 这构成 [Clifford 代数](Clifford代数.md) $\text{Cl}_{0,3}$ 的一个表示.

## 相关概念

[自旋](自旋.md)
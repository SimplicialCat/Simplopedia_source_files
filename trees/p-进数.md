---
title: p-进数
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

### 作为分式域

$p$-进数域 $\mathbb{Q}_p$ 是 [$p$-进整数环](p-进整数.md) $\mathbb{Z}_p$ 的分式域.

### 作为完备化

$p$-进数域 $\mathbb{Q}_p$ 是 $\mathbb{Q}$ 关于 $p$-进绝对值的[完备化](完备化(域).md).

## 性质

$p$-进数可表示为
$$
x = \sum_{n = N}^{\infty} a_n p^n,
$$
其中 $N\in\mathbb{Z}$, $a_n\in\{0,1,\cdots,p-1\}$, $a_N\neq 0$.

与实数的小数表示一样, 一个 $p$-进数是有理数, 当且仅当它的表示是循环的.

## 例

一些有理数的 $3$-进表示:

$$
-1 = \sum_{n=0}^{\infty}2\cdot 3^n = \text{``...222''}.
$$

$$
\frac{1}{2} = 2 + \sum_{n=1}^{\infty} 3^n = \text{``...1112''}.
$$

$$
\frac{1}{7} = \text{``}...\dot 02120 \dot 1 1\text{''}.
$$
注意循环节的长度为 $6=7-1$. 这是因为 $3^6\equiv 1(\mathrm{mod}\, 7)$.
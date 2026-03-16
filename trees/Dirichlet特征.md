---
title: "Dirichlet 特征"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---



模 $q$ 的 Dirichlet 特征是群同态 $\chi\colon (\mathbb{Z}/q)^\times\to\mathbb{C}^\times$.

Dirichlet 特征是连续群同态 $\chi\colon \widehat {\mathbb{Z}}^\times \to \mathbb{C}^\times$.

## L-函数

Dirichlet 特征 $\chi$ 对应的 [L-函数](L-函数.md)为
$$
L(\chi,s) = \sum_{n\geq 1}\chi(n)n^{-s}=\prod_p\frac{1}{1-\chi(p)p^{-s}}.
$$

## 本原特征, 导子

若正整数 $\tilde q, q$ 满足 $\tilde q \mid q$, 则模 $\tilde q$ 的 Dirichlet 特征给出模 $q$ 的 Dirichlet 特征. 由此产生了本原特征的概念, 即不能由更小的模数给出的模 $q$ 特征. 此时 $q$ 称为该特征的导子 (conductor).

连续群同态 $\chi\colon \widehat {\mathbb{Z}}^\times \to \mathbb{C}^\times$ 的导子 $q_\chi$ 是最小的使得 $\chi$ 穿过 $(\mathbb{Z}/q_\chi)^\times$ 的正整数.

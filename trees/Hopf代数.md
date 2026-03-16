---
title: Hopf 代数
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Hopf 代数可视为群的推广; 它具有[双代数](双代数.md)结构与一个对径映射, 对径映射可视为群中取逆运算的推广.

Hopf 代数上的模范畴是群表示范畴的推广.

另见[量子群](量子群.md).

另见[交换 Hopf 代数](交换Hopf代数.md).

## 定义

### 传统定义

[对称幺半 $1$-范畴](对称幺半范畴.md)中的 Hopf 代数是[双代数](双代数.md) $(A,m,\eta,\epsilon,\Delta)$ 带有对径映射 $S\colon A\to A$, 满足
$$
m (\mathrm{id} \otimes S) \Delta = m (S \otimes \mathrm{id}) \Delta = \eta\epsilon,
$$

若 Hopf 代数满足 $S^2=\mathrm{id}$, 则称之为**对合 Hopf 代数** (involutive Hopf algebra). 有时我们默认这个条件成立.

## 性质

Hopf 代数的对偶也是 Hopf 代数.

## 例

### 群代数

对于交换环 $k$ 与群 $G$, 群代数 $k[G]$ 是 Hopf 代数; 其对偶为群 $G$ 上的 $k$-值函数空间 $\operatorname{Hom}(k[G],k)$ 在卷积下构成的代数.

类似地, 对于有限型代数群 $G$, 其上 [D-模](D-模.md)的范畴 $D\text{-}\mathsf{Mod}(G)$ 是 [$\mathsf{DGCat}$](微分分次范畴.md) 中的 Hopf 代数.

### 泛包络代数

Lie 代数 $\mathfrak g$ 的[泛包络代数](泛包络代数.md) $\mathcal U\mathfrak g$ 是 Hopf 代数:

- 余乘法 $\Delta\colon \mathcal U\mathfrak g\to\mathcal U\mathfrak g\otimes\mathcal U\mathfrak g\simeq\mathcal U(\mathfrak g\times\mathfrak g)$ 由对角映射 $\mathfrak g\to\mathfrak g\times\mathfrak g$ 诱导, 其在 $X\in\mathfrak g$ 上的作用为 $\Delta(X)= X\otimes 1+1\otimes X$.
- 对极映射 $S\colon \mathcal U\mathfrak g\to\mathcal U\mathfrak g$ 由 $-\mathrm{id}\colon \mathfrak g\to\mathfrak g$ 诱导.

[仿射代数群](仿射代数群.md)

## 相关概念

[Cartier 对偶](Cartier对偶.md)

[拟三角 Hopf 代数](拟三角Hopf代数.md)

[交换 Hopf 代数](交换Hopf代数.md)
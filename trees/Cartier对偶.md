---
title: "Cartier 对偶"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Cartier 对偶是 [Pontryagin 对偶](Pontryagin对偶.md)的概形论类比, 是[内蕴态射对象](内蕴态射对象.md) $[-,\mathbb G_m]$.

## 定义
### 域上的 Cartier 对偶

设 $k$ 为域. 有限 $k$-群概形 (即 $\operatorname{Spec}k$ 上的有限群概形) $X=\operatorname{Spec}A$ 对应于 $k$ 上的有限维 [Hopf 代数](Hopf代数.md) $A$. 定义 $X$ 的 Cartier 对偶为 $\operatorname{Spec}A^*$, 其中 $A^*$ 是对偶 Hopf 代数.

### 一般概形上的 Cartier 对偶

设 $S$ 为概形, $S$ 上的有限群 $f\colon G\to S$ 是指其上有限且局部自由的群概形, 对应于 $\mathcal O_S$ 上的局部自由有限 Hopf 代数 $f_*\mathcal O_G$. 定义 $G\to S$ 的 Cartier 对偶 $G^*$ 为
$$
G^*:=\underline{\operatorname{Spec}}\mathcal Hom_{\mathcal O_S}(f_*O_G,\mathcal O_S).
$$
也可局部地定义 Cartier 对偶, 然后粘合.
### 点函子定义

点函子定义表明 Cartier 对偶是 Pontryagin 对偶的类比. 设 $G$ 是 $S$ 上的有限群概形. 那么 $G^*$ 余表示了如下函子:
$$
T \mapsto \operatorname{Hom}_{T\text{-}\mathsf{GrpSch}}(G_T,(\mathbb G_m)_T).
$$
## 性质

Cartier 对偶在 $S$ 上的有限交换群概形范畴上是一个加性的反变等价.

## 例

$m$ 阶单位根群 $\mu_m = \operatorname{Spec}k[x]/(x^m-1)$ 的 Cartier 对偶为 $\operatorname{Spec}k^m=\underline{\mathbb{Z}/m\mathbb{Z}}$ (常值群概形).


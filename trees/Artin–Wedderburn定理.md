---
title: Artin–Wedderburn 定理
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 陈述

[半单环](半单环.md) $R$ 是有限个除环上的矩阵代数的积:
$$
R \simeq \prod_{i=1}^n M_{n_i}(D_i).
$$

## 证明

将 $R$ 视为自身上的[模](结合代数上的模.md), 分解为单模:
$$
R \simeq \bigoplus X_i^{n_i}.
$$

由 [Schur 引理](Schur引理.md), 
$$
\operatorname{End}(R)\simeq \prod_{i=1}^n M_{n_i}(\operatorname{End}(X_i)),
$$
其中 $\operatorname{End}(X_i)$ 为除环.

最后, $R$ 作为模的自同态环同构于环 $R$:
$$
R\simeq \operatorname{End}(R).
$$
结论得证.
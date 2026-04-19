---
title: Milnor 纤维化
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Milnor 纤维化是刻画代数簇奇点局部的拓扑信息的工具.

复代数簇的奇点就是局部上不是流形的点.

考虑复代数簇
$$
V=\{(x,y)\in\mathbb{C}^2\mid y^2 = x^3\},
$$
容易看到, 它在奇点 $p=(0,0)$ 附近长得像三叶结 $K$ 的锥 $\operatorname{Cone}(K)$. [^1]

[^1]: 准确地说, 记 $D_\varepsilon = \{|(x,y)|\leq\varepsilon\}$, 当 $\varepsilon$ 充分小时, 三元组
$(D_\varepsilon,D_\varepsilon \cap V,p)$ 同构于 $(\operatorname{Cone}(S^3),\operatorname{Cone}(K),*)$.

一般而言, 孤立奇点的附近长得像某个低一维子流形的锥, 称为 **Milnor 扭结**.
有些奇异球面可构造为 Milnor 扭结.

## 定义

设 $V$ 是由多项式 $f\colon \mathbb{C}^n\to\mathbb{C}$ 定义的复超曲面, 且 $0\in V$ 为孤立奇点. 对于充分小的正数 $\varepsilon$, 记 $S_\varepsilon$ 为球面 $\{|z|=\varepsilon\}$, $K = V \cap S_\varepsilon$, 定义 **Milnor 纤维化**为
$$
\phi\colon S_\varepsilon \setminus K \to S^1,\,z\mapsto \frac{f(z)}{|f(z)|}.
$$

## 性质

Milnor 纤维化是 $S^1$ 上的光滑[纤维丛](纤维丛.md), 每个纤维是 $2n-2$ 维光滑流形, 同伦型为 $\mu$ 个 $S^{n-1}$ 的一点并, 其中 $\mu$ 称为 Milnor 数.


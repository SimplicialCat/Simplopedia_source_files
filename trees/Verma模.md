---
title: "Verma 模"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

#几何表示论 

Verma 模 $M_\lambda$ 是最大的以 $\lambda\in\mathfrak h^*$ 为最高权的[极大权模](最高权模.md).

Verma 模是[范畴 O](范畴O.md) 中比较 "简单" 的对象. (注意到正则表示不属于[范畴 O](范畴O.md).)

## 定义

权 $\lambda\in\mathfrak h^*$ 给出了 $\mathfrak h$ 的一维表示 $\mathbb{C}_\lambda$. 考虑短正合列 $0 \to \mathfrak n \to \mathfrak b \overset{\pi}{\to} \mathfrak h \to 0$, (见 [Borel 子代数](Borel子代数.md)), 将 $\mathfrak h$ 视为 $\mathfrak b$ 的商, 从而 $\mathbb{C}_\lambda$ 可通过 "拉回" 视为 $\mathfrak b$-表示. 定义 Verma 模 $M_\lambda$ 为这个 $\mathfrak b$-表示沿 $\mathfrak b\hookrightarrow\mathfrak g$ 的推前
$$
M_\lambda = \mathcal U\mathfrak g \otimes_{\mathcal U\mathfrak b} \mathbb{C}_\lambda.
$$
换言之, $M_\lambda$ 是由一个最高权向量 $v$ (即上述张量积定义中的 $1\otimes 1$) 根据关系 $hv=\lambda(h)v$ 生成的 $\mathcal U\mathfrak g$-模. 另一个等价的定义是, 令 $I_\lambda$ 为 $h-\lambda (h)$ ($h\in\mathfrak h$) 以及所有正根生成的 $\mathcal U\mathfrak g$ 的左理想, 定义
$$
M_\lambda = \mathcal U_{\mathfrak g} / I_\lambda.
$$

## 性质

[极大权模](极大权模.md)都是某个 Verma 模的商. 故 Verma 模又称泛极大权模.

Verma 模 $M_\lambda$ 的[形式特征](特征.md)为
$$
\frac{e^{\lambda}}{\prod_{\alpha\in R^+}(1-e^{-\alpha})}.
$$
其中 $R^+$ 表示正[根](根.md)的集合.
### 唯一的不可约商

Verma 模 $M_\lambda$ 有一个唯一的不可约商 $L_\lambda$. 这是因为, 任何真子模 $N\hookrightarrow M_\lambda$ 的权都不可能包含 $\lambda$, 所以存在最大的真子模, 也即所有真子模的并 (张成的子模).

$L_\lambda$ 是[范畴 O](范畴O.md) 中所有的不可约对象.
### Jordan–Holder 分解

Verma 模具有 [Jordan–Holder 分解](Jordan–Holder分解.md). 事实上, [范畴 O](范畴O.md) 的对象均为 [Artin 对象](Artin对象.md).

人们想要计算 $[M_\lambda : L_\mu]$. [BGG 定理](BGG定理.md)给出了 $[M_\lambda : L_\mu]\neq 0$ 的条件. 另见 [Kazhdan–Lusztig 猜想](Kazhdan–Lusztig猜想.md).
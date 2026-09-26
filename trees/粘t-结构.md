---
title: 粘 t-结构
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

[](term-recollement.md)

## 例

设 $i\colon Z\to X$ 为闭子簇, $j\colon U\to X$ 为相补的开子簇, 那么
$$
i^*\dashv (i_* = i_!) \dashv i^! \colon D_c^b(Z)
\begin{aligned}
&\leftarrow \\ &\rightarrow \\ &\leftarrow
\end{aligned}
D_c^b (X)
\begin{aligned}
&\leftarrow \\ &\rightarrow \\ &\leftarrow
\end{aligned}
D_c^b(U)\colon j_!\dashv (j^* = j^!)\dashv j_*
$$

对于 $M\in D_c^b(X)$ 有[纤维列](纤维列.md)
$$
i_!i^! M \to M \to j_*j^* M
$$

这一构造也可写成[松极限](松极限.md)
$$
D_c^b(X) = \operatorname{laxlim} [D_c^b(U) \overset{i^*j_* [-1]}{\longrightarrow} D_c^b(Z) ].
$$
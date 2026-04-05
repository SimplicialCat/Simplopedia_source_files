---
title: 从三角范畴到稳定范畴
tag: 讲义
author: [SimplicialCat](SimplicialCat.md)
---

**定义** (特殊三角)
范畴 $\mathcal C$ 中的**特殊三角** (distinguished triangle) 是指下图,
$$
\begin{array}{ccccc}
X & \rightarrow & Y & \rightarrow & 0 \\
\downarrow &  & \downarrow &  & \downarrow \\
0 & \rightarrow & Z & \rightarrow & X[1]
\end{array}
$$
其中两个方块均为[推出](推出.md) (从而整个长方形也是推出).


**定理** ([Lurie](LurieHA.md) 定理 1.1.2.14).
设 $\mathcal C$ 为[稳定范畴](稳定无穷范畴.md), 则同伦范畴 $h\mathcal C$ 为三角范畴.

我们验证八面体公理.

$$
\begin{array}{ccccccccc}
X & \rightarrow & Y & \rightarrow & Z & \rightarrow & 0 &  &  \\
\downarrow &  & \downarrow &  & \downarrow &  & \downarrow &  &  \\
0 & \rightarrow & Y/X & \rightarrow & Z/X & \rightarrow & X[1] & \rightarrow & 0 \\
 &  & \downarrow &  & \downarrow &  & \downarrow &  & \downarrow \\
 &  & 0 & \rightarrow & Z/Y & \rightarrow & Y[1] & \rightarrow & (Y/X)[1]
\end{array}
$$


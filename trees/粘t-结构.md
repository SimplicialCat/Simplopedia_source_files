---
title: 粘 t-结构
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

[](term-recollement.md)

## 陈述

**引理** ("Kashiwara 引理").
设 $D_U,D_Z$ 为带 [$t$-结构](t-结构.md)的稳定 $\infty$-范畴 (下标没有含义, 只是用于辅助理解),
$$
D_X = \operatorname{laxlim}(D_U \overset{i^*j_* [-1]}{\longrightarrow} D_Z),
$$
且有伴随
$$
(i^*\dashv i_*\dashv i^!)\colon 
D_Z
\begin{aligned}
&\overset{i^*}{\leftarrow}\\
&\overset{i_*}{\rightarrow}\\
&\overset{i^!}{\leftarrow}
\end{aligned}\,
D_X
\begin{aligned}
&\overset{j_!}{\leftarrow}\\
&\overset{j^*}{\rightarrow}\\
&\overset{j_*}{\leftarrow}
\end{aligned}\,
D_U \colon (j_!\dashv j^*\dashv j_*)
$$

则 $D_X$ 上存在唯一的 [$t$-结构](t-结构.md)使得 $j^*,i_*$ 均为 $t$-正合函子.

此时有

- $i^*$ 右 $t$-正合,
- $i^!$ 左 $t$-正合.

使用上同调指标,
$$
D_X^{\leq 0} = \{F\mid j^* F\leq 0, i^*F \leq 0\},
$$
$$
D_X^{\geq 1} = \{F\mid j^* F \geq 1, i^! F \geq 1\}.
$$

### 检验 $t$-结构的条件

我们可以检验 $t$-结构的条件. 设 $F\in D_X^{\leq 0}$, $F'\in D_X^{\geq 1}$, 我们证明 $\operatorname{Hom}(F,F')=0$. 这是因为它坐落于长正合列
$$
\cdots\to\operatorname{Hom}(F,i_!i^! F') \to \operatorname{Hom}(F,F') \to \operatorname{Hom}(F,j_*j^* F')\to\cdots
$$
但由伴随可知左右两项都是 $0$.

三角 $\tau^{\leq 0}F \to F \to \tau^{\geq 1}F$ 的构造比较麻烦.

先考虑三角 $i_! i^! F \to F \to j_* j^* F$, 将 $j^* F$ 截断到 $\leq 0$, 作拉回图
$$
\begin{CD}
i_! i^! F @>>> N @>>> j_* (j^* F)^{\leq 0} \\
@VVV @VVV @VVV \\
i_! i^! F @>>> F @>>> j_* j^* F.
\end{CD}
$$
作用 $i^*$ 得到
$$
i^! F \to i^* N \to i^* j_* (j^* F)^{\leq 0}.
$$
再令
$$
M = \operatorname{cofib}(N \to F),
$$
那么
$$
j^* M = (j^* F)^{\geq 1} \in D_U^{\geq 1}.
$$
另一方面, 作用 $i^!$ 得到
$$
i^! F\to i^! N \to 0.
$$
故
$$
i^! M = 0.
$$
这样我们调整了开部分.

下面调整闭部分.
考虑三角
$$
j_! j^! N \to N \to i_* i^* N,
$$
作拉回
$$
\begin{array}{ccccc}
j_! j^! N & \rightarrow & N' & \rightarrow & i_* (i^* N)^{\leq 0} \\
\downarrow &  & \downarrow &  & \downarrow \\
j_! j^! N & \rightarrow & N & \rightarrow & i_* i^* N.
\end{array}
$$
作用 $j^*$ 得到
$$
j^! N \to j^* N'\to 0
$$
故这一步不改变开部分.
作用 $i^*$ 得到
$$
0= i^* N' \to (i^*N)^{\leq 0}
$$
故 $i^* N'\in D_Z^{\leq 0}$.

容易得到
$$
\operatorname{cofib}(N'\to N)\geq 1
$$
进而
$$
M' = \operatorname{cofib}(N' \to F) \geq 1.
$$



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
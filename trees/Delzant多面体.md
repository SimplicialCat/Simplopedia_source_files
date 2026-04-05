---
title: "Delzant 多面体"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


考虑环面作用, 即环面 $T=(S^1)^n$ 在[辛流形](辛流形.md) $X$ 上的作用.

**定理**.

[动量映射](动量映射.md) $\Phi\colon X\to \mathfrak t^*$ 的像为多面体, 称为 **Delzant 多面体**.

**证明**.

第一步, 考虑不动点. 设 $x\in X$ 是 $T$-作用的不动点, 则 $x$ 处的切空间 $V$ 上有 $T$ 的线性作用 (即群表示).

记 $\Phi_1\colon V\to \mathfrak t^*$ 为切空间上线性作用的动量映射. 研究这个动量映射的原因是, $x$ 的一个邻域与切空间由指数映射相联系, $\Phi_1$ 与 $x$ 的邻域上原来的动量映射相差一个平移.

选取坐标系可以使得这个 $T$-表示 $V$ 是酉表示, 且
$$
\Phi_1\colon  (x,y)\mapsto \pi\sum_{i=1}^n(x_i^2 +y_i^2) \alpha_i,
$$
其中 $\alpha_1,\cdots,\alpha_n\in \mathfrak t^*$ 是 $T$-表示的[权](权.md).

**命题**. 映射 $\Phi_1$ 的像是 (多面体的角)
$$
S(\alpha_1,\cdots,\alpha_n) := \Big\{\sum_i s_i\alpha_i\colon s_i\geq 0 \Big\}.
$$

第二步, 考虑 $X$ 上的一般点. 设 $x\in X$ 是一般点, $T_1\subset T$ 是其稳定子群, $\mathfrak t_1$ 是对应的 $\mathfrak t$ 的子 Lie 代数, 其对偶映射为 $\pi\colon \mathfrak t^*\to \mathfrak t_1^*$.

定义 (多面体的棱) $S'(\alpha_1,\cdots,\alpha_n):= \pi^{-1}S(\alpha_1,\cdots,\alpha_n)$.

**命题**. (相对局部凸性) 存在 $x$ 的邻域 $U$, $p=\Phi(x)$ 的邻域 $U'$, 使得
$$
\Phi(U)=U'\cap (p+S'(\alpha_1,\cdots,\alpha_n)).
$$

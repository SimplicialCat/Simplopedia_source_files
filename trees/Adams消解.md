---
title: "Adams 消解"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---




> Miller 的文章

设 $A$ 为[环谱](环谱.md). 称谱 $X$ 为 $A$-内射谱是指如下条件之一成立:
- 存在谱 $Y$ 使得 $X$ 是 $Y\wedge A$ 的收缩;
- $\mathbb S\wedge X \to A\wedge X$ 分裂.

称复合为零的一对态射 $X'\to X\to X''$ 为序列. 称该序列 $A$-正合, 是指对任意 $A$-内射谱 $I$ 有 $[X',I]\leftarrow [X,I] \leftarrow [X'',I]$ 正合.

所谓谱 $X$ 的 $A$-消解是指一个 $A$-正合的长序列 $0\to X\to I^0 \to I^1 \to \cdots$, 每个 $I^s$ 为 $A$-内射谱. 由一个 $A$-消解, 可构造一列正合三角: 令 $X^0=X$, 然后依次构造如下正合列,
- $X^1\overset{i}{\to} X^0\overset{j}{\to} I^0\overset{k}{\to}\Sigma X^1$,
- $X^2\overset{i}{\to} X^1\overset{j}{\to} \Omega I^1\overset{k}{\to}\Sigma X^2$,
- $X^{s+1}\to X^s \to \Omega^s I^s\overset{k}{\to}\Sigma X^{s+1}$, ...
使得 $I^s \overset{k}{\to} \Sigma^{s+1} X^{s+1} \overset{j}{\to}I^{s+1}$ 等于消解中的态射 $d\colon I^s\to I^{s+1}$. 于是我们得到[同伦纤维塔](同伦纤维塔.md)
$$
\begin{array}
	{ccc}
	\vdots && \\
	X^2 & \overset{j}{\to} & \Omega I^2 \\
	\downarrow && \\
	X^1 & \overset{j}{\to} & \Omega I^1 \\
	\downarrow && \\
	X^0 & \overset{j}{\to} & I^0.
\end{array}
$$
### 标准消解

对于环谱 $E$ 考虑 $\mathbb S\to E$ 的对偶 [Cech 脉](Cech脉.md)与 $X$ 的乘积
$$
X\to E\wedge X \to^2 E\wedge E\wedge X\to^3\cdots,
$$
取其交错和即得到 $X$ 的一个 Adams 消解, 称为标准消解.


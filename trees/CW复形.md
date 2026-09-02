---
title: CW 复形
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

CW 复形是通过一系列粘贴胞腔操作得到的空间:
$$
X = \operatorname{colim}(X_0\to X_1\to\cdots),
$$
每个嵌入 $X_n\to X_{n+1}$ 来自拓扑空间范畴中的[推出](推出.md)
$$
\begin{CD}
\bigcup_I S^n @>>> X_n \\
@VVV @VVV \\
\bigcup_I D^{n+1} @>>> X_{n+1}.
\end{CD}
$$

CW 复形在[同伦论](同伦论.md)上的意义是其对应的[生象](生象.md) $X$ 自动带有一个[滤过](滤过.md)
$$
X_0 \to X_1 \to X_2\to \cdots,
$$
其逐项[余纤维](余纤维列.md)为球面束 (球面的一点并).
$$
\begin{CD}
I\times S^n @>>> X_n @>>> * \\
@VVV @VVV @VVV \\
I @>>> X_{n+1} @>>> \bigvee_I S^{n+1}
\end{CD}
$$
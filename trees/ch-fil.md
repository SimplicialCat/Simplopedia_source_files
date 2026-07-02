---
title: 链复形与滤对象
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

设 $\mathcal C$ 为[稳定范畴](稳定无穷范畴.md), $F_\bullet$ 为其中的[滤对象](滤过.md), 其[分次对象](分次对象.md)为
$$
\operatorname{gr}_nF := \operatorname{cofib}(F_{n-1} \to F_n).
$$
那么有映射
$$
\operatorname{gr}_nF \to F_{n-1} [1],
$$
上述所有映射可以连成一个图:
[](ch-fil-1.typ#:block)
其中复合映射
$\operatorname{gr}_nF \to \operatorname{gr}_{n-2}F[2]$
等于 $0$. 这便是滤对象对应的[链复形](链复形.md).

现设 $F_{\bullet\bullet}$ 为双重滤对象, 即滤对象中的滤对象, 也即函子 $(\mathbb{Z},\leq)^2\to\mathcal C$. 其对应的双分次对象来自**全余纤维** (total cofiber)
$$
\operatorname{gr}_{p,q}F :=
\operatorname{totcofib}
\Bigg(
{\begin{array}{ccc}
F_{p-1,q-1} & \rightarrow & F_{p,q-1} \\
\downarrow &  & \downarrow \\
F_{p-1,q} & \rightarrow & F_{p,q}
\end{array}}
\Bigg).
$$
同时双分次对象也可以累次计算: 若将 $F$ 视为滤对象中的滤对象 $\tilde F\colon \mathbb{Z}\to\mathsf{Fun}(\mathbb{Z},\mathcal C)$, 则
$$
\operatorname{gr}_{p,q}F = \operatorname{gr}_p\operatorname{gr}_q \tilde F.
$$
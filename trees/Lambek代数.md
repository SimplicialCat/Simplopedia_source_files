---
title: Lambek 代数
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

范畴 $\mathcal C$ 的自函子 $F$ 的 **Lambek 代数**就是对象 $X\in\mathcal C$ 配备一个态射 $F(X)\to X$. 记 $\mathsf{alg}_F(\mathcal C)$ 为 $F$-Lambek 代数的范畴.

对偶地, $F$-**Lambek 余代数**是对象 $X\in\mathcal C$ 配备一个态射 $X\to F(X)$. 记 $\mathsf{coalg}_F(\mathcal C)$ 为 $F$-Lambek 余代数的范畴.

## 性质

### 始对象

Lambek 代数范畴中的始对象是一种重要范畴论构造, 见[始代数](始代数.md).

### 自由–遗忘伴随

**命题** (参考 [GHK](GHK-analytic-monads.md) 4.2 节). 设范畴 $\mathcal C$ 具有[滤余极限](滤余极限.md)和二元[和](和(范畴论).md), 自函子 $P\colon \mathcal C\to\mathcal C$ 保持[滤余极限](滤余极限.md). 那么有[单子性](单子性函子.md)的[自由–遗忘伴随](自由-遗忘伴随.md)
$$
F\colon \mathcal C \rightleftarrows \mathsf{alg}_{P}(\mathcal C)\colon U,
$$
且这对伴随[给出的单子](伴随给出单子.md) $\overline{P}$ 正是自函子 $P$ 上的[自由单子](自由单子.md). 进一步有
$$
\mathsf{Alg}_{\overline{P}}(\mathcal C) \simeq \mathsf{alg}_P(\mathcal C).
$$

### 杠–余杠对偶

考虑[扭箭头范畴](扭箭头范畴.md) $\mathsf{Tw}(\mathcal C) \to\mathcal C^{\mathrm{op}}\times\mathcal C$ (即 $\operatorname{Hom}\colon \mathcal C^{\mathrm{op}}\times\mathcal C\to\mathsf{Ani}$ 的[元素范畴](元素范畴.md)), 有函子
$$
\mathsf{Tw}(P)\colon \mathsf{Tw}(\mathcal C) \to \mathsf{Tw}(\mathcal C),
$$
且其 Lambek 代数范畴有函子
$$
\begin{aligned}
\mathsf{alg}_{\mathsf{Tw}(P)}(\mathsf{Tw}(\mathcal C)) &\to \mathsf{alg}_{P^{\mathrm{op}}}(\mathcal C^{\mathrm{op}}) \times \mathsf{alg}_P(\mathcal C) \\&= \mathsf{coalg}_P(\mathcal C)\times\mathsf{alg}_P(\mathcal C).
\end{aligned}
$$
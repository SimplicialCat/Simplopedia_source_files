---
title: 凝聚态 Abel 群
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 性质

**命题 (AB6)**.
对于指标集合 $J$ 以及一族滤范畴 $I_j (j\in J)$, 自然映射
$$
\operatorname{colim}_{(i_j\in I_j)_j} \prod_{j \in J} M_{i_j} \to \prod_{j \in J} \operatorname{colim}_{i_j \in I_j} M_{i_j}
$$
为同构.

证明. 将凝聚态 Abel 群视为[极不连通空间](极不连通空间.md)范畴 $\mathsf{ExDisc}$ 上的层, 也即保持有限乘积的函子 $\mathsf{ExDisc}^{\mathrm{op}} \to \mathsf{Ab}$. 注意到 $\mathsf{Ab}$ 中任意的极限和余极限都与有限乘积相容, 我们得到余极限是逐点计算的. (一般而言层的极限是逐点计算的, 而余极限是逐点余极限的层化, 所以此处的结论是特殊的, 是 $\mathsf{ExDisc}$ 这个表现的一个重要用处.)
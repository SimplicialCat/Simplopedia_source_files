---
title: 紧 Hausdorff 空间
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

紧 Hausdorff 空间是一种非常特殊的拓扑空间, 特殊性在于这种空间构成的范畴 $\mathsf{CHaus}$ 是 "代数的", 大约意思是这个范畴的定义可以完全不提到拓扑两个字.

## 性质

### 单子性

紧 Hausdorff 空间范畴到集合范畴的遗忘
$$
\mathsf{CHaus} \to \mathsf{Set}
$$
是[单子性函子](单子性函子.md). 这是 "代数性" 的一种含义. 具体地, 这个单子是[超滤](超滤.md)单子 $\beta$. 一个紧 Hausdorff 空间 $X$ 等同于 $\beta$-代数, 其中映射
$$
\beta X\to X
$$
给出 $X$ 中每个超滤所收敛到的唯一的点. 注意紧性表明超滤收敛, 而 Hausdorff 性质表明收敛到的点唯一.
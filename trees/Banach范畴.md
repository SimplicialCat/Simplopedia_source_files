---
title: "Banach 范畴"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


[加性范畴](加性范畴.md)上的 Banach 结构是其每个态射空间上的 Banach 空间结构, 满足态射的复合
$$
\operatorname{Hom}(X,Y) \times \operatorname{Hom}(Y,Z) \to \operatorname{Hom}(X,Z)
$$
是连续映射. 带有 Banach 结构的加性范畴称为 Banach 范畴.

## 例

最重要的例子是**向量丛范畴**: 设 $X$ 是紧空间, 则 $X$ 上的向量空间范畴 $\mathcal E(X)$ 有 Banach 结构.

有趣的是, 空间上的向量丛范畴等价于代数上的模范畴 (这是[代数-几何对偶](代数-几何对偶.md)的一例):

**定理**. 设 $X$ 是紧空间, $A=C(X)$ 是 $X$ 上的 (实数或复数值) 连续函数的 Banach 代数, 以 $\mathcal P(A)$ 表示 $A$-代数范畴, 那么全局截面函子给出了范畴等价 $\mathcal E(X) \to \mathcal P(A)$.

**证明**.
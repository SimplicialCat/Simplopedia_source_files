---
title: Azumaya 范畴
tag: 百科
subject : [范畴论](范畴论.md)
author: [SimplicialCat](SimplicialCat.md)
---

Azumaya 范畴是 [Azumaya 代数](Azumaya代数.md)在[充实范畴](充实范畴.md)中的推广.

## 定义

参考 [Borceux–Vitale](BorceuxVitaleAzumayaCategory.md).

设 $\mathcal V$ 为余完备[闭](闭范畴.md)[对称幺半范畴](对称幺半范畴.md). 记 $\mathcal I$ 为仅有一个对象 $*$ 且满足 $\operatorname{Hom}(*,*)=1$ 的 $\mathcal V$-[充实范畴](充实范畴.md).

对于 $\mathcal V$-[充实范畴](充实范畴.md) $A$, 如下条件等价:

1. 存在 $\mathcal V$-[充实范畴](充实范畴.md) $\mathcal B$, 使得 $A\otimes\mathcal B$ [Morita 等价](Morita等价.md)于 $\mathcal I$.
2. $\mathcal A\otimes\mathcal A^{\mathrm{op}}$ [Morita 等价](Morita等价.md)于 $\mathcal I$.
3. $\mathcal A$ 为中心可分 $\mathcal V$-充实范畴, 且典范函子 $\mathcal A\otimes\mathcal A^{\mathrm{op}} \to\mathcal V$ 为 $\mathcal A\otimes\mathcal A^{\mathrm{op}}$-模中的强生成元.
4. 典范函子 $\mathcal A\otimes\mathcal A^{\mathrm{op}} \to\mathcal V$ [全忠实](全忠实函子.md), 且作为 $(\mathcal A\otimes\mathcal A^{\mathrm{op}},\mathcal I)$-[双模](充实范畴上的模.md), 为小投射强生成元.

**注**. [Azumaya 代数](Azumaya代数.md)是上述概念 $\mathcal V = \mathsf{Mod}(R)$ 的特殊情形.

[充实范畴上的模](充实范畴上的模.md)页面解释了上述定义中涉及的概念. 这些概念都是环上的模与代数的类似概念的推广.
---
title: Morita 范畴
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

一般而言, 以某种[结合代数](结合代数.md) $A$ 代表其上的模范畴 $\operatorname{Mod}(A)$, 代数之间的态射 $A\to B$ 是模范畴之间的 (加性, 余连续) 函子 $\mathsf{Mod}(A)\to\mathsf{Mod}(B)$, 也等同于 $(A,B)$-双模 (即[充实](充实范畴.md)的单对象范畴之间的[代函子](代函子.md)), 所得的 $2$-范畴称为 Morita 范畴, 该范畴中的等价为 [Morita 等价](Morita等价.md).

更一般地, [$\mathbb E_n$-代数](En-代数.md)构成[高阶 Morita 范畴](高阶Morita范畴.md).

## 性质

### 与线性范畴的关系

**定理** (Eilenberg–Watts). 设 $F\colon \mathsf{RMod}(R) \to \mathsf{RMod}(S)$ 为加性余连续函子, 则存在 $(R,S)$-双模 $N$ 使得
$$
F \simeq (-)\otimes_R N.
$$

## 例

幺半 [DG 范畴](微分分次范畴.md)的 Morita 范畴是一个 $3$-范畴, 其对象为 $\mathcal A\text{-}\mathrm{Mod}(\mathsf{DGCat})$, 态射 $\mathcal A\text{-}\mathrm{Mod}(\mathsf{DGCat}) \to \mathcal B\text{-}\mathrm{Mod}(\mathsf{DGCat})$ 构成的 $2$-范畴为双模范畴
$$
(\mathcal A^{\text{rev}}\otimes\mathcal B)\text{-}\mathrm{Mod}(\mathsf{DGCat}),
$$
其中 $\mathcal A^{\text{rev}}$ 表示将 $\mathcal A$ 的乘法 (幺半结构) 反转.
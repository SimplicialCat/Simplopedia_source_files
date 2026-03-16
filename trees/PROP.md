---
title: PROP
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

PROP (product and permutation category, "积-置换范畴") 是指所有对象均形如 $x^{\otimes n}$ 的[对称幺半范畴](对称幺半范畴.md). 我们保留 PROP 这个名字是因为它的厚重历史.

[Lawvere 理论](Lawvere理论.md)是 PROP 的特殊情形: 它的运算 $\otimes$ 是范畴论[积](积(范畴论).md).

PROP 又可视为单色[算畴](算畴.md): 对于 PROP $\mathcal P$, $\operatorname{Hom}_{\mathcal P}(x^{\otimes n},x)$ 构成一个单色算畴的 $n$-元运算.

## 例

### 平凡运算

有限集与**双射**构成的范畴 $\mathsf{Fin}^{\simeq}$ 配备不交并, 构成一个平凡的 PROP, 它是一个对象生成的自由[对称幺半范畴](对称幺半范畴.md). 对任意对称幺半范畴 $\mathcal C$, 其中的对象等同于对称幺半函子 $\mathsf{Fin}^{\simeq} \to \mathcal C$.

### 交换运算

有限集的范畴 $\mathsf{Fin}$ 配备[余积](和(范畴论).md)幺半结构, 是一个 PROP, 因为每个有限集都是有限个单点集的并. 这个 PROP 记录了[交换代数](交换代数.md)的[语法](语法范畴.md): 对任意对称幺半范畴 $\mathcal C$, 其中的交换代数等同于对称幺半函子 $\mathsf{Fin} \to \mathcal C$.

### 结合运算

考虑如下范畴 $\mathcal S$:

- 其对象为有限集;
- 态射 $X\to Y$ 是一个集合映射 $f\colon X\to Y$ 配备每个点的原像 $f^{-1}(y)$ 的一个[全序](全序集.md).

这个范畴记录了对称幺半范畴中的[结合代数](结合代数.md)的语法. 任意对称幺半范畴 $\mathcal C$ 中的结合代数等同于对称幺半函子 $\mathcal S \to \mathcal C$.

### 小方块

如下 PROP 可视为 $\mathsf{Top}$-[充实范畴](充实范畴.md)或 $(\infty,1)$-范畴, 对应[小方块算畴](小n-方块算畴.md):

- 其对象为若干方块 $[0,1]^n$ 的无交并;
- 态射 $f \colon \sqcup_k [0,1]^n \to \sqcup_m [0,1]^m$ 为横平竖直的嵌入, 即 $f$ 在每个 $[0,1]^n$ 上的限制均为缩放与平移的复合.
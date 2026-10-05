---
title: 算畴左 Kan 扩张
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

类似于左 [Kan 扩张](Kan扩张.md)是函子范畴之间拉回的左[伴随](伴随.md), 对于余完备[对称幺半范畴](对称幺半范畴.md) $\mathcal C$ 以及[算畴](算畴.md)的态射 $f\colon \mathcal O\to\mathcal P$, 在代数范畴之间也有拉回 $f^*\colon \mathsf{Alg}_{\mathcal P}(\mathcal C)\to\mathsf{Alg}_{\mathcal O}(\mathcal C)$ 的左伴随
$$
    f_! \colon \mathsf{Alg}_{\mathcal O}(\mathcal C)\to\mathsf{Alg}_{\mathcal P}(\mathcal C),
$$
称为[算畴左 Kan 扩张](oLKE.md) (operadic left Kan extension). 代数范畴之间的拉回可视为遗忘函子, 而算畴左 Kan 扩张给出**自由代数**.

## 性质

### 具体计算式

对于 $A\in\mathsf{Alg}_{\mathcal O}(\mathcal C)$, $P\in\mathcal P$,
$$
    (f_!A)(P) = \operatorname{colim}_{\alpha\colon f(O)\leadsto P} \pi(\alpha)_! A(O),
$$
其中 $\leadsto$ 表示活性映射, $O\in\mathcal O^\otimes$, $\pi\colon \mathcal P^\otimes\to\mathsf{Fin}_*$.

## 例

### 分解同调

[分解同调](分解同调.md)
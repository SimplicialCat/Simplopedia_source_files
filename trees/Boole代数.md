---
title: Boole 代数
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Boole 代数是经典逻辑的[语义](语法–语义对偶.md). 如 Boole 代数中的积 (交) 是逻辑与 $X\wedge Y$, 指数 $Y^X$ 是逻辑蕴含 $X\Rightarrow Y$, 赋值映射是推理法则 $(X\Rightarrow Y)\wedge X \leq Y$ 等等.

## 定义

Boole 代数是具有补运算的[分配格](分配格.md).

Boole 代数与 [Boole 环](Boole环.md)可以相互转化.

## 性质

### 谱

记 Boole 代数 $B$ 的**谱**为
$$
\operatorname{Spec}(B) = \operatorname{Hom}_{\mathsf{Boole}}(B,2).
$$
则有
$$
\operatorname{Hom}_{\mathsf{Boole}}(B,2^X) \simeq \operatorname{Hom}_{\mathsf{Set}}(X,\operatorname{Spec}(B)),
$$
即函子 $2^{(-)}\colon \mathsf{Set}\to\mathsf{Boole}^{\mathrm{op}}$ 与 $\operatorname{Spec}\colon \mathsf{Boole}^{\mathrm{op}}\to\mathsf{Set}$ 满足[伴随](伴随.md)关系 $2^{(-)}\dashv\operatorname{Spec}$. 这对伴随[给出的单子](伴随给出单子.md)为 $\mathsf{Set}$ 上的[超滤单子](超滤.md).

### Stone 对偶

[Stone 对偶](Stone对偶.md)
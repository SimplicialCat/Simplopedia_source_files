---
title: 交换 Hopf 代数胚
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

交换 Hopf 代数胚是[仿射概形](仿射概形.md)范畴中的[群胚](群胚.md)的[代数侧对偶](代数-几何对偶.md)概念.

## 定义

...

### 余模

交换 Hopf 代数胚 $(A,\Gamma)$ 上的**余模**为 $A$-模 $M$, 带有余作用
$$
\eta \colon M \to \Gamma\otimes_A M,
$$
满足
- (余单位律) $M \to \Gamma\otimes_A M \to M = \operatorname{id}_M$;
- (余结合律) $M\to \Gamma\otimes_A \Gamma\otimes_A M$ 的两个映射相等.


## 性质

### 与叠的关系

一个交换 Hopf 代数胚 $(A,\Gamma)$ 也给出一个叠
$$
\mathcal M_{(A,\Gamma)}\colon \mathsf {Ring} \to \mathsf {Grpd},
$$
$$
R\mapsto \{\operatorname{Hom}_{\mathsf {Ring}}(\Gamma,R)\rightrightarrows \operatorname{Hom}_{\mathsf {Ring}}(A,R)\}.
$$

交换 Hopf 代数胚 $(A,\Gamma)$ 上的余模即是叠 $\mathcal M_{(A,\Gamma)}$ 上的[拟凝聚层](拟凝聚层.md)
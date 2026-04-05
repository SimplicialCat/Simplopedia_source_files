---
title: "Gromov--Witten 不变量"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


一种来自量子物理的曲线计数 (curve counting) 理论.

## 物理图景

> 以下是 Artan Sheshmani 的 BIMSA 公开课的笔记.

远大愿景: 将量子力学与 Einstein 引力理论融合起来, 建立一个严格的数学模型.

弦论构造的宇宙是 $4$ 维时空上附着的 $6$ 维 ([Calabi--丘流形](Calabi--丘流形.md)) 纤维丛. 微观粒子向 $6$ 维的纤维方向的扩张 (extension) 由 $1$ 维的曲线即 "弦" 给出, 不同粒子对应的弦的振动方式不同.

我们需要研究弦的量子相互作用 (quantum interaction). [Feynmann 图](Feynmann图.md)和 [Feynmann 路径积分](Feynmann路径积分.md)描述了粒子的量子相互作用. 而在弦论中, 弦的移动给出管状的 $2$-维曲面 ("世界面"), 其上有 Riemann 度量, 事实上是一个 [Riemann 面](Riemann面.md). 此时的 [Feynmann 路径积分](Feynmann路径积分.md)是在所有 ([Calabi--丘流形](Calabi--丘流形.md)中的) [Riemann 面](Riemann面.md)的[模空间](模空间.md)上进行的. 不幸的是, 这个积分不良定义, 因为其中与路径的几何性质 (引力) 相关的一个测度会在有奇点的路径 (如 Riemann 面生出一个无穷长细圆柱) 处爆炸. 补救的方法是研究弦论的拓扑版本, 即允许路径的 (保持拓扑性质的) 光滑化, 又称[重整化](重整化.md) (renormalizing). 背景的 [Calabi--丘流形](Calabi--丘流形.md)的几何 (复结构, [Kähler 流形](Kähler结构.md)) 经历着不断的 (引力) 形变 (deformations, fluctuations). 我们希望路径积分在形变之下不变, 这便是 **Gromov--Witten 不变量**.

## 稳定性

稳定性是指自同构群有限.

**事实.** 设 $C$ 为光滑复不可约射影曲线, [亏格](亏格.md)为 $g$,

- 若 $g=0$, 则 $C\simeq \mathbb P^1$, $\operatorname{Aut}(\mathbb P^1)\simeq PGL_2(\mathbb{C})$, 自同构太多了, 我们不喜欢;
- 
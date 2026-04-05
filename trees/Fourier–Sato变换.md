---
title: Fourier–Sato 变换
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Fourier–Sato (佐藤) 变换是一种[积分变换](拉-推.md), 将线性空间上的锥形对象对应到对偶空间上的锥形对象. (锥形的意思是在 $\mathbb{R}_+$-[作用](群作用.md)的轨道上局部常值.)

## 定义

对于实流形 $M$ 上的向量丛 $V$ 与其对偶 $V^*$, 考虑下图.

[](Fourier–Sato变换-1.typ#:block)

考虑
$$
P = \{ (x,y) \in V \times_M V^* \mid \langle x,y\rangle \leq 0 \},
$$

定义 $V$ 上的锥形层 $F$ 的 Fourier–Sato 变换为
$$
F^\wedge = R{p_2}_{!} \, (p_1^* F)_P.
$$
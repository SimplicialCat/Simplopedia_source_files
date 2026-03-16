---
title: Poisson 流形
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

Poisson 流形是一个流形 $M$ 配备其光滑函数环 $C^\infty(M)$ 的 [Poisson 结构](Poisson代数.md).

Poisson 流形之间保持 Poisson 结构 (即满足 $\varphi^* \{f,g\} = \{\varphi^* f,\varphi^* g\}$) 的光滑映射 $\varphi$ 称为**典范变换** (canonical transformation).

Poisson 流形 $M$ 上的每个光滑函数 $h$ 给出 $C^\infty(M)$ 上的一个[导子](导子.md) $\{-,h\}$, 也即一个向量场 $X_h$.



## 经典力学系统

一个 Poisson 流形 $M$ 加上一个取定的函数 $h \in  C^\infty(M)$ 构成一个[经典力学系统](经典力学系统), 其中 $M$ 称为**相空间** (phase space), $h$ 称为 **Hamilton 量**. Hamilton 量的中心化子 (所有满足 $\{f,h\}=0$ 的元素 $f\in C^\infty(M)$ 构成的子代数, 也即所有在向量场 $X_h$ 下不变的函数) 称为**守恒量** (conserved quantities).

设 Lie 群 $G$ 通过典范变换作用于 Poisson 流形 $M$, 且轨道空间 $M / G$ 仍为流形, 则 $M/G$ 具有 Poisson 结构, 这是一种 [Poisson 约化](Poisson约化.md).

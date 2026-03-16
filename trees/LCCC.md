---
title: 局部积闭范畴
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

局部积闭范畴是[依值类型论](依值类型论.md)的[语义](范畴语义.md).

## 定义

**局部积闭范畴** (locally Cartesian closed category, LCCC) $\mathcal C$ 是满足所有[俯范畴](俯范畴.md) $\mathcal C_{/X}$ 均为[积闭范畴](积闭范畴.md)的范畴. 通常我们要求 $\mathcal C$ 有[终对象](终对象.md) $1$, 从而 $\mathcal C \simeq\mathcal C_{/1}$ 本身也是[积闭范畴](积闭范畴.md).

## 性质

### 依值积

对于局部积闭范畴 $\mathcal C$ 中的态射 $f\colon X\to Y$, 俯范畴的拉回 $f^* \colon \mathcal C_{/Y} \to \mathcal C_{X}$ 同时有左伴随 $\Sigma_f$ 与右伴随 $\Pi_f$, 它们分别是[依值和](依值和.md)与[依值积](依值积.md)的[语义](语法–语义对偶.md).

## 例

[意象](意象.md)是局部积闭范畴.
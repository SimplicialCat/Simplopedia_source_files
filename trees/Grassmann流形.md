---
title: Grassmann 流形
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Grassmann 流形是一个线性空间的固定维数的子空间的[分类空间](分类空间.md).

## 定义

### 作为商流形

对于自然数 $k,n$, 定义
$$
\mathrm{Gr}_n (\mathbb{R}^{n+k}) := \frac{\mathrm{GL}_{n+k}(\mathbb{R})}{\mathrm{GL}_{n}(\mathbb{R})\times \mathrm{GL}_{k}(\mathbb{R})}.
$$

## 性质

### 余极限

固定自然数 $k$, 在[生象](生象.md)范畴中有如下余极限:
$$
\operatorname{colim}_n \mathrm{Gr}_n (\mathbb{R}^{n+k}) = \operatorname{colim}_n \mathrm{Gr}_k (\mathbb{R}^{n+k}) = \mathbf{B}\mathrm{GL}_k (\mathbb{R}).
$$

直观: $\mathbb{R}^k$ 嵌入 $\mathbb{R}^{n+k}$, 当 $n$ 趋向无穷大时, 这个嵌入所含的信息趋近于无, 故分类空间趋近于 $k$ 维线性空间的分类空间.
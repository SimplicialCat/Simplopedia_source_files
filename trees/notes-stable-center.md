---
title: 稳定中心猜想
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

本文是为准备 2026 年春季学期徐斌老师 "朗兰兹纲领选讲" 课程报告而记的笔记. 主要参考 [BKV](BKV-SCC.md).

## 可容许 ind-叠上的可构造层

### 可容许态射

记 $\mathsf{Sch}_k$ 为 qcqs $k$-概形的范畴.

**引理**. $\mathsf{Sch}_k$ 中以[余滤](余滤范畴.md)偏序集为指标, 以[仿射态射](仿射态射.md)为转移态射的图表具有极限.

记 $\mathsf{Var}_k$ 为有限型[分离](分离态射.md) $k$-概形的范畴. 固定素数 $\ell$ 不同于 $k$ 的特征. 记 $D(X) := D_c^b(X,\overline{\mathbb{Q}_\ell})$ 为可构造 $\overline{\mathbb{Q}}_\ell$-层的有界导出范畴. $\mathsf{Var}_k$ 中的每个态射 $f\colon X\to Y$ 都给出四个函子 $f^*\dashv f_*$, $f_!\dashv f^!$.

设 $k$ [可分闭](可分闭域.md). 对于 $X\in \mathsf{Var}_k$, 若典范的映射 $\mathbb{Q}_\ell \to R\Gamma(X,\mathbb{Q}_\ell)$ 为同构, 则称 $X$ **无圈** (acyclic). 例如 $\mathbb A^n$ 无圈.

对于 $\mathsf{Sch}_k$ 中的有限表现态射 $f\colon X\to Y$, 若 $f$ 光滑, 且所有几何纤维无圈, 则称 $f$ **幂幺** (unipotent).

回忆光滑态射 $f$ 满足 $f^!\simeq f^*[2n](n)$. 光滑态射 $f$ 幂幺当且仅当余单位 $f_!f^!\to \mathrm{id}_{D(Y)}$ 为同构, 也等价于 $f^!\colon D(Y)\to D(X)$ 为全忠实函子 ([](自反子范畴.md)).

对于 $\mathsf{Sch}_k$ 中的态射 $f\colon X\to Y$, 若如下条件成立则称其**可容许**:

- 存在 $Y$ 上的余滤图表 $\{X_i\}_{i\in I}$, 使得 $X\simeq\lim_i X_i$, 每个 $X_i\to Y$ 有限表现, 转移态射 $X_i\to X_j$ 仿射且幂幺.

此时称 $\{X_i\}_{i\in I}$ 为 $X\to Y$ 的一个**可容许表现**.

若 $X\to Y$ 有可容许表现 $\{X_i\}_{i\in I}$, 其中存在 $i$ 使得 $X_i\to Y$ 幂幺, 则称 $X\to Y$ 为 [pro-](pro-对象.md)幂幺态射.

当 $X\to \operatorname{Spec}k$ 可容许时, 称 $X$ 可容许. 记可容许 $k$-概形的范畴为 $\mathsf{ASch}_k$.

可容许态射关于复合封闭.

### 可构造层

对于 $X\in\mathsf{Sch}_k$, 记 $(X/\cdot)$ 为[仰范畴](仰范畴.md) $(\mathsf{Var}_k)_{X/}$. 由于 $\mathsf{Var}_k$ 具有[纤维积](拉回.md), $(X/\cdot)$ 为[余滤范畴](余滤范畴.md).

记 $(X/\cdot)^{\mathrm{sm}}$, $(X/\cdot)^{\mathrm{un}}$ 为 $(X/\cdot)$ 中由形式光滑态射, pro-幂幺态射 $X\to V$ 构成的子范畴.

定义

- $M(X) := \operatorname{colim}^!_{(X/\cdot)^{\mathrm{op}}} D(V)$, 即 $!$-拉回构成的图的余极限;
- $D(X) := \operatorname{colim}^*_{(X/\cdot)^{\mathrm{op}}}D(V)$, 即 $*$-拉回构成的图的余极限;
- $\widehat {M}(X) := \operatorname{lim}^!_{(X/\cdot)} D(V)$, 即 $!$-推前构成的图的极限;
- $\widehat {D}(X) := \operatorname{lim}^*_{(X/\cdot)}D(V)$, 即 $*$-推前构成的图的极限.

$D(X),M(X),\widehat {M}(X)$ 分别类比于局部常值函数的空间,  局部常值测度的空间, 全体测度的空间.

### ind-概形的情形

### ind-叠

记 $\mathsf{St}_k$ 为 $\operatorname{Spec}k$ 上的叠的 $2$-范畴, $\mathsf{Art}_k^{\mathrm{ft}}$ 为有限型 Artin 叠的子范畴.

### 几何对象的 $2$-范畴

## Hecke 代数的范畴化

### 环路空间

记 $K = k(\!(t)\!)$, $\mathcal O = k[\![t]\!]$. 固定 $n\in\mathbb{Z}_{\geq 0}$.

## 稳定中心猜想

## Bernstein 投影算子的稳定性
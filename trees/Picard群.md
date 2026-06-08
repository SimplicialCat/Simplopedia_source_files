---
title: Picard 群
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

空间的 **Picard 叠**是其上[线丛](线丛.md) (即 [$\mathbb{G}_m$](乘法群概形.md)-[主丛](主丛.md)) 的[模空间](模空间.md),
$$
\mathrm{Pic}(X) = \operatorname{Maps}(X,\mathbf{B}\mathbb{G}_m);
$$
**Picard 群**是 Picard 叠的 $0$-[截断](截断性(同伦类型论).md), 即线丛的同构类关于张量积构成的群.

## 定义

### 复流形

紧复流形 $M$ 的 Picard 群 $\text{Pic}(M)$ 是[全纯线丛](全纯线丛.md)的同构类关于张量积构成的群. $\text{Pic}(M)$ 的单位元是平凡丛, 也即全纯函数层 $\mathcal O_M$.

定义 $\text{Pic}^0(M)$ 为 $\text{Pic}(M)$ 中由第一[陈类](陈类.md)等于零的线丛构成的子群.

### 概形

[概形](概形.md) (或[环化空间](环化空间.md)) $X$ 的 Picard 群 $\operatorname{Pic}(X)$ 是 $X$ 上秩为 $1$ 的局部自由 $\mathcal O_X$-模的同构类在张量积下构成的群. 它也同构于[平展上同调](平展上同调.md) $H^1(X_{\mathrm{\'et}},\mathbb G_m)$.

### 对称幺半范畴

[对称幺半范畴](对称幺半范畴.md)的 Picard 群是其中可逆对象的同构类构成的 Abel 群.

## 性质

$\text{Pic}(M) \simeq H^1(M,\mathcal O_M^*)$.

$\text{Pic}^0(M) \simeq H^1(M,\mathcal O_M) / H^1(M,\mathbb{Z})$. (参见[指数序列](指数序列.md))

[Dedekind 整环](Dedekind整环.md)的谱的 Picard 群是这个环的[理想类群](理想类群.md).
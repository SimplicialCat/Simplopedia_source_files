---
title: Bousfield 局部化 (稳定同伦论)
tag: 百科
subject: [稳定同伦论](稳定同伦论.md)
author: [SimplicialCat](SimplicialCat.md)
---

本页面介绍[谱](谱.md)的 Bousfield 局部化. 另见[局部化 (范畴论)](局部化(范畴论).md), [局部化 (环)](局部化.md).

## 观念

固定一个[谱](谱.md) $E$. 关于 $E$ 的 Bousfield 局部化提取出 $E$ 表示的[同调理论](广义同调.md)可见的同伦信息.
Bousfield 局部化也可理解为谱的范畴 [$\mathsf{Sp}$](Sp.md) 关于 $E$-等价的 [(范畴论) 局部化](局部化(范畴论).md).

## 定义

为了定义 $E$-局部谱, 首先需要 $E$-无圈谱, $E$-等价的概念.

- 称谱 $X$ 为 $E$-**无圈谱**是指 $E\wedge X = 0$.
- 称谱的态射 $f\colon X\to Y$ 为 $E$-**等价**是指如下等价条件之一成立:
	- $E\wedge f\colon E\wedge X \to E\wedge Y$ 为等价 (换言之, $f$ 诱导 $E$-[同调](广义同调.md)的同构);
	- $f$ 的[纤维](纤维列.md)为 $E$-无圈谱.
- 称谱 $X$ 为 $E$-**局部谱**是指如下等价条件之一成立:
	- 对任意 $E$-等价 $f\colon A\to B$, $[f,X] \colon [B,X] \to [A,X]$ 为同构;
	- 对任意 $E$-无圈谱 $A$, $[A,X] \simeq 0$.

**命题**. 对任意谱 $X$ 存在自然的 (余) [纤维列](纤维列.md)
$$
{_E}X \to X \overset{\eta}{\to} X_E \to \Sigma ({_E}X),
$$
使得
- ${_E}X$ 为 $E$-无圈谱,
- $X_E$ 为 $E$-局部谱,
- $\eta\colon X\to X_E$ 为 $E$-等价.




$E$-局部化可视为 "将 $E$-等价变为等价" 的操作.

## 性质

**命题**. 设 $E$ 为[环谱](环谱.md), $X$ 为 $E$-模, 则 $X$ 为 $E$-局部谱.

**证明**. 设 $A$ 为任意 $E$-无圈谱. 那么任意态射 $A\to X$ 可分解为
$$
A \overset{1}{\to}E\wedge A\overset{f}{\to}E\wedge X \to X,
$$
而 $A\wedge E=0$, 这说明 $[A,X] \simeq 0$.

另一种说法是, 由于 $X$ 是 $E$-模, $X$ 是 $X\wedge E$ 的收缩, 而对任何谱 $X$, $X\wedge E$ 都是 $E$-局部谱. (好像 $E$-模是 $E$-局部谱这个结论更基本一些.)

**命题**. $E$-局部谱的子范畴关于平移, 收缩, 积 (直和), 余纤维封闭.

注意, $E$-局部谱的[张量积](压缩积.md)不一定是 $E$-局部谱.
---
title: Heyting 代数
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Heyting 代数是[直觉主义](直觉主义逻辑.md)命题演算的模型.

## 定义

Heyting 代数是一个[偏序集](偏序集.md), 存在所有有限的[积](积(范畴论).md)和[余积](和(范畴论).md), 且构成[积闭范畴](积闭范畴.md). 换言之, Heyting 代数中有 $0$, $1$, 指数对象 $y^x$ (通常记作 $x\Rightarrow y$), 而指数对象由如下的伴随关系刻画:
$$
z\leq (x\Rightarrow y) \quad \text{iff} \quad z\wedge x \leq y.
$$

## 性质

由基本伴随关系, 可得 (实际上是伴随的单位和余单位态射)
$$
x\leq \big( y\Rightarrow (x\wedge y) \big),\quad y\wedge (y\Rightarrow x) \leq x.
$$
而由 $1^x\simeq 1$, $x^1\simeq x$ 可得
$$
(x\Rightarrow 1) =1,\quad (1\Rightarrow x) =x.
$$
由于函子 $x\Rightarrow -$ 有右伴随, 它保持极限, 即
$$
(x\Rightarrow (y\wedge z)) = \big( (x\Rightarrow y) \wedge (x \Rightarrow z)\big).
$$
等式 $x^{y\times z}\simeq (x^y)^z$ 成为
$$
((y\wedge z)\Rightarrow x) = (z\Rightarrow (y\Rightarrow x)).
$$

## 例

对拓扑空间 $X$, 其上开集构成的偏序集为 Heyting 代数. 对于开集 $U, V$,
$$
(U \Rightarrow V) = \bigcup_{W\cap U\subset V} W.
$$
每个 [Boole 代数](Boole代数.md)都是 Heyting 代数, 反之则不然.

## 参考资料

[盲人摸象](盲人摸象.md) 1.3 节
---
title: Kleisli 范畴
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Kleisli 范畴是[单子](单子.md)的[自由](自由-遗忘伴随.md)[代数](单子上的代数.md)的范畴.

Kleisli 范畴是[单子](单子.md)上万有的[右模](单子上的代数.md), 因而 Kleisli 范畴与单子上的[代数](单子上的代数.md)范畴 (Eilenberg–Moore 范畴, 即万有的 $T$-左模) 具有[对偶](对偶(范畴论).md)的地位..

## 定义

对范畴 $\mathcal C$ 上的[单子](单子.md) $T$, 有一个范畴, 称为 [**Kleisli 范畴**](Kleisli范畴.md) $\mathsf{Kl}$,

- 其对象为 $\mathcal C$ 的对象,
- $\mathsf{Kl}$ 中的态射 $X\to Y$ 为 $\mathcal C$ 中的态射 $X\to TY$ (注意到由 $T$-[代数](单子上的代数.md)的[自由–遗忘伴随](自由-遗忘伴随.md), $\mathcal C$ 中的态射 $X\to TY$ 等同于自由 $T$-代数的同态 $TX\to TY$),
- $\mathsf{Kl}$ 中的态射 $X\to Y$, $Y\to Z$ 的复合为 $\mathcal C$ 中的如下复合:
$$
X \to TY \to TTZ \overset{\mu}{\to} TZ.
$$

## 性质

### 右模

固定 $\mathcal C$ 上的一个单子 $T$. 考虑函子 $F\colon \mathcal C \to \mathsf{Kl}$, 对象 $X$ 映射到 $X$, 态射 $X\to Y$ 映射到 $\mathcal C$ 中的态射 $X\to Y\to TY$. 那么 $F$ 具有 $T$-[右模](单子上的代数.md)结构:
自然变换 $FT \to F$ 在对象 $X$ 上即为 $\mathcal C$ 中的态射 $\mathrm{id}\colon TX\to TX$.

进一步, 该右模结构是万有的 $T$-右模, 即任意 $T$-右模 $G\colon \mathcal C\to\mathcal D$ 唯一地穿过 $F\colon \mathcal C\to\mathsf{Kl}$. 换言之, 右模结构 $G\colon \mathcal C\to\mathcal D$ 等同于 $\mathsf{Kl}$ 出发的函子 $\mathsf{Kl}\to\mathcal D$.
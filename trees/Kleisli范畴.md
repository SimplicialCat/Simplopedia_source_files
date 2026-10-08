---
title: Kleisli 范畴
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Kleisli 范畴是[单子](单子.md)的[自由](自由-遗忘伴随.md)[代数](单子上的代数.md)的范畴. 两个对象 $X,Y$ 之间的 Kleisli 映射相当于原范畴中的态射
$$
X \to TY,
$$
可理解为单子 $T$ 刻画的[代数](代数.md)结构中由 $Y$ 个变元到 $X$ 个变元的变量代换.

Kleisli 范畴是[单子](单子.md)上万有的[右模](单子上的代数.md), 因而 Kleisli 范畴与单子上的[代数](单子上的代数.md)范畴 (Eilenberg–Moore 范畴, 即万有的 $T$-左模) 具有[对偶](对偶(范畴论).md)的地位..

另外, Kleisli 范畴本身也可作为[单子](单子.md)的替代概念, 即我们可以从头到尾不说单子, 只说一个本质满且有右伴随的函子 $\mathcal C \to \mathsf{Kl}$.

## 定义

### 朴素定义

对 $(1,1)$-范畴 $\mathcal C$ 上的[单子](单子.md) $T$, 定义一个  $(1,1)$-范畴, 称为 [**Kleisli 范畴**](Kleisli范畴.md) $\mathsf{Kl}$,

- 其对象为 $\mathcal C$ 的对象,
- $\mathsf{Kl}$ 中的态射 $X\to Y$ 为 $\mathcal C$ 中的态射 $X\to TY$ (注意到由 $T$-[代数](单子上的代数.md)的[自由–遗忘伴随](自由-遗忘伴随.md), $\mathcal C$ 中的态射 $X\to TY$ 等同于自由 $T$-代数的同态 $TX\to TY$),
- $\mathsf{Kl}$ 中的态射 $X\to Y$, $Y\to Z$ 的复合为 $\mathcal C$ 中的如下复合:
$$
X \to TY \to TTZ \overset{\mu}{\to} TZ.
$$

### 泛性质

Kleisli 范畴
$$
F\colon \mathcal C \to \mathsf{Kl}
$$
是[单子](单子.md)上万有的[右模](单子上的代数.md), 即任何 $T$-右模结构 $G\colon \mathcal C\to\mathcal D$ 唯一地穿过 $\mathsf{Kl}$ 出发的函子 $\mathsf{Kl}\to\mathcal D$.

回忆, 函子 $G\colon \mathcal C\to\mathcal D$ 的 $T$-右模结构等同于函子范畴 $\mathsf{Fun}(\mathcal C,\mathcal D)$ 上的单子 $T^*$ 的[代数](代数.md)结构.
因此 Kleisli 范畴的泛性质也可写为
$$
\mathsf{Fun}(\mathsf{Kl},\mathcal D) \simeq \mathsf{Alg}_{T^*}(\mathsf{Fun}(\mathcal C,\mathcal D)).
$$

### 不依赖单子而定义

抛开单子来看, Kleisli 范畴 $\mathsf{Kl}$ 就是如下结构:

- [本质满函子](本质满函子.md) $j\colon \mathcal C \to \mathsf{Kl}$,
- 函子 $u\colon \mathsf{Kl} \to \mathcal C$,
- 以及一对伴随 $j \dashv u$.

相应的单子则是 $T = uj \colon \mathcal C \to \mathcal C$.

### 函子性

Kleisli 范畴具有函子性: 单子同态 $f\colon S \to T$ 给出函子 $f_!\colon \mathsf{Kl}(S) \to \mathsf{Kl}(T)$. 直观上, $f_!$ 将自由代数 $SX$ 对应到自由代数 $TX$.
$$
\begin{array}{ccc}
 &  & \mathsf{Kl}(S) \\
 & \nearrow & \downarrow \\
\mathcal C & \rightarrow & \mathsf{Kl}(T)
\end{array}
$$

我们更仔细地解释一下这个函子的来由. 对于 $S$ 的自由代数 $SX$ 与任意 $T$-代数 $Y$, 有同构
$$
\begin{aligned}
\operatorname{Hom}_{\mathcal C^S} (SX,f^*Y) &= \operatorname{Hom}_{\mathcal C}(X,Y)\\
&=\operatorname{Hom}_{\mathcal C^T}(TX,Y).
\end{aligned}
$$
这就是说 $f^*\colon \mathcal C^T\to\mathcal C^S$ 在全子范畴 $\mathsf{Kl}(T)\subset\mathcal C^T$, $\mathsf{Kl}(S)\subset\mathcal C^S$ 上有一个 "部分左伴随" $f_!$, 而范畴论的一般道理告诉我们, 当有一族范畴 $\mathcal C^{\mathrm{op}}\to\mathsf{Cat}$ 且其间每个函子有这样的部分左伴随, 就有相应的一族范畴 $\mathcal C \to \mathsf{Cat}$.
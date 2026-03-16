---
title: "Joyal 模型结构"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---



Joyal 模型结构是[单纯集](单纯集.md) (的范畴) 上的一个[模型范畴](模型结构.md), 满足

- 弱等价是[无穷范畴](无穷范畴.md)的等价,
- 余纤维化为单射,
- 纤维性对象为[拟范畴](拟范畴.md).

> Lurie 的方法: 先定义[单纯范畴](单纯范畴.md)上的模型结构, 再通过 $\mathfrak C\colon\mathsf {sSet}\to\mathsf {Cat}_{\Delta}$ 转移.

> 我们使用 Joyal 的方法.

## 单纯集上的模型结构

**定义**. 对于单纯集的映射 $f\colon X\to Y$, 称之为范畴性等价 (categorical equivalence) 是指对任意[拟范畴](拟范畴.md) $Z$,
$$
\pi_0(\mathsf {Fun}(Y,Z)^\simeq)\to \pi_0(\mathsf {Fun}(X,Z)^\simeq)
$$
为双射.

> https://kerodon.net/tag/01E7

> 这里所有单纯集都是余纤维性 (cofibrant) 的.

**命题**. 内角形的嵌入 $\Lambda_i^n\to \Delta^n$ 是范畴性等价.

**命题**. 范畴性等价都是单纯集的弱同伦等价.

**命题**. 恒等函子 $\mathsf {sSet}^{\text{Joyal}} \to \mathsf {sSet}^{\text{Kan-Quillen}}$ 给出 [Quillen 伴随](Quillen伴随.md).

## 与单纯范畴上的模型结构的比较

**定义**. [单纯范畴](单纯范畴.md)之间的函子 $F\colon \mathcal C\to\mathcal D$ 称为弱等价是指

- $\pi_0 F$ 为等价,
- $\operatorname{Hom}_{\mathcal C}(x,y)\to \operatorname{Hom}_{\mathcal D}(Fx,Fy)$ 为弱同伦等价.

**定理** (Lurie). 单纯范畴的范畴上存在一个模型结构, 其中弱等价如上定义, 纤维性对象恰为 Hom 为 [Kan 复形](Kan复形.md)的单纯范畴.

存在如下伴随比较两个模型结构.
$$
\mathfrak C \colon \mathsf {sSet}^{\text{Joyal}} \leftrightarrows \mathsf {Cat}_{\Delta} \colon \mathfrak N
$$
(其中 $\mathfrak C$ 由如下要求确定: 函子 $\mathfrak C[\Delta^n]\to \mathcal C$ 是 $\infty$-函子 $[n]\to \mathcal C$ 的模型, 一般地 $\mathfrak C[S]\to\mathcal C$ 是 "同伦融贯交换图" 的模型, 见[同伦融贯脉](同伦融贯脉.md).)
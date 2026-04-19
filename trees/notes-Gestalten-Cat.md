---
title: Gestalten - 在范畴上做代数
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

"在范畴上做代数" 指的是一种[范畴化](范畴化.md), 将[交换代数](交换代数.md)等概念应用于[可表现范畴](可表现范畴.md)的范畴 $\mathsf{Pr}^{\mathrm{L}}$ (简记为 $\mathsf{Pr}$).

本文中所有的 $n$-范畴指的是 $(\infty ,n)$-范畴.

---

下面的定理说明, 在一个 $1$-范畴 $\mathcal C$ 中做的 "普通的代数", 可以通过取模范畴这一操作, 嵌入到 "在范畴上做的代数".

**定理**. 对于[可表现](可表现范畴.md)的[对称幺半范畴](对称幺半范畴.md) $\mathcal C\in\mathsf{CAlg}(\mathsf{Pr})$, 有全忠实函子
$$
\mathsf{Mod}_{\mathcal C}(-)\colon \mathsf{CAlg}(\mathcal C) \to \mathsf{CAlg}(\mathsf{Mod}_{\mathsf{Pr}}(\mathcal C)),
$$
且其有右[伴随](伴随.md) $\mathcal D\mapsto \operatorname{End}_{\mathcal D}(1)$.

---

回忆, 对于 $\mathcal D\in\mathsf{Mod}_{\mathsf{Pr}}(\mathcal C)$, 有函子 $\operatorname{Hom}_{\mathcal D}(-,-)\colon \mathcal D^{\mathrm{op}}\times\mathcal D \to\mathcal C$, 满足
$$
\operatorname{Hom}_{\mathcal C}(X,\operatorname{Hom}_{\mathcal D}(Y,Z))\simeq\operatorname{Hom}_{\mathcal D}(X\otimes Y,Z);
$$
也即 $\operatorname{Hom}(Y,-)\colon \mathcal D\to\mathcal C$ 是 $(-)\otimes Y\colon \mathcal C\to\mathcal D$ 的右伴随 (注意 $(-)\otimes Y\colon \mathcal C\to\mathcal D$ 保持余极限). 这就是说, $\mathsf{Pr}$ 中的 $\mathcal C$-模可视为 $\mathcal C$-[充实范畴](充实范畴.md).

对于 $\mathcal D\in\mathsf{CAlg}(\mathsf{Mod}_{\mathsf{Pr}}(\mathcal C))$, 记 $1\in\mathcal D$ 为其单位, $F\colon \mathcal C\to\mathcal D$ 为函子 $(-)\otimes 1$; 则 
$$
\operatorname{End}_{\mathcal D}(1) := \operatorname{Hom}_{\mathcal D}(1,1) = F^R (1),
$$
其中 $F^R$ 为 $F$ 的右伴随; 因而 $\operatorname{End}_{\mathcal D}(1)$ 继承 $1$ 的[交换代数](交换代数.md)结构.
这给出了上述定理中的函子 $\mathcal D\mapsto \operatorname{End}_{\mathcal D}(1)$.

---

由于 $\mathsf{Mod}_{\mathcal C}(-)$ 有右伴随, 其保持所有[余极限](余极限.md); 特别地, 保持交换代数的相对张量积:
$$
\mathsf{Mod}(A)\otimes_{\mathsf{Mod}(C)}\mathsf{Mod}(B) \simeq\mathsf{Mod}(A\otimes_C B).
$$
换言之, 在范畴层面可以忠实地复刻代数的张量积这一关键操作.

---

在上述定理中取 $\mathcal C = \mathsf{Pr}$ [^1], 我们得到一个函子
$$
\mathsf{Mod}_{\mathsf{Pr}}(-) \colon \mathsf{CAlg}(\mathsf{Pr}) \to \mathsf{CAlg}(\mathsf{Mod}_{\mathsf{Pr}}(\mathsf{Pr})).
$$
我们称 $\mathsf{Mod}_{\mathsf{Pr}}(\mathsf{Pr})$ 为 $2\mathsf{Pr}$, 即 "可表现 $2$-范畴" 的范畴. [^2] 可表现 $2$-范畴是 "充实于 $\mathsf{Pr}$ 的可表现范畴".

[^1]: 是的, 这是一个 "包含自己" 的范畴, 需要我们在数学基础上做一些手脚, 但我们暂不关心.

[^2]: 但目前它本身是一个 $(\infty ,1)$-范畴, 我们不关心其不可逆的高阶态射. 一般而言, 若某种对象构成一个 $(\infty,n)$-范畴, 忽略其不可逆高阶态射, 将其视为 $(\infty,1)$-范畴是正当的, 不会改变所研究对象的本质, 只是可能少研究了一些东西.

再取 $\mathcal C = 2\mathsf{Pr}$, 得到函子
$$
\mathsf{Mod}_{2\mathsf{Pr}}(-) \colon \mathsf{CAlg}(2\mathsf{Pr}) \to \mathsf{CAlg}(\mathsf{Mod}_{\mathsf{Pr}}(2\mathsf{Pr})).
$$
定义 $\mathsf{Mod}_{\mathsf{Pr}}(2\mathsf{Pr})$ 为 $3\mathsf{Pr}$, 这个过程可以重复下去, 定义 "可表现 $n$-范畴的范畴" $n\mathsf{Pr} \in \mathsf{Pr}$. 可表现 $n$-范畴是 "充实于 $(n-1)\mathsf{Pr}$ 的可表现范畴".

---

我们看数学实践中常用的一个代数语境, 即 $\mathbb E_\infty$-环谱, 是如何置入上述范畴代数当中的.
记 $\mathcal C$ 为 $\mathbb E_\infty$-环谱 (又称 $\mathbb E_\infty$-$\mathbb S$-代数) 的范畴的对偶. 记 $\mathcal C$ 的对象为 $\operatorname{Spec}A$, 想象为 "[仿射概形](仿射概形.md)".

对于 $\mathbb E_\infty$-环谱 $A$, 归纳定义

- $0\mathsf{Pr}_A := \mathsf{Mod}(A)$,
- $(n+1)\mathsf{Pr}_A := \mathsf{Mod}_{\mathsf{Pr}} (n\mathsf{Pr}_A)$;


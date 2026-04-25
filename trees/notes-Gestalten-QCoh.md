---
title: Gestalten - 高阶拟凝聚层
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

以 $\mathcal C$ 表示某种 "环" 的范畴的对偶; 如 $\mathbb E_\infty$-环谱 (又称 $\mathbb E_\infty$-$\mathbb S$-代数) 的范畴的对偶. 我们将不会具体指明这种环的名称, 而是以 "环" 代之. 记 $\mathcal C$ 的对象为 $\operatorname{Spec}A$, 想象为环 $A$ 对应的 "[仿射概形](仿射概形.md)".

注意 $\mathcal C^{\mathrm{op}}$ 是环范畴本身.

记 $\widetilde {\mathcal C} := \mathsf{Sh}(\mathcal C,\mathrm{fpqc})$ 为层范畴. 称其对象为**叠** (stacks).

## 高阶线性范畴

对于环 $A$, 归纳定义

- $0\mathsf{Pr}_A := \mathsf{Mod}(A)$,
- $(n+1)\mathsf{Pr}_A := \mathsf{Mod}_{\mathsf{Pr}} (n\mathsf{Pr}_A)$;

从而对任意 $n\geq 0$, 有函子
$$
n\mathsf{Pr}_{-} \colon \mathcal C^{\mathrm{op}} \to\mathsf{Pr}.
$$
对于环同态 $f\colon A\to B$, 记 $n\mathsf{Pr}_f$ 为
$$
f^*_n\colon n\mathsf{Pr}_A \to n\mathsf{Pr}_B.
$$
由伴随函子定理得右伴随
$$
f_{n,*}\colon n\mathsf{Pr}_B \to n\mathsf{Pr}_A.
$$

**命题**. $f_{n,*}$ 与基变换相容.

从而我们有一个[六函子体系](六函子.md)
$$
n\mathsf{Pr}_{-}\colon \mathsf{Corr}(\mathcal C,E)\to\mathsf{Pr},
$$
其中 $E$ 是所有态射的族.


## 双手性

由于一些抽象的范畴论性质, 我们有如下额外的左伴随.

**命题**. 对于环同态 $f\colon A\to B$, $n\geq 1$, 函子
$$
f^*_n \colon n\mathsf{Pr}_A \to n\mathsf{Pr}_B
$$
有 $n\mathsf{Pr}_A$-线性的左伴随
$$
f_{n,\sharp} \colon n\mathsf{Pr}_B \to n\mathsf{Pr}_A,
$$
且与基变换相容, 且 $f_{n,\sharp} \simeq f_{n,*}$.



## 下降

**定理**. 对任意 $n\geq 0$, 函子
$$
n\mathsf{Pr}_{-} \colon \mathcal C^{\mathrm{op}} \to \mathsf{CAlg}((n+1)\mathsf{Pr})
$$
为 fpqc-超层.

## 叠

由下降性, 层 $n\mathsf{Pr}_{-}$ 可延拓为层
$$
n\mathsf{Pr}_{-} \colon \widetilde {\mathcal C}^{\mathrm{op}} \to \mathsf{CAlg}((n+1)\mathsf{Pr}).
$$

对于叠的映射 $f\colon Y\to X$, 有拉回函子
$$
f^*_n \colon n\mathsf{Pr}_X \to n\mathsf{Pr}_Y.
$$

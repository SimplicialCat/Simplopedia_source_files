---
title: de Rham 上同调
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念





## 定义

### 代数簇

代数簇 (或代数几何中更一般的几何对象) 的 **De Rham 上同调**是 [de Rham 复形](deRham复形.md)的[超上同调](超上同调.md).

### 抽象定义

设 $\mathcal X$ 为[局部 $\infty$-连通意象](局部连通意象.md), 如[合聚意象](合聚意象.md). 这意味着 $\mathcal X$ 具有三元伴随
$$
\Pi \dashv \Delta \dashv\Gamma\colon \mathcal X \to\mathsf{Ani}.
$$
其中 $\Delta\colon \mathsf{Ani}\to\mathcal X$ 为拉回 ([常值层](常值层.md)) 函子, $\Gamma\colon \mathcal X \to\mathsf{Ani}$ 为推前 ([整体截面](整体截面.md)) 函子, 有一个额外左伴随 $\Pi\colon \mathcal X \to \mathsf{Ani}$.

回忆, [平模态](平模态.md) $\flat$ 的定义为
$$
\flat A = \Delta\Gamma A,
$$
带有余单位 $\flat A \to A$. 函子 $\flat$ 的左伴随为[形模态](形模态.md) $ʃ$,
$$
ʃ A = \Delta \Pi A,
$$
满足
$$
\operatorname{Hom}(X,\flat A) = \operatorname{Hom}(ʃX,A),
$$
带有单位 $X \to ʃ X$.

对于[带基点对象](带基点对象.md) $A\in\mathcal X_{*/}$, 定义
$$
\flat_{\mathrm{dR}}A := \operatorname{fib}(\flat A \to A),
$$
对任意对象 $X$, 定义
$$
ʃ_{\mathrm{dR}}X := \operatorname{cofib}(X \to ʃ X).
$$
定义 **de Rham 上同调**为
$$
H_{\mathrm{dR}}(X,A) :=  \operatorname{Hom}(X,\flat_{\mathrm{dR}} A) = \operatorname{Hom}(ʃ_{\mathrm{dR}}X,A).
$$

## 性质

光滑紧合的代数簇的 de Rham 上同调等同于其解析化后的 de Rham 上同调.
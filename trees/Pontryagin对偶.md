---
title: Pontryagin 对偶
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

### 局部紧 Abel 群

记 $\mathsf{LCA}$ 为[局部紧 Abel 群](局部紧Abel群.md)的范畴, 其中态射为连续同态. 记 $\mathbb T = \mathbb{R}/\mathbb{Z}$ 为圆环, 定义局部紧 Abel 群 $G$ 的 [**Pontryagin 对偶**](Pontryagin对偶.md)为
$$
\widehat G = \operatorname{Hom}_{\mathsf{LCA}}(G,\mathbb T).
$$
(配备紧开拓扑.) 这给出函子 $\widehat{(-)}\colon \mathsf{LCA}^{\mathrm{op}} \to \mathsf{LCA}$.

自然同态 $G \to \widehat {\widehat {G}}$, $x\mapsto (\chi\mapsto \chi(x))$ 是同构. 换言之, 对偶函子复合两次是恒等: $\widehat{(-)}\circ \widehat{(-)}^{\mathrm{op}}\simeq\mathrm{id}_{\mathsf{LCA}}$.

## 例

- $\widehat {\mathbb{Z}}\simeq \mathbb T$, $\widehat {\mathbb T}\simeq\mathbb{Z}$.
- $\widehat {\mathbb{R}} \simeq \mathbb{R}$.

## 性质

### 紧–离散对偶

- 若 $G$ 为紧群, 则 $\widehat {G}$ 为离散群.
- 若 $G$ 为离散群, 则 $\widehat {G}$ 为紧群.

## 相关概念

- [调和分析](调和分析.md)
- [Fourier 变换](Fourier变换.md)
---
title: "Dolbeault 上同调"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

---
alias: Dolbeault 算子, Dolbeault 定理
---

## 记号

设 $E$ 为[全纯向量丛](全纯向量丛.md). $\mathcal A^{p,q}(E)$ 表示取值于 $E$ 的**光滑**复 $(p,q)$-微分形式的丛 (层), 也即 $E\otimes \wedge^{p,q}M$ (的截面芽的层), $\mathcal A^n(E)=\sum_{p+q=n}\mathcal A^{p,q}(E)$ 表示取值于 $E$ 的**光滑** $n$-形式丛(层).

$\Omega^{p,q}(E):= \Gamma(E\otimes \wedge^{p,q}M)$ 是 $\mathcal A^{p,q}(E)$ 的[整体截面](整体截面.md)的空间, 即 $M$ 上 $E$-取值的全局**光滑** $(p,q)$-形式的**空间**. **Dolbeault 上同调**定义为
$$
H^{p,\bullet}_{\bar\partial} (M,E):= H^\bullet(\Omega^{p,\bullet}(E)).
$$

注意, 与 $\Omega^{p,q}(E)$ 不同的是, $\Omega^p(E)$ 表示取值于 $E$ 的**全纯** $p$-形式丛(层).

## 与 de Rham 上同调的类比

Dolbeault 上同调是 de Rham 上同调在复流形上的类比.

对于光滑流形有 de Rham 层复形 ($\mathbb R$ 的消解)
$$
0\to\mathbb R \to \mathcal{A}^0\to \mathcal{A}^1\to \cdots.
$$
由 Poincaré 引理, 此序列正合. [de Rham 定理](deRham定理.md)是说
$$
H_{\mathrm{dR}}^\bullet (M)\simeq H^\bullet(M,\mathbb R).
$$
类似地, 对于复流形有层复形 ($\Omega^p$ 的消解)
$$
0\to \Omega^p \to \mathcal{A}^{p,0}\to \mathcal{A}^{p,1} \to\cdots,
$$
注意此处 $\Omega^p$ 是**全纯** $p$-形式层, $\mathcal A^{p,q}$ 是**光滑** $(p,q)$-形式层. 由 $\bar{\partial}$-[Poincaré 引理](Poincaré引理.md), 此序列正合. Dolbeault 定理是说 Dolbeault 上同调同构于[层上同调](层上同调.md)
$$
H^{p,\bullet}_{\bar{\partial}}(M) \simeq H^\bullet (M, \Omega^p).
$$
## 向量丛的 Dolbeault 上同调

### Dolbeault 算子

**定义**. [复向量丛](复向量丛.md) $E\to M$ 上的 **Dolbeault 算子**是一个[微分算子](微分算子.md) $\bar\partial\colon  \Gamma(E) \to \Omega^{0,1}(M)\otimes \Gamma(E)$, 满足

- ${\bar\partial}^2 =0$ (Cauchy--Riemann 方程, 也称**可积性条件**);
- (Leibniz 法则) $\bar\partial (fs) = (\bar\partial f)\otimes s + f(\bar\partial s)$.

**定理**. 给定复向量丛 $E$ 上的 Dolbeault 算子 $\bar\partial$, 存在唯一的[全纯向量丛](全纯向量丛.md)结构对应于 $\bar\partial$.

这说明 Dolbeault 算子只能在全纯向量丛上定义.

### 消解与 Dolbeault 上同调

[全纯向量丛](全纯向量丛.md) $E$ (的结构层) 有无圈消解
$$
0\to \Omega^p(E) \to \mathcal A^{p,0}(E) \to \mathcal A^{p,1}(E)\to\cdots,
$$
这给出 **Dolbeault 定理**
$$
H^{p,\bullet}(M,E) \simeq H^\bullet(M, \Omega^p \otimes E).
$$

全纯向量丛 $E$ 上的 Dolbeault 算子 $\bar{\partial}_E\colon \Gamma(E)\to \mathcal A^{0,1}(E)$, 又称 $(0,1)$-[联络](联络.md), 类似于普通的联络, 可延拓为
$$
\bar{\partial}_E\colon \mathcal A^{p,\bullet}(E) \to \mathcal A^{p,\bullet+1}(E),
$$
满足 $\bar{\partial}_E^2=0$, 且对于 $\alpha\in\Omega^{p,q}(M)$ 与 $s\in\Gamma(E)$,
$$
\bar{\partial}_E (\alpha\otimes s) = (\bar{\partial}_E\alpha)\otimes s + (-1)^{p+q} \alpha\wedge \bar{\partial}_E s.
$$

## 与自旋结构的联系

见 [Dolbeault--Dirac 算子](Dolbeault--Dirac算子.md).
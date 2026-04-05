---
title: "Grothendieck 群"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


## 定义

### 范畴的 Grothendieck 群

设 $\mathsf C$ 是[加性范畴](加性范畴.md). 定义 Grothendieck 群 $K(\mathsf C)$ 为 $\mathsf C$ 中的同构类在直和下构成的交换半群 $\Phi(\mathsf C)$ 的群化.

若 $F \colon \mathsf C \to \mathsf C'$ 为加性函子, 则 $F$ 诱导了群同态 $K(\mathsf C) \to K(\mathsf C')$. 这个对应也是保持复合的.

### 相对版本: 函子的 Grothendieck 群

Grothendieck 群有[相对](相对.md)版本.

> 参考 Karoubi II.2 节.

**定义** (Banach 范畴). Banach 范畴是一种加性范畴, 其中 $\operatorname{Hom}(E,F)$ 构成 Banach 空间, 态射的复合 $\operatorname{Hom}(E,F)\times \operatorname{Hom}(F,G) \to \operatorname{Hom}(E,G)$ 是双线性函数.

**例**. 紧空间上的向量丛范畴, Banach 代数上的投射模范畴.

**定义** (函子的 Grothendieck 群). 设 $\varphi \colon \mathsf C \to \mathsf D$ 为 Banach 函子. 令 $\Gamma(\varphi)$ 为三元组 $(E,F,\alpha)$ 的集合, $E,F$ 为 $\mathsf C$ 的对象, $\alpha$ 为同构 $\varphi(E)\to\varphi(F)$. 定义两个三元组 $(E,F,\alpha), (E',F',\alpha ')$ 同构是指存在同构 $f\colon E \to E'$, $g\colon F\to F'$, 使得下图交换:
$$
\begin{array}{ccc}
	\varphi(E) & \overset{\alpha}{\to} & \varphi(F)\\
	\hspace{-2em}\varphi(f)\downarrow &  & \downarrow \varphi(g)\hspace{-2em}\\
	\varphi(E) & \overset{\alpha'}{\to} & \varphi(F).
\end{array}
$$
称三元组 $(E,F,\alpha)$ 为基本 (elementary) 三元组, 是指 $E=F$, 且 $\alpha$ 在 $\varphi(E)$ 的自同构中同伦于 $\operatorname{id}_{\varphi(E)}$. 定义两个三元组的和是各项的直和.

定义 $K(\varphi)$ 为 $\Gamma(\varphi)$ 模去基本三元组的商, 也即 $\sigma\sim\sigma'$ 当且仅当存在基本三元组 $\tau,\tau'$ 使得 $\sigma+\tau$ 同构于 $\sigma'+\tau'$.

> 想象函子 $\varphi\colon \mathsf C \to \mathsf D$ 是由 $\mathsf D$ 的对象 "参数化" 的 "一族范畴", 函子的 Grothendieck 群可粗略地理解为每个 "纤维" 上的 Grothendieck 群.

## 相关概念

[向量丛-投射模类比](向量丛-投射模类比.md)
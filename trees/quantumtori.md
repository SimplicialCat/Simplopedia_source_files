---
title: 量子圆环
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

本文是陈–赵的一篇短文 [The Quantum Torus as an $\mathbb E_M$-Category](ChenZhaoQuantumTori.md) 的阅读笔记.

记号一览:

- $M$ 为定向 $2$ 维流形, 来自光滑 $\mathbb{C}$-代数曲线的解析化, 同时我们无歧义地用 $M$ 代表流形 $M$ 对应的[生象](生象.md), 但注意有些场合不得不使用 $M$ 的流形结构, 不能完全视为生象;
- $G$ 为 $\mathsf{Ani}_{/M}$ 中的群, 本文取 $G$ 为圆环 $T$;
- $\Lambda$ 为函子 $M\to \mathsf{Mod}(\mathbb{Z})$, 其取值为有限维自由 $\mathbb{Z}$-模, $T = \mathbf{B}\Lambda$;
- $\mathbb{C}^\times$ 为非零复数乘法的**离散** Abel 群 (注意这里没有拓扑!!);
- $q \colon \mathbf{B}^2\Lambda \to \mathbf{B}^4\mathbb{C}^\times$ 为 $(\mathsf{Ani}_{/M})_*$ 中的态射.

预备知识:

- [$\mathbb E_M$-算畴](E_M-算畴.md)
- [非交换 Poincaré 对偶](nonAbPD.md)

### Betti 级的定义

定义 **Betti 级** (levels) 的空间为
$$
\operatorname{Level}(G) := \operatorname{Hom}_{(\mathsf{Ani}_{/M})_*}(\mathbf{B} G,\mathbf{B}^4\mathbb{C}^\times).
$$
它的同伦群是 $G$ 的[群上同调](群上同调.md):
$$
\pi_n\operatorname{Level}(G) = H^{4-n}_*(\mathbf{B}G,\mathbb{C}^{\times}).
$$

以下取 $G = T$ 为 $X$-圆环 (未必整体平凡), $\Lambda = \mathbf{B}T \in \mathsf{Mod}_{\mathsf{Ani}_{/M}}(\mathbb{Z})$ 为[余特征晶格](特征.md).
那么
$$
\operatorname{Level}(T) \simeq \operatorname{Hom}_{(\mathsf{Ani}_{/M})_*}(\mathbf{B}^2\Lambda,\mathbf{B}^4\mathbb{C}^\times).
$$

### $\mathbf{B}^2\Lambda$ 的上同调的计算

暂时离开[相对](相对.md)于 $M$ 的语境, 回到一个点上. 设 $\Gamma$ 为有限自由 $\mathbb{Z}$-模. 考虑 $\Gamma$ 上的 $\mathbb{C}^\times$-值二次型的空间
$$
\operatorname{Quad}(\Gamma,\mathbb{C}^\times) := \operatorname{Sym}^2(\Gamma^\vee)\otimes_{\mathbb{Z}}\mathbb{C}^{\times}.
$$

**断言**. 生象 $\operatorname{Hom}_{\mathsf{Ani}_{*/}}(\mathbf{B}^2\Gamma,\mathbf{B}^4\mathbb{C}^\times)$ 只有两个非平凡的同伦群:

- $\pi_0$ 为 $\operatorname{Quad}(\Gamma,\mathbb{C}^\times)$,
- $\pi_2$ 为 $\operatorname{Hom}_{\mathsf{Mod}(\mathbb{Z})}(\mathbf{B}^2\Gamma,\mathbf{B}^4\mathbb{C}^\times)$.

*证明*.

### $\mathbb E_M$-范畴 $\mathsf{Rep}_q(T^\vee)$

记 $\mathcal H_q\in (\mathsf{Ani}_{/M})_*$ 为 $q\colon \mathbf{B}^2\Lambda \to \mathbf{B}^4\mathbb{C}^\times$ 的纤维, 那么它带有 $\mathbf{B}^3\mathbb{C}^\times$ 的[作用](群作用.md).
---
title: "Hermite 向量空间"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---


## 定义

设 $V$ 是 $\mathbb{C}$-向量空间, 带有双线性型 $h\in \overline{V}^*\otimes_{\mathbb{C}} V^*$ (也即 $h\colon \overline{V}\otimes_{\mathbb{C}} V \to \mathbb{C}$), 满足 $h(\bar v,w)=\overline{h(\bar w,v)}\,(v,w\in V)$, 则称 $V$ 为 **Hermite 向量空间**.

关于 $\overline{V},\bar v$ 等符号的含义, 参见[共轭](共轭.md).

## 与 Euclid 向量空间的关系

设 $(V,g)$ 是 Euclid 向量空间, 带有相容的近复结构 $J$, 即
$$
g(J v,J w)=g(v,w)\,(v,w\in V),
$$
或等价地,
$$
g(Jv,w) + g(v,J w)=0.\tag{1}
$$
此时 $V$ 可视为 $\mathbb{C}$-向量空间 ($\mathbf i v := Jv$) 并定义 Hermite 度量
$$
h(\bar v,w) :=g(v,w)+\mathbf i g(\mathbf iv,w)\, (v,w\in V).\tag{2}
$$
验证 $h$ 是 Hermite 度量:
$$
h(\bar w,v)=g(w,v)+\mathbf i g (\mathbf i w,v)=\overline{h(\bar v,w)}.
$$
$$
h(\bar v,\mathbf i w)=g (v,\mathbf i w)+ \mathbf i g (\mathbf i v, \mathbf i w) = \mathbf i h(\bar v,w).
$$

反过来, 给定 Hermite 向量空间 $(V,h)$, 其作为 $\mathbb{R}$-向量空间自然是 Euclid 向量空间: 定义 Riemann 度量 $g$ 为 $h$ 的实部, $\displaystyle g = \frac{1}{2}(h+\bar h)$, 也即 $g(v,w)=\operatorname{Re} h(\bar v,w)\,(v,w\in V).$

$\bar h \in \overline{V}^*$

定义[基本形式](基本形式.md) $\omega$ 为 $h$ 的虚部, $\displaystyle\omega = \frac{\mathbf i}{2}(h-\bar h)$.

写成坐标形式, 设 $V$ 的一组基为 $\{e_i\}$, 对偶基为 $\{e^i\}$, 则
$$
h = h_{\bar i j} \overline{e^i} \otimes e^j,
$$
$$
\begin{aligned}
	g & = \frac{1}{2}(h+\bar h)\\
	& = \frac{1}{2}\Big(
	h_{\bar i j} \overline{e^i} \otimes e^j
	+ h_{\bar j i} \overline{e^i } \otimes e^j
	\Big)
\end{aligned}
$$

### Euclid 向量空间的 Hermite 扩张

对于 Euclid 向量空间 $E$, $E\otimes_{\mathbb{R}}\mathbb{C}$ 上有自然的 Hermite 结构, 称为 $E$ 的 **Hermite 扩张**. 对 $a,b,c,d\in E$ 定义
$$
h(\overline{a+\mathbf i b}, c+\mathbf id)= g(a,c)+g(b,d)+\mathbf i \big(g(a,d)-g(b,c)\big).
$$

## 基本形式

对带有相容近复结构的 Euclid 向量空间 $(V,g,J)$, 其基本形式 $\omega$ 定义为
$$
\omega (v,w) := g(J v,w).
$$

由 $(1)$ 式, $\omega$ 是反对称的.

由 $(2)$ 式, Hermite 结构, Riemann 度量与基本形式三者之间的关系为
$$
h(\bar v,w) = g(v,w) + \mathbf i \omega(v,w).
$$
> 注. 本文采用的 Hermite 结构的约定是 $\overline{V}\otimes V$ 上的线性函数, 也即所谓 "第二分量线性".
> 
> 若采用另一约定, $h$ 是 $V\otimes\overline{V}$ 上的线性函数, 所谓 "第一分量线性", 仍取 $\omega(v,w)=g(Jv,w)$, 则 $h(v,\bar w) = g(v,w) - \mathbf i \omega(v,w)$. (这是 Huybrechts 复几何书上的约定.)

关于 Hermite 向量丛, 参见[基本形式](基本形式.md).

## sl(2) 的表示

Lefschetz 算子 $L\colon \wedge^k V^* \to \wedge^{k+2}V^*$, $\alpha\mapsto \omega\wedge\alpha$ 以及其对偶算子 $\Lambda$. 令 $H = [L,\Lambda]$. 则 $L$, $\Lambda$ 与 $H$ 的作用构成了 $\mathfrak {sl}(2)$ 的表示. 参见 [sl2的表示](sl2的表示.md).

## 相关概念

[Hermite 向量丛](Hermite向量丛.md)
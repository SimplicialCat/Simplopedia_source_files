---
title: "Hodge 星算子"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

固定复 $n$ 维流形上的 Hermite 度量 (即同构 $\overline{T^*X}\simeq TX$), 可得 $(p,q)$-形式与 $(n-p,n-q)$-形式的对应:
$$
\begin{aligned}
	&\wedge^p T^*X \otimes \wedge^q \overline{T^*X}\\
	\simeq&\wedge^p T^*X \otimes \underbrace{\wedge^n TX \otimes \wedge^n T^*X}_{\text{平凡}} \otimes \wedge^q \overline{T^*X}\\
	\simeq & (\wedge^p T^*X \otimes \wedge^n TX)\otimes (\wedge^q \overline{T^*X} \otimes \wedge^n \overline{TX})\\
	\simeq & \wedge^{n-p}TX\otimes\wedge^{n-q}\overline{TX}.
\end{aligned}
$$
最后一步用到了配对
$$
\wedge^p T^*X \otimes \wedge^{n-p}T^*X \overset{\wedge}{\longrightarrow} \wedge^n T^*X,
$$
配对的非退化性可用 [Serre 对偶](Serre对偶.md)证明.

取向量丛 $E$ 上的 Hermite 结构 $\psi\colon E \overset{\simeq}{\to}\overline{E^*}$. 定义
$$
\#\colon E\otimes \mathcal A^{p,q} \to E^*\otimes \mathcal A^{n-p,n-q},\quad
\# = \psi\otimes \overline{\star}.
$$
且 $\widetilde \# = \psi^{-1}\otimes\overline{\star}$. 定义
$$
\vartheta = - \widetilde {\#} \bar\partial \#.
$$
$$
\begin{array}
	{ccc}
	E\otimes \mathcal A^{p,q} & \to & E^*\otimes \mathcal A ^{n-p,n-q}\\
	\hspace{-1em}-\vartheta\downarrow && \downarrow\bar{\partial}\hspace{-1em}\\
	E\otimes \mathcal A^{p,q-1} & \to & E^*\otimes \mathcal A ^{n-p,n-q+1}
\end{array}
$$
定义内积
$$
(\alpha,\beta) = \int_X \alpha\wedge\#\beta,
$$
则 $\vartheta$ 是 $\bar\partial$ 的伴随.
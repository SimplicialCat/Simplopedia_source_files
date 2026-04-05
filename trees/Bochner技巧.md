---
title: "Bochner 技巧"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


## 应用

**命题**. 设 $M$ 是紧 Riemann 流形, Ricci 曲率张量满足 $\operatorname{Ric}<0$ ($\operatorname{Ric}_k{}^\ell$ 是负定矩阵), 则 $M$ 上不存在非零 [Killing 向量场](Killing向量场.md).

**证明**. $X$ 为 Killing 向量场的条件是 (见 [Killing 向量场](Killing向量场.md))
$$
\nabla_i X_j + \nabla_j X_i = 0.
$$
注意到
$$
g^{ik}\nabla_k X_i = 0
$$
(因为 $g^{ik}$ 关于 $k,i$ 对称而 $\nabla_k X_i$ 关于 $k,i$ 反对称),
从而
$$
\begin{aligned}
	0&\leq\int_M |\nabla X|^2 \,dV_g\\ &= \int g^{ik}g^{j\ell} (\nabla_i X_j) (\nabla_k X_\ell) \,dV_g\\
	&= - \int_M g^{ik}g^{j\ell}(\nabla_k\nabla_i X_j) X_\ell \,dV_g\\
	&= \int_M g^{ik}g^{j\ell}(\nabla_k\nabla_j X_i) X_\ell \,dV_g\\
	&= \int_M \underbrace{g^{ik}g^{j\ell}(\nabla_j\nabla_k X_i}_{=0} + R_{kj}{}^p{}_i X_p) X_\ell \,dV_g\\
	&=\int_M \operatorname{Ric}_{j}{}^p X_p X^j\, dV_g \leq 0,
\end{aligned}
$$
(使用了 [Ricci 恒等式](Ricci恒等式.md)) 这说明 $X$ 恒等于 $0$.

**命题**. 设 $M$ 是紧 Riemann 流形, Ricci 曲率张量满足 $\operatorname{Ric}>0$, 则 $M$ 上的调和 $1$-形式必为 $0$.

**证明**. $\alpha$ 调和的条件是 $d\alpha = 0, d^*\alpha = 0$, 也即
$$
\nabla_j \alpha^j = 0,\quad \nabla_j \alpha_i - \nabla_i \alpha_j = 0.
$$
$$
\begin{aligned}
	0 &\leq \int_M |\nabla \alpha|^2\, dV_g\\
	&=\int_M g^{ij}g^{k\ell}\nabla_i \alpha_k \nabla_k \alpha_\ell\, dV_g\\
	&=-\int_M g^{ij} g^{k\ell} (\nabla_j\nabla_i \alpha_k) \alpha_\ell\, dV_g\\
	&=-\int_M g^{ij} g^{k\ell} (\nabla_j\nabla_k \alpha_i) \alpha_\ell\, dV_g\\
		&=-\int_M \underbrace{g^{ij} g^{k\ell} (\nabla_k\nabla_j \alpha_i}_{=0} - R_{jk}{}^p{}_i \alpha_p) \alpha_\ell\, dV_g\\
	&= - \int_M g^{k\ell} \operatorname{Ric}_k{}^p \alpha_p \alpha_\ell \leq 0,
\end{aligned}
$$
这说明 $\alpha$ 恒等于 $0$.

### Kähler 情形

记 $\omega$ 为 Kähler 形式 (见[基本形式](基本形式.md)),
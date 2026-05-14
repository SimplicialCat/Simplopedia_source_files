---
title: Shtuka (Chtouca)
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Shtuka = Hecke 调整 + [Frobenius 态射](Frobenius态射.md)

> General Shtukas can be thought of as a version of motives not defined in characteristic $p$ but whose coefficient field is of characteristic $p$. --- 恽之伟, Introduction to Shtukas and their Moduli

Shtuka 的[模空间](模空间.md)或模叠是[志村簇](志村簇.md)的[函数域类比](函数域类比.md), 是[函数域](函数域.md) [Langlands 纲领](Langlands对应.md)中的重要角色.

> L. Lafforgue used the moduli stack of rank $n$ Shtukas and their compactifications to prove the Ramanujan–Petersson conjecture and the Langlands conjecture for $\mathrm {GL}_n$ over a global function field for any $n\in\mathbb N$.

Vincent Lafforgue 利用 Shtuka 的模空间定义了[远足代数](远足代数.md)

## 定义

Shtuka 的[模空间](模叠.md)定义为如下的拉回, 其中 $\mathrm {Hecke}^r$ 是 [Hecke 叠](Hecke叠.md).
$$
\begin{array}
	{ccc}
	\mathrm {Sht}^r & \to & \mathrm {Bun}^r \\
	\downarrow && \downarrow \\
	\mathrm {Hecke}^r & \to & \mathrm {Bun}^r\times\mathrm {Bun}^r
\end{array}
$$
其中右边映射是 $\mathcal E\mapsto (\mathcal E,\mathcal E^\sigma)$, $\mathcal E^\sigma:=(\operatorname{id}_X\times\operatorname{Frob}_S)^*\mathcal E$ 是沿 $S$ 的 [Frobenius 态射](Frobenius态射.md)的拉回.

换言之, $\mathrm {Sht}^r(S)$ 的对象是如下资料,

- $X\times S$ 上的 $r$ 阶向量丛 $\mathcal E$,
- 两个映射 $0,\infty \colon S \to X$,
- 一个调整 $\mathcal E\hookrightarrow \mathcal E'\hookleftarrow\mathcal E''$, 满足 $\mathcal E'/\mathcal E$ 支在 $\Gamma_\infty$ (即映射 $\infty$ 的图像) 上, $\mathcal E'/\mathcal E''$ 支在 $\Gamma_0$ 上, 且这两个层在支集上为[可逆层](可逆层.md),
- 一个同构 $\mathcal E^\sigma\simeq\mathcal E''$.

$r=1$ 时, 概形 $S$ 上的 $1$ 阶 Shtuka 相当于 $X\times S$ 上的线丛 $L$ 以及一个同构
$$
L^\sigma\otimes L^{-1}\simeq \mathcal O_{X\times S}(\Gamma_\infty - \Gamma_0).
$$

## 性质

$\mathrm{Sht}$ 是 [Deligne–Mumford 叠](Deligne–Mumford叠.md).
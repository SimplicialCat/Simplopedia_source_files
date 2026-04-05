---
title: "Dwyer–Kan 单纯局部化"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


无穷范畴的一种[无穷范畴的模型](模型.md)是带有弱等价的 $1$-范畴. 设 $1$-范畴 $\mathcal C$ 带有弱等价构成的子范畴 $W$, Dwyer–Kan 单纯局部化给出一个[单纯范畴](单纯范畴.md) $L\mathcal C$.

## 定义

设 $U\colon \mathsf {Cat}\to\mathsf {Graph}$ 是遗忘函子, 其有左伴随 $F\colon \mathsf {Graph}\to\mathsf {Cat}$. 这对伴随对应 $\mathsf {Cat}$ 上的一个余单子 $(G=FU,\epsilon,\delta)$.

> 具体地, 对于范畴 $\mathcal C$, 范畴 $G\mathcal C$ 的对象是 $\mathcal C$ 的对象, $G\mathcal C$ 的态射是 $\mathcal C$ 的态射串, 有自然的函子 $\epsilon_{\mathcal C}\colon G\mathcal C \to \mathcal C$ 将态射串对应到其复合.

这个余单子可视为 $\Delta^{\text{op}} \to [\mathsf {Cat},\mathsf {Cat}]$, 从而给出了一个函子
$$
G_\bullet \colon \mathsf {Cat} \to [\Delta^{\text{op}},\mathsf {Cat}],
$$
将范畴 $\mathcal C$ 对应到单纯范畴 $G_\bullet\mathcal C$, 满足 $G_n\mathcal C := G^{n+1}\mathcal C$. 注意其对象的单纯集是常值单纯集 (离散单纯集) $\text{ob}\mathcal C$.

定义 $L\mathcal C$ 为 $G_\bullet\mathcal C [G_\bullet W^{-1}]$.
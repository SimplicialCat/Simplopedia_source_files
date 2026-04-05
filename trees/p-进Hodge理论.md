---
title: "p-进 Hodge 理论"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


记号. $K$ 为 $p$-进域, 有完美[剩余域](剩余域.md) $k$

比较 $p$-进上同调理论

- $p$-进[平展上同调](平展上同调.md) $H^n_{\text{\'et}}(X_{\bar K},\mathbb{Q}_p)$
- 代数 de Rham 上同调
- (对数) 晶体上同调

Faltings: 张量积上一个周期环 $B_{\text{HT}},B_{\text{dR}},B_{\text{crys}},B_{\text{st}}$ 后可以比较这些上同调理论

**例** (de Rham 比较).
$$
H^n_{\text{\'et}}(X_{\bar K},\mathbb{Q}_p)\otimes_{\mathbb{Q}_p}B_{\text{dR}} \simeq H^n_{\text{dR}}(X/K)\otimes_K B_{\text{dR}}
$$
(与[绝对 Galois 群](绝对Galois群.md) $G_K$ 的作用相容)

如今 $p$-进 Hodge 理论推广为研究一切 $p$-进 Galois 表示, 不仅是上述来自几何的表示 $H^n_{\text{\'et}}$.

**定义**. $\mathsf{Rep}_{\mathbb{Q}_p}(G_K)$ 为 $G_K$ 在有限维 $\mathbb{Q}_p$ 向量空间上的连续表示的范畴.

子范畴: Hodge-Tate 表示, de Rham 表示, semistable, 晶体. 它们关于张量积, 对偶, 子商封闭.

$H^n_{\text{\'et}}$ 都是 de Rham 表示.

在每种情形 $\text{?}\in\{\text{HT, dR, st, crys}\}$, 有函子 $D_{\text{?}}\colon \mathsf {Rep}^{\text{?}}(G_K) \to \text{\{semi linear algebra objects\}}$, $V\mapsto (V\otimes_{\mathbb{Q}_p} B_{\text{?}})^{G_K}$ 将 $G_K$ 表示转化为 semi linear algebra. 这个函子正合, 忠实, 保持张量积和对偶.

$B$ 为周期环, $B^{G_K}$ 为域. $D_B$ 将 $G_K$-表示转化为 $B^{G_K}$-向量空间.

$B$-admissible representations:
$$
D_B(V)\otimes_{B^{G_K}}B \overset{\simeq}{\longrightarrow} V\otimes_{\mathbb{Q}_p}B
$$

Hodge-Tate 表示
...



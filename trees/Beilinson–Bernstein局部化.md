---
title: "Beilinson–Bernstein 局部化"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---


当 $X$ 为[旗流形](旗流形.md) $\mathrm {Fl}_G$ 时, [D-模](D-模.md)的全局截面函子
$$
\Gamma(X,-) \colon \mathrm D\text{-mod}(X) \to \Gamma(X,\mathcal D_X)\text{-mod}
$$
为等价.

考虑 "中心商" $\Gamma(\mathrm {Fl}_G,\mathcal D)\simeq\mathcal U_0\mathfrak g := \mathcal U\mathfrak g\otimes_{Z\mathfrak g}k_\chi$, 其中 $k_\chi$ 是平凡 $\mathfrak g$-表示对应的中心特征. 记 $\mathcal U_0\mathfrak g$-模的范畴为 $\mathfrak g\text{-}\mathrm {mod}_0$, 即具有平凡中心特征的 $\mathfrak g$-模的范畴. 那么 Beilinson–Bernstein 局部化可表述为
$$
\Gamma(\mathrm {Fl}_G,-)\colon \mathrm D\text{-mod}(\mathrm {Fl}_G) \to \mathfrak g\text{-}\mathrm {mod}_0
$$
为等价.

> We have discussed above only the case of the trivial central character. Beilinson–Bernstein in fact proved a similar statement for any regular central character.

例如,

- 微分算子层 $\mathcal D$ 对应的是 $\mathcal U\mathfrak g$. 
- 结构层 $\mathcal O$ 对应的是 $k$.
- 对于点 $x\in\mathrm {Fl}_G$, $\delta_x$ 对应的是 [Verma 模](Verma模.md) $\mathcal U\mathfrak g\otimes_{\mathcal U\mathfrak b}\operatorname{det}(\mathfrak g/\mathfrak b)$, 其中 Borel 子群 $B$ 是 $x$ 的稳定子群.

这个等价不仅是范畴等价, 还是 $G$-表示的等价. 其中, 元素 $g\in G$ 作用在 $\mathfrak g$-模范畴上的方式是伴随表示 $(\operatorname{Ad}_g)_*$.

## 局部化伴随

在一般情形, 代数群 $K$ 作用于光滑代数簇 $X$ 上, 给出一个全局截面函子
$$
\Gamma(X,-) \colon \mathrm D\text{-}\mathrm {mod}(X) \to \mathfrak k\text{-}\mathrm {mod}.
$$
这个函子有左伴随, 称为局部化
$$
\mathrm {Loc}\colon \mathfrak k\text{-}\mathrm {mod} \to \mathrm D\text{-}\mathrm {mod}(X),\ M\mapsto \mathcal D_X\otimes_{\mathcal U\mathfrak k}M.
$$
我们不仅要让群 $K$ 作用在 $\mathrm D\text{-}\mathrm {mod}(X)$ 上, 还要让 $\mathrm D\text{-}\mathrm {mod}(K)$ (在卷积下构成的幺半群) 作用在 $\mathrm D\text{-}\mathrm {mod}(X)$ 上, 这和群表示等同于群代数的表示是一样的道理.

另一方面, $\mathfrak {k}\text{-}\mathrm {mod}$ 也可写成某种 D-模的范畴: 它是 $K$ 上的弱等变 D-模范畴 $\mathrm D\text{-}\mathrm {mod}(K)^{K,w}$, 而这个范畴自然具有卷积给出的 $\mathrm D\text{-}\mathrm {mod}(K)$-作用.

总之, 我们有 $\mathrm D\text{-}\mathrm {mod}(K)$-等变函子的伴随
$$
\mathrm {Loc} \colon \mathfrak k\text{-}\mathrm {mod}\rightleftarrows \mathrm D\text{-}\mathrm {mod}(X) \colon \Gamma(X,-).
$$
而在 Beilinson–Bernstein 局部化的情形中, 原来的等价升级为 $\mathrm D\text{-}\mathrm {mod}(G)$-表示的等价
$$\Gamma(\mathrm {Fl}_G,-)\colon \mathrm D\text{-mod}(\mathrm {Fl}_G) \to \mathfrak g\text{-}\mathrm {mod}_0.$$
## 相关概念

[Harish-Chandra 模](Harish-Chandra模.md)
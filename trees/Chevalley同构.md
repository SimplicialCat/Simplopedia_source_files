---
title: "Chevalley 同构"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

设 $G$ 是由 $\{\exp(\operatorname{ad}(x)): x\in \mathfrak g\}$ 生成的 $\operatorname{Aut}(\mathfrak g)$ 的子群, $H$ 是由 $\mathfrak h$ 类似定义的子群. $W$ 是 [Weyl 群](Weyl群.md) (也即正规化子 $N(H)/H$), 则[不变多项式](不变多项式.md)代数
$$
\mathbb{C}[\mathfrak g]^G \simeq \mathbb{C}[\mathfrak h]^W.
$$
其中 $\mathbb{C}[V]:= \operatorname{Sym}(V^*)$ 是向量空间 $V$ 上的多项式代数.

**证明**. 因为 $\mathfrak h\simeq \mathfrak b / [\mathfrak b,\mathfrak b]$, 有一个投影 $\pi\colon  \mathfrak b\to\mathfrak h$.
$$
\mathbb{C}[\mathfrak g] \overset{i^*}{\to} \mathbb{C}[\mathfrak b] \overset{\pi^*}{\leftarrow} \mathbb{C}[\mathfrak h]
$$
**引理 1**. $i^*(\mathbb{C}[\mathfrak g]^G)\subset \pi^*(\mathbb{C}[\mathfrak h]^W)$.

**证明.** 考虑 Killing 型 $\mathfrak g \simeq \mathfrak g^*$, 在此对应下有 $\mathfrak h\simeq \mathfrak h^*$, $\mathfrak b^-\simeq \mathfrak g / \mathfrak n \simeq \mathfrak b^*$,
$$
i^*(\mathbb{C}[\mathfrak g]^G)\subset\mathbb{C}[\mathfrak b]^H = \operatorname{Sym}(\mathfrak b^-)^H = \operatorname{Sym}(\mathfrak h)^H\subset \operatorname{Sym}(\mathfrak h)^W.
$$

由引理 1 我们有映射 $\phi\colon \mathbb{C}[\mathfrak g]^G\to \mathbb{C}[\mathfrak h]^W$. ..., 可证明 $\phi$ 为同构.

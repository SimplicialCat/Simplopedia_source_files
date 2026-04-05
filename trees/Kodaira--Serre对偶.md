---
title: "Kodaira--Serre 对偶"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


设 $M$ 是 $m$ 维复流形, $E\to M$ 为[全纯向量丛](全纯向量丛.md), 其对偶 $E^*$ 也是全纯向量丛.

设 $\alpha\in\wedge^{p,q}(E)$ 是光滑 $(p,q)$-形式, $\beta \in \wedge^{m-p,m-q}(E^*)$, 取其外积, 求值得 $\langle\alpha\wedge\beta\rangle \in \wedge^{m,m}(M)$, 再积分得
$$
(\alpha,\beta):= \int_M \langle \alpha\wedge\beta \rangle.
$$
可以证明这个配对给出了同构
$$
\mathcal A^{m-p,m-q}(E^*) \simeq \mathcal A^{p,q}(E)^*.
$$
进一步,
$$
\mathcal H^{p,q}_{\bar\partial}(M,E) \simeq \mathcal H^{m-p,m-q}(M, E^*) ^*.
$$

在 $p=0$ 的特殊情形, 有
$$
H^q(M,\mathcal O(E)) \simeq H^{m-q}(M,\mathcal O(E^*\otimes K_M)),
$$
其中 $O(E^*\otimes K_M)$ 正是 $\Omega^m(E^*)$.
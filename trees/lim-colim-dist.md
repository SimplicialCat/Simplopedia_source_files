---
title: 极限对余极限分配
tag: 百科
subject: [范畴论](范畴论.md)
author: [SimplicialCat](SimplicialCat.md)
---

考虑函子
$$
K\colon \mathcal J \to \mathsf{Cat},
$$
对应[推前纤维化](纤维范畴.md)
$$
\pi\colon \mathcal K \to \mathcal J.
$$
令
$$
\mathcal L = \operatorname{lim} K = \mathsf{Fun}^{\mathrm{cocart}}_{\mathcal J}(\mathcal J,\mathcal K)
$$
为 $K$ 的极限, 也等同于 $\pi$ 的水平截面的范畴.

设 $\mathcal C$ 为范畴, 若如下条件成立, 则称 $\mathcal C$ 中的 $\mathcal J$-极限对 $K$-余极限**分配**: 对任意 $F\colon \mathcal K \to \mathcal C$,
$$
\operatorname{colim}_{\ell\in \mathcal L} \operatorname{lim}_{j\in \mathcal J} F(\ell(j)) \overset{\simeq}{\longrightarrow} \operatorname{lim}_{j\in J}\operatorname{colim}_{k\in K(j)}F(j,k).
$$

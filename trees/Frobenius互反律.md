---
title: "Frobenius 互反律"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Frobenius 互反律研究 $H$ 到 $G$ 的[诱导表示](诱导表示.md)中 $G$ 的不可约表示的重数.

## 陈述

### 特征理论

设 $G$ 为有限群, $H\subset G$ 为子群. 记 $\operatorname{Res}_H^G$ 为特征 (或类函数) 的限制, $\operatorname{Ind}_H^G$ 为类函数的诱导. 那么两者互为伴随, 即
$$
\langle \operatorname{Ind}_H^G\psi,\varphi \rangle_G = \langle \psi, \operatorname{Res}_H^G\varphi \rangle_H.
$$

### 模论

设 $k$ 为域, $H\subset G$ 为子群, 那么
$$
\operatorname{Hom}_{k[G]}(k[G]\otimes_{k[H]}M,N) \simeq \operatorname{Hom}_{k[H]}(M,\operatorname{Hom}_{k[G]}(k[G],N)),
$$
这是[张量-同态伴随](张量-同态伴随.md)的特例: $k[G]\otimes_{k[H]}-$ 是[标量扩张](标量扩张.md), $\operatorname{Hom}_{k[G]}(k[G],-)$ 是[标量限制](标量限制.md).
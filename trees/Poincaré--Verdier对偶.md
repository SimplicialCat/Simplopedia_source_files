---
title: Poincaré–Verdier 对偶
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

todo: 重写

Verdier 对偶使用了 Grothendieck [六函子](六函子.md).

## 陈述

### 流形的 Poincaré 对偶

设 $M$ 是 $n$ 维紧[可定向](定向.md)流形, 则有典范同构
$$
H^k(M;\mathbb{Z})\to H_{n-k}(M;\mathbb{Z}).
$$
对于非紧流形, 其紧支集上同调也有类似结论.

### 由 Verdier 对偶得到 Poincaré 对偶

设 $X$ 为紧可定向 $n$ 维流形, $k$ 为域, 令 $f$ 为 $X$ 到一个点的映射. 全局 Verdier 对偶给出
$$
[Rf_! k_X,k] \simeq [k_X,p^! k].
$$

### Grothendieck 对偶

设 $f\colon X\to Y$ 是光滑概形的[紧合映射](紧合映射.md). 定义**相对维数** (relative dimension) $\dim f = \dim X - \dim Y$. 定义**相对对偶丛** (relative dualizing bundle)
$$
\omega_f := \omega_X \otimes f^* \omega_Y^*.
$$
**定理**. 对 $\mathcal F^\bullet \in D^b(X)$, $\mathcal E^\bullet\in D^b(Y)$,
$$
Rf_* R\mathcal Hom(\mathcal F^\bullet, Lf^* (\mathcal E^{\bullet})\otimes \omega_f [\dim f]) \simeq R \mathcal Hom(Rf_* \mathcal F^\bullet, \mathcal E^\bullet).
$$
引入函子 $f^!\colon D^b(Y)\to D^b(X)$,
$$
f^! \mathcal E^\bullet := Lf^* (\mathcal E^\bullet) \otimes \omega_f [\dim f].
$$
**推论**. 函子 $Lf^*, f^!\colon D^b(Y)\to D^b(X)$ 分别是 $Rf_*$ 的左右伴随:
$$
Lf^* \dashv Rf_* \dashv f^!.
$$

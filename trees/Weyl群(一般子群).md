---
title: Weyl 群 (一般子群)
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

对[群](群.md) $G$ 的子群 $H\subset G$, 定义其 **Weyl 群** $W_GH := N(H)/H$ 为[正规化子](正规化子.md)的商.

也可以不依赖于正规化子, 定义 Weyl 群为
$$
W=\operatorname{Aut}_{\mathsf{Ani}_{/\mathbf{B}G}}(\mathbf{B}H\to\mathbf{B}G).
$$
换言之, $\mathbf{B}W$ 是 $\mathbf{B}H\to\mathbf{B}G$ 在 $(\mathsf{Ani}_{/\mathbf{B}G})^{\simeq}$ 中构成的全子范畴.


关于紧 Lie 群 (代数群) 的 Weyl 群详见 [Weyl 群 (极大环面)](Weyl群.md).

## 性质

由定义
$$
W=\operatorname{Aut}_{\mathsf{Ani}_{/\mathbf{B}G}}(\mathbf{B}H\to\mathbf{B}G),
$$
可知
- Weyl 子群是能够典范地作用于一个 $G$-作用的 $H$-[不动点](不动点.md)的最大群.
- Weyl 群也是陪集空间 $G/H$ 在 $G$ 的[轨道范畴](轨道范畴.md)中的自同构群.
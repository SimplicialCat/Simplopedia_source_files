---
title: "伪 Abel 范畴"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---


## 定义

伪 Abel 范畴 (pseudo-abelian category) 是指满足如下性质的[加性范畴](加性范畴.md): 所有幂等自同态都导致一个分解; 也即对任意对象 $E\in\mathsf C$ 与态射 $p\colon E\to E$, 只要 $p^2 = p$, 就有 $\ker p$ 存在, 从而 $E \simeq \ker p \oplus \ker (1-p)$.

## 性质

任何[加性范畴](加性范畴.md)可万有地嵌入某个伪 Abel 范畴中.

**命题**. 对任意[加性范畴](加性范畴.md) $\mathsf C$, 存在伪 Abel 范畴 $\widetilde {\mathsf {C}}$, 称为关联于 $\mathsf C$ 的伪 Abel 范畴, 以及加性函子 $\varphi\colon \mathsf C \to \widetilde {\mathsf C}$, 满足泛性质.

## 例

**定理**. 设 $R$ 为含幺环, 记 $\mathsf C$ 为有限生成自由 $R$-模的范畴, 则 $\widetilde {\mathsf C}$ 等价于有限生成[投射对象](投射.md)左 $R$-模的范畴.
---
title: Isbell 对偶
tag: 百科
subject: [范畴论](范畴论.md)
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Isbell 对偶是预层和余预层之间的一对伴随, 在许多场合可理解为[代数–几何对偶](代数-几何对偶.md).

## 陈述

设 $\mathcal C$ 为 $\mathcal V$-[充实范畴](充实范畴.md), 则有伴随 $\mathcal O \dashv \operatorname{Spec},$ 其中
$$
\mathcal O \colon \mathsf{Fun}(\mathcal C^{\mathrm{op}},\mathcal V) \to \mathsf{Fun}(\mathcal C,\mathcal V)^{\mathrm{op}},
$$
$$
\mathcal O(X)(c) = \operatorname{Hom}(X,\operatorname{Hom}_{\mathcal C}(-,c));
$$
$$
\operatorname{Spec} \colon \mathsf{Fun}(\mathcal C,\mathcal V)^{\mathrm{op}} \to \mathsf{Fun}(\mathcal C^{\mathrm{op}},\mathcal V),
$$
$$
\operatorname{Spec}(A)(c) = \operatorname{Hom}(\operatorname{Hom}_{\mathcal C}(c,-),A).
$$

其一种直观如下. 设想 $\mathcal C$ 是某种几何对象的范畴, 其上的预层范畴 $\mathsf{Fun}(\mathcal C^{\mathrm{op}},\mathcal V)$ 是[余完备化](余完备化.md)后的几何对象的范畴. [对偶](代数-几何对偶.md)地, $\mathcal C^{\mathrm{op}}$ 是某种代数对象的范畴, $\mathsf{Fun}(\mathcal C,\mathcal V)^{\mathrm{op}}$ 是... (todo)


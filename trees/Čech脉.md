---
title: Čech 脉
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Čech 脉是对范畴中的态射 $U\to X$ 指定的一个[单纯对象](单纯对象.md) $\text{\v{C}}(U\to X)$.

- 若 $U\to X$ 是若干 "片" 构成的覆盖 $U=\bigsqcup U_i$, 则 Čech 脉的直观是记录其每有限个 "片" 的交 $U_{i_1}\times_X\cdots\times_X U_{i_k}$ 的结构.

对于满射 $U\to X$, 我们期望其 Čech 脉的几何实现是 $X$ 本身; 这称为 [Giraud 公理](Giraud公理.md).

Čech 脉还有一种[内部观点](内部观点.md): 在[相对](相对.md)于 $X$ 的语言, 即 $X$ 上的[俯范畴](俯范畴.md)的[内语言](意象的内语言.md)中, $X$ 是一个点, 而 $X$ 的覆盖 $U\to X$ 则是一个[有物](有物.md)对象. 将这个对象的 "每两个点之间连一条线, 每三个点之间连一个三角形, ..." 就会得到一个 ([单纯同伦](单纯同伦.md)意义下) 可缩的[单纯对象](单纯对象.md), 其[几何实现](几何实现.md)便是一个点 $X$ 自己.

## 定义

设有范畴 $\mathcal C$ 中的态射 $f\colon U\to X$, 将其视为函子
$$
    \tilde{f}\colon \{[0] \leftarrow [-1]\}^{\mathrm{op}}\to\mathcal C
$$
(其中 $[0]$ 映射到 $U$, $[-1]$ 映射到 $X$). 考虑其沿嵌入
$$
    i\colon \{[0] \leftarrow [-1]\} \hookrightarrow \Delta_+
$$
的[右 Kan 扩张](Kan扩张.md)
$$
\operatorname{RKE}_i \tilde f \colon \Delta_+^{\mathrm{op}} \to\mathcal C,
$$
再限制到 $\Delta\hookrightarrow\Delta_+$, 所得的[单纯对象](单纯对象.md)称为 $f$ 的 **Čech 脉** $\text{\v{C}}(f)\colon \Delta^{\mathrm{op}} \to \mathcal C$.

## 性质

Čech 脉是[群胚对象](群胚对象.md).
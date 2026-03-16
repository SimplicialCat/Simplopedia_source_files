---
title: Harish-Chandra 模
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
subject: 几何表示论
---

## 定义

设 $H\subset G$ 是代数子群, $\mathfrak g$ 是 $G$ 的 [Lie 代数](Lie代数.md). 一个 $\mathfrak g$-模称为 Harish-Chandra 模 (又称 $(\mathfrak g,H)$-模) 是指其 $\mathfrak h$-作用可积为 $H$-作用. (这是一个性质而非额外结构.)

更一般地, 设代数群 $K$ 作用于 Lie 代数 $\mathfrak g$ 上, 且有 Lie 代数的嵌入 $\mathfrak{k} \to \mathfrak g$, 满足

- $K$ 在 $\mathfrak k$ 上的伴随作用与 $K$ 在 $\mathfrak g$ 上的作用相容;
- $\mathfrak k$ 在 $\mathfrak g$ 上的伴随作用与诱导自 $K$ 的作用相同.

一个 Harish-Chandra $(\mathfrak g,K)$-模是一个 $\mathfrak g$-模和 $K$-模 $M$, 两者诱导的 $\mathfrak k$-模结构相同, 且 $\mathfrak g\otimes M\to M$ 是 $K$-模同态.

### 作为形式群概形的表示

Harish-Chandra 二元组 $(\mathfrak g,K)$ 给出一个[形式群概形](形式概形.md) $\exp (\mathfrak g,K)$, Harish-Chandra $(\mathfrak g,K)$-模等同于 $\exp(\mathfrak g,K)$-表示.

## 例

若 $\mathfrak g$ 半单, 则中心商 $U_0\mathfrak g:= U\mathfrak g\otimes_{Z(\mathfrak g)}k_{\chi}$ ($\chi\colon Z(\mathfrak g)\to k$ 是 $Z(\mathfrak g)$ 作用在平凡 $\mathfrak g$-表示上给出的特征) 只是平凡子群的 Harish-Chandra 模.

平凡模 $k$ 是 $G$ 自身的 Harish-Chandra 模.

[Verma 模](Verma模.md) $\mathcal U\mathfrak g\otimes_{\mathcal U\mathfrak b}\operatorname{det}(\mathfrak g/\mathfrak b)$ 是 $(\mathfrak g,B)$-模.

更一般地, 对于 $H$-表示 $W$,
$$
\mathcal U\mathfrak g\otimes_{\mathcal U\mathfrak h} W
$$
是 $(\mathfrak g,H)$-模.

## 与 [D-模](D-模.md)的关系

在几何侧, [Beilinson–Bernstein 局部化](Beilinson–Bernstein局部化.md)将 Harish-Chandra 模对应到 $H$-等变 [D-模](D-模.md)的子范畴 $\mathrm D\text{-}\mathrm {mod}(\mathrm {Fl}_G)^H\subset \mathrm D\text{-}\mathrm {mod}(\mathrm {Fl}_G)$.
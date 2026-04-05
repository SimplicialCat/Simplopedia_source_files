---
title: Galois 扩张
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Galois 扩张是域的平展景上以离散群为结构群的 [Galois 主丛](Galois主丛.md).

## 定义

域的 **Galois 扩张**是[正规](正规扩张.md)且[可分](可分扩张.md)的[代数扩张](代数扩张.md).

### 有限 Galois 扩张

域的**有限 Galois 扩张**是满足如下等价条件的扩张 $F\subset E$:

- $F\subset E$ 是 Galois 扩张, 且是有限扩张.
- $E$ 是 $F$ 上某个可分多项式的[分裂域](分裂域.md);
- $E$ 是 $F$ 的有限扩张, 且 $E^{\operatorname{Aut}_F(E)} = F$;
- 存在有限子群 $G\subset\operatorname{Aut}(E)$ 使得 $F=E^G$.

## 性质

### Galois 对应

对于有限 Galois 扩张 $F\subset E$, 有双射
$$
\{F\subset E\text{ 的中间域}\} \leftrightarrow \{\operatorname{Gal}(E/F) \text{ 的子群}\},
$$
将中间域 $F\subset M\subset E$ 对应到子群 $\operatorname{Aut}(E/M)\subset\operatorname{Gal}(E/F)$; 且

- $M/F$ 为[正规扩张](正规扩张.md)当且仅当 $\operatorname{Aut}(E/M)\subset\operatorname{Gal}(E/F)$ 为[正规子群](正规子群.md).

此时有[短正合列](群短正合列.md)
$$
1\to \operatorname{Aut}(E/M) \to \operatorname{Gal}(E/F) \to \operatorname{Gal}(M/F) \to 1.
$$

### 复合

设 $F\subset M\subset E$ 是两个域扩张.

- 若 $F\subset E$ 是 Galois 扩张, 则 $M\subset E$ 是 Galois 扩张.
- 当 $F\subset E$ 是 Galois 扩张时, $F\subset M$ 不一定是 Galois 扩张 (考虑 $\mathbb{Q}\subset\mathbb{Q}(\sqrt[3]{2})\subset\mathbb{Q}(\sqrt[3]{2},\omega)$).

### "函子性"

在以下两个命题中, 设 $F\subset E_1$, $F\subset E_2$ 为域扩张, 且 $E_1$, $E_2$ 同时包含于某个更大的域. 记 $E_1\cup E_2$ 生成的域为 $E_1E_2$.

**命题**. 若 $F\subset E_1$ 为 Galois 扩张, 则 $E_2\subset E_1E_2$ 为 Galois 扩张, 且有自然的嵌入
$$
\operatorname{Gal}(E_1E_2 / E_2) \hookrightarrow \operatorname{Gal}(E_1 / F).
$$

**命题**. 若 $F\subset E_1$ 为 Galois 扩张且 $E_1\cap E_2 = F$, 则上述嵌入为同构.
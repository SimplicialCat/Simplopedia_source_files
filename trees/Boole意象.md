---
title: "Boole 意象"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

若[意象](意象.md) $\mathcal E$ 中的内蕴 [Heyting 代数](Heyting代数.md) $\Omega$ (即[子对象分类子](子对象分类子.md)) 实为内蕴 Bool 代数, 则称其为 Bool 意象.

**命题**. 对于意象 $\mathcal E$, 下列条件等价.

- $\mathcal E$ 为 Bool 意象;
- [否定](否定.md)算子 $\neg\colon \Omega\to\Omega$ 满足 $\neg\neg = \operatorname{id}$;
- 对任意对象 $E\in\mathcal E$, [Heyting 代数](Heyting代数.md) $\operatorname{Sub}(E)$ 实为 [Boole 代数](Boole代数.md);
- 对任意子对象 $S\rightarrowtail E$, 有 $\neg S \vee S = E$;
- 态射 $\text{true}\colon 1\to\Omega$ 和 $\text{false}=\neg\circ \text{true}$ 给出同构 $1+1\simeq \Omega$.
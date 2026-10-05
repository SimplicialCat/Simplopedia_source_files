---
title: HADR - 代数模式
tag: 讲稿
author: [SimplicialCat](SimplicialCat.md)
---

详见[代数模式](代数模式.md), 这里仅列举要点:

一个**代数模式**是一个范畴 $\mathcal O$ 配备[分解系统](正交分解系.md) $(\mathcal O_{\mathrm{act}},\mathcal O_{\mathrm{int}})$, 分别称为**活性映射**与**惰性映射**, 以及[全子范畴](全忠实函子.md) $\mathcal O_{\mathrm{el}}\hookrightarrow\mathcal O_{\mathrm{int}}$, 称为**基本对象**的范畴.

我们的观念是

- **底层结构**是基本对象的范畴 $\mathcal O_{\mathrm{el}}$ 上的[预层](预层.md);
- 代数模式所表达的结构是底层结构上的代数结构, 即[单子性函子](单子性函子.md) $\mathsf{Seg}_{\mathcal O} \to \widehat {\mathcal O_{\mathrm{el}}}$;
- 代数模式只是代数结构的[表现](数学对象的表现.md), 正如[景](景.md)是[意象](意象.md)的表现.

代数模式 $\mathcal O$ 在[积幺半范畴](积幺半范畴.md) $\mathcal C$ 中的 **Segal 对象**是一个函子 $F\colon \mathcal O^{\mathrm{op}} \to \mathcal C$, 满足 $F|_{\mathcal O_{\mathrm{int}}}$ 是 $F|_{\mathcal O_{\mathrm{el}}}$ 的[右 Kan 扩张](Kan扩张.md).

重要的例子包括

- [结合代数](结合代数.md)的模式 [$\Delta$](单纯形范畴.md),
- [交换代数](交换代数.md)的模式 [$\Gamma$](Segal范畴Γ.md),
- [$(\infty,n)$-范畴](∞-n-范畴.md)的模式 [$\Theta_n$](Joyal范畴.md),
- [多重范畴](多重范畴.md)的模式 [$\Omega$](树.md).

Lurie 意义下的[算畴](算畴.md)是一种特殊的代数模式 $\mathcal O \to \Gamma$, 所谓弱 Segal 纤维化.

**关于代数模式方向约定的解释**. 在本页面与[代数模式](代数模式.md)页面, 我们使用的方向约定 (即代数模式的底层范畴 $\mathcal O$ 及其子范畴的方向) 与 [Chu–Haugseng](ChuHaugsengAlgPat.md) 以及 Lurie 都相反. 我认为两种约定都有道理, 并且两者可以视为一对[代数–几何对偶](代数-几何对偶.md),

- 我们约定中的代数模式 $\mathcal O$ 可视为 "代数侧", 其对象大致可理解为基本对象生成的自由代数对象, 态射可理解为**变量代换**, 例如 $\mathbb{Z}[t] \to \mathbb{Z}[x,y]$, $t\mapsto x+y$.
- 而 Chu–Haugseng 与 Lurie 约定中的范畴 $\mathcal O$ ($\mathcal O^{\otimes}$) 可视为[对偶](代数-几何对偶.md)的 "几何侧", 态射可视为**运算**, 例如 $\mathbb A^2 \to \mathbb A^1$, $(x,y)\mapsto x+y$.
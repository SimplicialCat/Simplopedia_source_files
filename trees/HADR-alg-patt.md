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



## 例子: 游走的自同态

记录一个小例子, 可以作为习题检验自己对代数模式的理解.

考虑仅有一个点 $*$ 和一条边
$*\to *$
的有向图, 问这个有向图自由生成的范畴是什么. 注意到它是 $\Delta_{\mathrm{el}}$ 上的预层范畴中的终对象, 通过右 Kan 扩张得到的代数模式 $\Delta_{\mathrm{int}}$ 的 Segal 对象
$$
X\colon \Delta_{\mathrm{int}}^{\mathrm{op}}\to\mathsf{Ani}.
$$
仍是终对象 (右 Kan 扩张保持终对象):
$$
X ([n]) = 1.
$$
我们通过左 Kan 扩张求其自由生成的 $\Delta$ 的 Segal 对象:
$$
\operatorname{LKE}(X)([1]) = \operatorname{colim}_{[1] \to [n]} X([n]) =
\big|
    \{[1]\to [n]\}
\big|,
$$
其中 $|{-}|$ 表示取范畴的底层生象. 这个指标范畴认真写出来是:

- 对象为 $[1]\to [n]$,
- 态射为交换图 $\begin{array}{ccc}
[1] &  &  \\
\downarrow & \searrow &  \\
[n] & \rightarrowtail & [m]
\end{array}$, 其中 $[n]\rightarrowtail [m]$ 是惰性的.

**断言**. 指标范畴 $\{[1]\to [n]\}$ 是 $\mathbb{N}$ 个范畴的无交并, 其中每个部分都是[弱可缩范畴](弱可缩范畴.md).

为了证明上述断言, 考虑每个态射 $[1]\to [n]$ 的活性部分. 对指标范畴中的任意态射 $\begin{array}{ccc}
[1] &  &  \\
\downarrow & \searrow &  \\
[n] & \rightarrowtail & [m]
\end{array}$, 由于 $[n]\rightarrowtail [m]$ 是惰性的, 其两边 $[1]\to [n]$ 和 $[1]\to [m]$ 的活性部分相同, 这就将指标范畴归为了 $\mathbb{N}$ 个连通分支. 另一方面, 设 $[1] \to [n]$ 的活性部分为 $[1] \to [k]$, 则由正交分解, 存在唯一的惰性映射 $[k]\rightarrowtail [n]$ 连接两者; 故这个连通分支是弱可缩的.

...

不难发现左 Kan 扩张给出的自由的 [Segal 生象](Segal空间.md) $\operatorname{LKE}(X)$ 为[游走](游走.md)的自同态 $\mathbf{B}\mathbb{N}$.
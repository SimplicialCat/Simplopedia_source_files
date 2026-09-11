---
title: HADR (1) 算畴
tag: 讲稿
author: [SimplicialCat](SimplicialCat.md)
---

## 引子

[单子](单子.md)是记录许多代数结构的统一的工具. 对于每种代数结构都有一个[自由](自由-遗忘伴随.md)函子, 对应的单子是自由和遗忘的复合, 一般的结构则是[单子上的代数](单子上的代数.md).

- 对于环 $R$, $R$-[模](结合代数上的模.md)是单子 $T_R := R\otimes -\colon \mathsf{Ab}\to\mathsf{Ab}$ 上的[代数](单子上的代数.md).
- 考虑[张量代数](张量.md)单子 $T\colon \mathsf{Ab} \to \mathsf{Ab}$, 那么一个环等同于一个 $T$-[代数](单子上的代数.md).
- 考虑自由群单子 $T_{\mathrm{Grp}}\colon \mathsf{Set} \to \mathsf{Set}$, 那么一个群等同于一个 $T_{\mathrm{Grp}}$-[代数](单子上的代数.md). 更一般地, 每个 [Lawvere 理论](Lawvere理论.md)都给出 $\mathsf{Set}$ 上的一个单子 $T$. 记 $T(n)$ 为该理论中所有可能的 $n$ 元项的集合, 例如群的理论中 $x^2 y^{-1}x$ 是一个 $2$ 元项. 那么函子 $T$ 可表示为
  $$
    TX = \int_{N\in\mathsf{Fin}} T(N)\times X^N.
  $$
  这是一个[余端](余端.md)记号, 可以粗略地理解为对所有 $N$ 取并, 然后商掉必要的关系.
- 对于 $\mathsf{Ani}$-值单色[算畴](算畴.md) $\mathcal O$, 我们有 ([$\mathsf{Ani}$](Ani.md) 上的) 自由 $\mathcal O$-代数单子
  $$
    T_{\mathcal O} X = \int_{N\in\mathsf{Fin}^\simeq} \mathcal O(N)\times X^N.
  $$
  例如自由 [$\mathbb E_n$](En-代数.md)-代数单子
  $$
    T_{\mathbb E_n}X = \int_{N\in\mathsf{Fin}^\simeq}\operatorname{Conf}_N(\mathbb{R}^n)\times X^N.
  $$
  注意, 与 Lawvere 理论不同的是, 这里[余端](余端.md)的指标范畴为[群胚](对象的生象.md) $\mathsf{Fin}^\simeq$. 本讲的第一个主要目标便是用这种方式解释什么是算畴.

有一些看起来不那么 "代数" 的结构也可以用单子来记录. 关键在于, "不那么代数" 的信息被储存在了一个基范畴中, 而单子本身只负责记录 "代数" 运算.

- 考虑有向图的范畴 $\mathsf{Graph}$, 其对象为两个生象带有两个映射 $E\rightrightarrows V$, 其上有一个自由范畴单子 $T_{\mathsf{Cat}}\colon \mathsf{Graph}\to\mathsf{Graph}$, 这个单子上的代数就是**范畴**.
- [算畴](算畴.md) ([多重范畴](多重范畴.md)) 也可以类似定义, 底层的结构是[树](树.md). 树与图的区别在于它能记录 "多个对象到一个对象的态射". 这是本讲的第二个主要目标. 注意在本讲中, 算畴 (多重范畴) 有了两个不同层次的角色: 先是一个算畴定义一种结构, 然后算畴这种结构本身也可以用单子来定义.

在上述每个例子中, "自由代数" 单子都不仅仅是单子, 而是所谓[带元数的单子](带元数的单子.md). 元数 (arity) 的本义是一个函数的自变量的个数, 例如加法的元数是 $2$, 取逆的元数是 $1$, 而常数的元数是 $0$.

## 带元数的单子

如果定义一种代数结构的每种运算只涉及了一个集合里有限个元素, 那么一个代数 $X$ 就可以被全体有限集 $A$ 生成的自由代数 $TA$ [探测](探测.md). 所谓探测就是说用全体态射 $TA\to X$ 的信息可以完全恢复出 $X$ 的信息. 这就是[带元数的单子](带元数的单子.md)的直观.

## 齐性理论与 Descartes 单子


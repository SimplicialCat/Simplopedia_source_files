---
title: 范畴的分解同调
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

参考文献: [](AyalaFrancisRozenblyumI.md)

合集: [](mfd-cat.md)

上一集: [](strat-cat.md)

## 1 关于条纹层 (striation sheaves) 的回顾

本节是对 [AFR](AyalaFrancisRozenblyumStrat.md) 的回顾, 参见[相关笔记](strat-cat.md).

### 1.1 分层空间

本文的 "分层空间" 特指一类具有良好微分拓扑行为的分层空间, 它是光滑流形在分层空间理论中的推广; 它的每一层为光滑流形, 层与层相接处还有额外的相容性. 我们不详细解释定义, 只陈述其性质:

- 分层空间被形如 $\mathbb{R}^i \times \mathbb{R}_{\geq 0}^j \times C(Z)$ 的基本开集 (又叫**奇点类型**) 覆盖, 其中 $Z$ 是更低维的分层空间;
- 分层空间的态射 $f\colon C(X)\to C(Y)$ (锥点为单独一层, 锥点打到锥点) 给出链环之间的 "切映射" $Df \colon X \to Y$.

光滑流形范畴是分层空间范畴的全子范畴
$$
\mathsf{Mfd}\hookrightarrow\mathsf{Strat}.
$$

分层空间有几类重要的态射:

- **开嵌入**来自拓扑空间的开嵌入;
- **加细**在拓扑空间上为同胚, 只是可能加入新的分层;
- **纤维丛**要求在某个开覆盖的每片上为乘积;
- **可构造丛** (constructible bundle) 是一个归纳定义的概念, 对于态射 $f\colon X\to Y$, 要求对 $Y$ 的每一层 $Y_q$,
  - $f^{-1}Y_q \to Y_q$ 为纤维丛,
  - $\operatorname{Link}_{f^{-1}Y_q}(X)\to f^{-1}Y_q\times_{Y_q}\operatorname{Link}(Y)$ 为可构造丛.
- **紧合可构造丛**是满足紧集的逆像为紧集的可构造丛.

回忆, [单纯形](单纯形范畴.md)可实现为[分层空间](分层.md), 即有函子
$$
\Delta\to \mathsf{Strat},\,[n]\mapsto\Delta^n.
$$
其中 $\Delta^n$ 是通过迭代分层空间上的[锥](锥(拓扑学).md)操作定义的.

分层空间的范畴 $\mathsf{Strat}$ 一开始是 $(1,1)$-范畴, 但实际上它可[充实](充实范畴.md)于[生象](Ani.md), 即构成 $(\infty,1)$-范畴. 它可由如下的 Kan 复形充实结构 $\underline{\operatorname{Hom}}_{\mathsf{Strat}}$ 定义:
$$
\underline{\operatorname{Hom}}_{\mathsf{Strat}}(X,Y)[n] :=\operatorname{Hom}_{\mathsf{Strat}_{/\Delta^n}}(X\times\Delta^n, Y\times\Delta^n).
$$
它还有一个性质: $(\infty,1)$-范畴版本的 $\mathsf{Strat}$ 是 $(1,1)$-范畴版本关于所有投影 $X\times\mathbb{R}\to X$ 的[局部化](局部化(范畴论).md). 后文中我们将**永远使用 $(\infty,1)$-范畴版本** (用 $\operatorname{Hom}_{\mathsf{Strat}}$ 表示态射生象), 所以无需区分记号.

### 1.2 出路范畴


"出路范畴" 函子
$$
\mathsf{Exit}\colon \mathsf{Strat}\to \mathsf{sAni},\, X\mapsto ([n]\mapsto\operatorname{Hom}_{\mathsf{Strat}}(\Delta^n, X))
$$
的像落在范畴的范畴 $\mathsf{Cat}\hookrightarrow\mathsf{sAni}$ 中.



### 1.3 条纹层

由出路范畴函子 $\mathsf{Exit}\colon \mathsf{Strat} \to \mathsf{Cat}$, 我们又可将范畴变为 $\mathsf{Strat}$ 上的预层. 我们甚至可以写出判断这样一个预层何时来自范畴的条件.



## 2 切结构



### 3.8 胞腔几何实现

定义函子
$$
\langle - \rangle \colon \Delta^{\mathrm{op}} \to \mathsf{cDisk}_1^{\mathrm{vfr}},
$$
然后归纳地定义**胞腔几何实现** ([AFR](AyalaFrancisRozenblyumI.md) 定义 3.53)
$$
\langle - \rangle \colon \Theta_n^{\mathrm{op}} \to \mathsf{cDisk}_n^{\mathrm{vfr}}.
$$

## 4 分解同调

### 4.2

**引理**. 函子 $\Theta_n^{\mathrm{op}} \to \mathsf{cDisk}_n^{\mathrm{vfr}}$ 的[脉](脉.md)
$$
\mathfrak C \colon (\mathsf{cDisk}_n^{\mathrm{vfr}})^{\mathrm{op}} \to \widehat {\Theta}_n
$$
落在全子范畴 $\mathsf{Cat}_{(\infty,n)}$ 中.

### 4.3

**定义** (4.13). 分解同调为函子
$$
\int\colon \mathsf{Cat}_{(\infty ,n)}\to\mathsf{Fun}(\mathsf{cDisk}_n^{\mathrm{vfr}},\mathsf{Ani})\hookrightarrow\mathsf{Fun}(\mathsf{cMfd}_n^{\mathrm{vfr}},\mathsf{Ani}),
$$
其中

- 第一步为沿 $\Theta_n^{\mathrm{op}}\hookrightarrow \mathsf{cDisk}_n^{\mathrm{vfr}}$ 的右 Kan 扩张;
- 第二步为沿 $\mathsf{cDisk}_n^{\mathrm{vfr}} \hookrightarrow \mathsf{cMfd}_n^{\mathrm{vfr}}$ 的左 Kan 扩张.

具体地, 对于 $(\infty,n)$-范畴 $\mathcal C$ 与标架分层流形 $M$, 分解同调可写为
$$
\int_M \mathcal C = \operatorname{colim}_{D\to M}\operatorname{Hom}_{\mathsf{Cat}_{(\infty,n)}}(\mathfrak C(D),\mathcal C).
$$


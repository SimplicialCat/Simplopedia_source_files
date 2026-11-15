---
title: 范畴的分解同调
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

参考文献: [](AyalaFrancisRozenblyumI.md)

合集: [](mfd-cat.md)



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


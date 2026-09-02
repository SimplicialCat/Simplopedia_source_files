---
title: Stone 对偶
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

$2=\{0,1\}$ 同时具有 [Boole 代数](Boole代数.md)和[紧 Hausdorff 空间](紧Hausdorff空间.md)结构; 有两个方向的函子
$$
\operatorname{Hom}_{\mathsf{CHaus}}(-,2)\colon \mathsf{CHaus}^{\mathrm{op}} \to \mathsf{Boole}
$$
以及
$$
\operatorname{Hom}_{\mathsf{Boole}}(-,2)\colon \mathsf{Boole}^{\mathrm{op}} \to \mathsf{CHaus}.
$$
这就是 **Stone 对偶**.

定义 [**Stone 空间**](Stone空间.md)为满足如下等价条件的空间 $X$:

- $X$ 是**全不连通** (totally disconnected) 紧 Hausdorff 空间, 全不连通是指其连通分支仅有单点集;
- $X$ 是[凝聚](凝聚位象.md)的 Hausdorff 空间;
- $X$ 落在函子 $\operatorname{Hom}_{\mathsf{Boole}}(-,2)\colon \mathsf{Boole}^{\mathrm{op}} \to \mathsf{CHaus}$ 的像中.

**命题**. Stone 对偶给出了等价
$$
\mathsf{Boole}^{\mathrm{op}}\simeq\mathsf{Stone},
$$
将 $\mathsf{Boole}^{\mathrm{op}}$ 等同于 $\mathsf{CHaus}$ 的一个[自反子范畴](自反子范畴.md).

Stone 对偶是[代数–几何对偶](代数-几何对偶.md)的一例.
---
title: 高阶 Zariski 几何
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

本文是 [ABCSS25](ABCSS25.md) 的阅读笔记. 在 [Lurie DAG V](LurieDAGV.md) 的基础上, 建立局部 $2$-环化意象以及相应的 Zariski 谱等概念.

用 "$2$-环" 来指代[幂等完备](幂等完备范畴.md)的[稳定](稳定无穷范畴.md)[对称幺半范畴](对称幺半范畴.md). 记 $2$-环的范畴为 $2\mathsf{CAlg}$. 这是一个非常广泛的范畴, 包括了代数几何中许多对象:

- [qc](拟紧概形.md)[qs](拟分离概形.md) [概形](概形.md) $X$ 上的完美导出范畴 $\mathsf{Perf}_X$;
- [谱](谱.md)的范畴 [$\mathsf{Sp}$](Sp.md) 及其变体 (等变, 母题);
- 非交换几何中的 Kasparov 可分 [$C^*$-代数](C-星代数.md)范畴;
- Kontsevich 同调镜像对称猜想中的 Fukaya 范畴.

这篇文章定义了局部 $2$-环化空间, 建立了如下伴随:
$$
\operatorname{Spec}\colon 2\mathsf{CAlg} \rightleftarrows \mathsf{Loc}2\mathsf{RingSp}^{\mathrm{op}} \colon \Gamma,
$$
其中右伴随部分 $\Gamma$ 是取整体截面的 $2$-环.
并且左伴随部分 $\operatorname{Spec}$ 在[刚性](刚性幺半范畴.md) $2$-环的子范畴上是全忠实的; 特别地, 每个刚性 $2$-环 $\mathcal K$ 都等同于 $\operatorname{Spec}\mathcal K$ 上的结构层的整体截面的 $2$-环.

## 2-环

记 $\mathsf{Cat}^{\mathrm{perf}}$ 为[幂等完备](幂等完备范畴.md)的小[稳定范畴](稳定无穷范畴.md)与正合函子构成的范畴, $\mathsf{Pr}_{\omega,\mathrm{st}}$ 为[紧生成](紧生成范畴.md) (又叫有限表现) 稳定范畴与保持[紧对象](紧对象.md)且保持[余极限](余极限.md)的函子构成的范畴. 那么两者作为[对称幺半范畴](对称幺半范畴.md)有等价
$$
\mathsf{Ind}\colon \mathsf{Cat}^{\mathrm{perf}} \rightleftarrows\mathsf{Pr}_{\omega,\mathrm{st}} \colon (-)^{\omega}.
$$
其中 $(-)^{\omega}$ 表示取[紧对象](紧对象.md)的子范畴.

定义 $2$-环为上述对称幺半范畴中的[交换代数](交换代数.md):
$$
2\mathsf{CAlg} := \mathsf{CAlg}(\mathsf{Cat}^{\mathrm{perf}}) \simeq \mathsf{CAlg}(\mathsf{Pr}_{\omega,\mathrm{st}}).
$$

### 理想

设 $\mathcal K$ 为 $2$-环, 定义 $\mathcal K$ 的**厚张量理想** (thick tensor ideal, 简称为**理想**) 为满足如下条件的全子范畴 $\mathcal J$:

- $\mathcal J$ 关于[余纤维](余纤维列.md), 平移, [收缩](收缩.md)封闭;
- 对任意 $x\in\mathcal K$ 与 $y\in\mathcal J$, 有 $x\otimes y\in\mathcal J$.

那么 $\mathcal K$ 的理想在包含关系下构成[偏序集](偏序集.md) $\mathsf{Ideal}(\mathcal K)$. 任何一族对象 $S$ 可以生成一个理想, 记为 $\langle S\rangle$. 一个对象 $x$ 生成的理想 $\langle x\rangle$ 称为**主理想**.
若理想 $\mathcal J$ 满足 $x\otimes x\in \mathcal J$ 蕴涵 $x\in\mathcal J$, 则称其为**根理想**. 任何一族对象 $S$ 生成一个根理想, 记为 $\sqrt{S}$.

$2$-环中的理想与一种局部化有关, 称为 Karoubi 商.
对于理想 $\mathcal J$, 令 $W$ 为余纤维属于 $\mathcal J$ 的态射的全体, 定义 $\mathcal K$ 关于 $\mathcal K$ 的 Karoubi 商为[局部化](局部化(范畴论).md)的[幂等完备化](幂等完备化.md):
$$
\mathcal K / \mathcal J := \mathsf{Idem}(\mathcal K [W^{-1}]).
$$

**命题**. 对 $2$-环 $\mathcal K$, 有伴随
$$
\mathcal K/-\colon \mathsf{Ideal}(\mathcal K) \rightleftarrows 2\mathsf{CAlg}_{\mathcal K /} \colon \ker (-),
$$
换言之, 对 $\mathcal K$ 的理想 $\mathcal J$ 以及 $2$-环的态射 $f\colon \mathcal K\to\mathcal L$, 其穿过 $\mathcal K/\mathcal J$ 当且仅当 $\mathcal J$ 包含于 $\ker(f)$.

这个命题至少直观上是对的: 态射 $f$ 将 $W$ 中的态射变为同构当且仅当 $f$ 将 $\mathcal J$ 的对象映射到 $0$.

## 2-环的 Zariski 几何

$2$-环上的 Zariski [几何](geometry-DAGV.md)由如下资料定义:

- $\mathcal G_{\mathrm{Zar}} = (2\mathsf{CAlg}^{\omega})^{\mathrm{op}}$ (注意 $2\mathsf{CAlg}$ 为[紧生成范畴](紧生成范畴.md)),
- 可容许态射为 Karoubi 商;
- 覆盖为有限个 Karoubi 商 $f_i\colon \mathcal K\to\mathcal K_i$, 满足 $\bigcap_i \ker f_i \subset \sqrt{0}$.

### Balmer 谱

前述[几何](geometry-DAGV.md)构造的谱能够恢复出 [Balmer 谱](Balmer谱.md)的概念.
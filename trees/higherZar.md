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

## 2-环的范畴

记 $\mathsf{Cat}^{\mathrm{perf}}$ 为
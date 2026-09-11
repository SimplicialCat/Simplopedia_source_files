---
title: 游走的幂等映射
tag: 百科
subject: [范畴论](范畴论.md)
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

考虑[增广单纯形范畴](单纯形范畴.md) $\Delta_+$ 上 $[0]$ 的左模范畴 $\Delta_{\bot}$, 即有最小值的全序集
$$C_+([n]) = [n+1] = \{\bot,0,1,\cdots,n\}$$
($n\geq -1$) 和保持最小值的保序映射的范畴.

定义**游走的幂等映射** (walking idempotent) $\mathsf{Idem}$ 为 $\Delta_\bot$ 在对象
$$
    C_+([0]) = [1] =\{\bot,0\}
$$
上的全子范畴.

由定义, $\mathsf{Idem}$ 是[游走的收缩 $\mathsf{Ret}$](游走的收缩.md) 的全子范畴. 这体现了每个[收缩](收缩.md)都给出一个[幂等映射](幂等态射.md).
---
title: 生象群
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

在 $\infty$-范畴的语境中, 正如子集的概念常常替换为一般映射, **子群**的概念常常替换为一般同态. 对子群定义的[陪集空间](陪集空间.md)也可对任何群同态定义.

### 核

对于生象群同态 $f\colon G\to H$, 其**核**由如下[纤维列](纤维列.md)定义:
$$
\mathbf{B}\ker f \to \mathbf{B}G \overset{\mathbf{B}f}{\to} \mathbf{B}H.
$$
也即
$$
\mathbf{B}\ker f = \operatorname{fib}(\mathbf{B}f) = \mathbf{B}G \times_{\mathbf{B}H}*.
$$

### 余核

对于生象群同态 $f\colon G\to H$, 其**余核**由如下[余纤维列](余纤维列.md)定义:
$$
\mathbf{B}G \overset{\mathbf{B}f}{\to} \mathbf{B}H \to \mathbf{B}\operatorname{coker}f.
$$

**注意**. 余核的行为与经典群论中的概念很不同.

- 即使对于正规子群, $\operatorname{coker}f$ 一般也不是 $H$ 在 $G$ 上右[作用](群作用.md)的商 $G/H$.
- 即使对于正规子群, $H\to\operatorname{coker}f$ 的核一般也不是 $G$.

**例**. $2\mathbb{Z} \to \mathbb{Z}$ 的余核是 $\Omega\mathbb{RP}^2$ 而不是 $\mathbb{Z}/2$.

## 相关概念

todo: 整合进来

- [](群作用.md)
- [](中心.md)
- [](中心作用.md)
- [](内自同构.md)
- [](群的外自同构.md)
  
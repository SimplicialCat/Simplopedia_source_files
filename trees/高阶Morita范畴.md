---
title: 高阶 Morita 范畴
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

设 $n\in\mathbb{N}_{\geq 0}$ 为自然数, $\mathcal C$ 为对称幺半 $(\infty ,1)$-范畴 (或更一般的 [$\mathbb E_n$-幺半](En-代数.md) $(\infty ,1)$-范畴), 可构造一个 $(\infty ,n+1)$-范畴 $\mathsf{Morita}_{n}(\mathcal C)$,

- $\mathsf{Morita}_{n}(\mathcal C)$ 的对象为 $\mathcal C$ 中的 [$\mathbb E_n$-代数](En-代数.md);
- $\mathsf{Morita}_{n}(\mathcal C)$ 的对象为 $\mathcal C$ 中两个对象 $A,B$ 之间的态射范畴为双模范畴 $\mathsf{BiMod}(A,B)$ 的低一阶的 Morita 范畴
$$
\operatorname{Hom}_{\mathsf{Morita}_{n}(\mathcal C)}(A,B)=\mathsf{Morita}_{(n-1)}(\mathsf{BiMod}(A,B)).
$$

作为归纳定义的起点, 定义 $\mathsf{Morita}_0(\mathcal C) = \mathcal C$.

当 $n=1$ 时这就是通常的 [Morita 范畴](Morita范畴.md).

与通常的 Morita 范畴类似, 高阶 Morita 范畴也可视为由[高阶模范畴](高阶模.md)构成的范畴, 其中 $\mathbb E_n$-代数 $A$ 代表的是它上面的 $n$ 阶模范畴 $\mathsf{Mod}(\mathsf{Mod}(\cdots\mathsf{Mod}(A)\cdots))$.

## 性质

### 分解同调与拓扑场论

对称幺半 $(\infty ,1)$-范畴 $\mathcal C$ 中的 [$\mathbb E_n$-代数](En-代数.md) $A$ 给出一个取值于 Morita 范畴 $\mathsf{Morita}_{n}(\mathcal C)$ 的 $n$ 维[拓扑场论](拓扑场论.md) $\mathsf{Bord}_n^{\mathrm{fr}} \to \mathsf{Morita}_{n}(\mathcal C)$. 对于自然数 $0\leq k\leq n$, 该函子将 $\mathsf{Bord}_n^{\mathrm{fr}}$ 中的 $k$-态射 ($k$ 维标架配边) $M$ 对应到[分解同调](分解同调.md)
$$
M \mapsto \int_{M\times\mathbb{R}^{n-k}}A.
$$
注意 $\int_{M\times\mathbb{R}^{n-k}}A$ 具有 $\mathbb E_{n-k}$-结构.
特别地, 该函子将一个点 $\mathrm{pt}$ 对应到 $\mathbb E_n$-代数 $A$ 自身.
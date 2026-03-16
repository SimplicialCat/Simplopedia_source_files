---
title: Poisson 代数
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

交换环 $k$ 上的 Poisson 代数是 $k$-代数 $A$ 带有一个 Lie 括号 $[-,-]$,
使得 $[a,-] \colon A \to A$ 是 $k$-代数的[导子](导子.md); 换言之, $[-,-]$ 是 $A$ 上的双导子 (biderivation).

注意 Poisson 代数 $A$ 要求是含幺结合代数, 但有时不要求交换.

流形 $M$ 配备其光滑函数环 $C^\infty(M)$ 的 Poisson 结构, 称为 [Poisson 流形](Poisson流形.md).

## 例

[辛流形](辛流形.md) $(X,\omega)$ 上的光滑函数层 $\mathcal O_X$ 具有 Poisson $\mathbb{R}$-代数结构
$$
\{f,g\} = \omega(df,dg).
$$
这是因为, 辛结构 $\omega$ 是一个同构 $\Omega_X \simeq T_X$, 而映射 $\Omega_X \to T_X = \operatorname{Der}(\mathcal O_X,\mathcal O_X)$ 相当于导子 $\mathcal O_X \to \operatorname{Der}(\mathcal O_X,\mathcal O_X)$, 也即双导子 $\mathcal O_X\otimes\mathcal O_X \to \mathcal O_X$.

[Lie 代数](Lie代数.md) $\mathfrak{g}$ 的对称代数 $\operatorname{Sym} \mathfrak{g}$ 具有交换 Poisson 代数结构, 使得生成元 (即 $\mathfrak{g}$ 的元素) Poisson 括号恰为 Lie 括号. 见 [Kirillov–Kostant–Souriau Poisson 结构](KKSPoisson结构.md).

类似地, Lie 代数 $\mathfrak{g}$ 的[泛包络代数](泛包络代数.md) $U\mathfrak{g}$ 具有非交换 Poisson 代数结构, 在生成元上限制为 Lie 括号. 这是下面介绍的几乎交换代数的例子, 其[关联分次代数](关联分次代数.md)同构于 $\operatorname{Sym}\mathfrak{g}$.

### (几乎) 交换代数

几乎交换代数 (almost commutative algebra) 是指有交换的[关联分次代数](关联分次代数.md)的[滤代数](滤代数.md). 几乎交换代数 $F^\bullet A$ 的[关联分次代数](关联分次代数.md) $\operatorname{Gr}^\bullet A$ 上有 Poisson 结构: 对 $x \in \operatorname{Gr}^i A$, $y\in\operatorname{Gr}^j A$,
分别取 $x,y$ 的代表元 $\tilde{x}\in F^i A$, $\tilde y\in F^j A$, 定义
$$
\{x,y\} := [\tilde{x},\tilde{y}].
$$

例如 [Weyl 代数](Weyl代数.md)
$$
W =\mathbb{Z}\langle x_1,\cdots,x_n,\partial_1,\cdots,\partial_n\rangle,
$$
满足关系 $[x_i,x_j]=[\partial_i,\partial_j]=0$, $[\partial_i,x_j]=\delta_{ij}$, 其关联分次代数即为多项式代数
$$
\operatorname{Gr}^\bullet W \simeq \mathbb{Z}[x_1,\cdots,x_n,y_1,\cdots,y_n].
$$
这个多项式代数上的 Poisson 结构可表示为
$$
\{f,g\} = \sum_i \Big(\frac{\partial f}{\partial x_i}\frac{\partial g}{\partial y_i} - \frac{\partial f}{\partial y_i}\frac{\partial g}{\partial x_i}\Big).
$$

---
title: HADR - Ek
tag: 讲稿
author: [SimplicialCat](SimplicialCat.md)
---

固定一个自然数 $k$, 记 $\square^k = (-1,1)^k$ 为 $k$ 维开方块. 开方块之间的**平直嵌入** (rectilinear embedding) 是形如 $(x_1,\cdots,x_k)\mapsto (a_1x_1+b_1,\cdots)$ ($a_i > 0$) 的嵌入. 对于有限集 $S$ 与嵌入 $f\colon \square^k\times S\to \square^k$, 若 $f$ 在每个分支上为平直嵌入, 也称 $f$ 为平直嵌入.

考虑如下的 $\mathsf{Top}$-充实范畴 $\mathbb E_k$:

- 其对象为 [$\Gamma$](Segal范畴Γ.md) 的对象 $\langle n\rangle$;
- 态射 $\langle n \rangle \to \langle m\rangle$ 是一个 $\Gamma$ 中的态射 $\alpha$, 将每个 $i\in\{1,\cdots,n\}$ 对应到互不相交的子集 $S_i\subset\{1,\cdots,m\}$, 同时对每个 $i$ 有平直嵌入 $\square^k\times S_i \to \square^k$;
- 复合是明显的.

考虑 $\mathsf{Top}$-充实范畴表现的 $\mathsf{Ani}$-充实范畴 (也就是 $(\infty,1)$-范畴) $\mathbb E_k$, 我们得到一个算畴 $\mathbb E_k \to \Gamma$.

**注**. 事实上, 平直嵌入的空间同伦等价于[构形空间](构形空间.md), 所以作为 $\mathsf{Ani}$-充实范畴, $\mathbb E_k$ 的态射空间就是构形空间. 不过用平直嵌入有如下好处:
- 容易写出运算的复合;
- 容易与拓扑空间的 $k$ 阶[环路空间](环路空间.md) $\Omega^k X$ 相联系;
- 容易与[代数模式](代数模式.md) $\Delta^k$ 相联系;
- ...

我们不禁要问这个算畴 $\mathbb E_k$ 和此前介绍的 $\mathbb E_k$-代数的[代数模式](代数模式.md) $\Delta^k$ 有什么关系. 不难发现有代数模式的态射 $\Delta^k \to \mathbb E_k$:

- 对象 $([n_1],\cdots,[n_k])\in\Delta^k$ 映射到 $\langle\prod_{i=1}^k n_i\rangle\in\mathbb E_k$, 想象为一个 $\square^k$ 的 "网格切割", 每个维度分别切割为 $n_1,\cdots,n_k$ 个区间.
- 态射是直观的, 我们仅举一例说明. 当 $k=1$ 时, 单纯形态射 $[n] \to [m]$ 把 $[n]$ 中的 $n$ 个箭头每个对应到 $[m]$ 中连续 $S_i$ 个箭头; 相应地, $\mathbb E_1$ (即 $\mathsf{Assoc}$) 中有一个态射 $\langle n\rangle\to\langle m\rangle$, 表示 $n$ 个区间每个切成 $S_i$ 个小区间, 总共有 $m$ 个小区间.

所以对于积幺半范畴 $\mathcal C$ 有限制函子
$$
\mathsf{Alg}_{\mathbb E_k} (\mathcal C) \to \mathsf{Seg}_{\Delta^k}(\mathcal C).
$$

**断言**. 上述函子为等价.

这个断言的内容基本上就是 Dunn–Lurie 加性定理.
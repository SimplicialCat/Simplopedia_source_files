---
title: Frobenius 态射
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

从[平展同伦论](平展同伦论.md)的角度看, Frobenius 态射给出 $\operatorname{Spec}\mathbb F_q$ 上概形的平展同伦型的[和乐](和乐.md).

## 定义

### $\mathbb F_p$-代数的 Frobenius 映射

对于 $\mathbb F_p$-代数 (又叫 $p$ 特征环) $A$, 其 Frobenius 态射是 $A$ 的自同态 $\operatorname{Frob}_A \colon A \to A$, $a\mapsto a^p$.

对于 $\mathbb F_p$-代数同态 $A\to B$, 有交换图
$$
\begin{array}
	{ccc}
	A & \overset{\operatorname{Frob}_A}{\to} & A \\
	\downarrow && \downarrow\\
	B & \overset{\operatorname{Frob}_B}{\to} & B.
\end{array}
$$
因此 Frobenius 态射是 $\mathbb F_p$-代数范畴 $\mathsf{Alg}_{\mathbb{F}_p}$ 上恒等函子的一个自同态:
$$
\operatorname{Frob} \colon \mathrm{id}_{\mathsf{Alg}_{\mathbb{F}_p}} \to \mathrm{id}_{\mathsf{Alg}_{\mathbb{F}_p}}.
$$

上述概念也可以推广到 $\mathbb F_q$-代数, $q=p^n$. 对于 $\mathbb F_q$-代数 $A$, Frobenius 态射是指 $a\mapsto a^q$. 它是 $A$ 作为 $\mathbb F_p$-代数的 Frobenius 态射的 $n$ 次迭代.

### $\mathbb F_p$-概形的 Frobenius 映射

设 $S$ 为 $\mathbb F_p$-概形, 而 $X$ 为 $S$-概形.

定义 $X$ 的**绝对 Frobenius 态射** $F^{\mathrm {ab}}\colon X\to X$ 为其结构层 $\mathcal O_X$ 上的 $p$ 次方映射 $\mathcal O_X\to\mathcal O_X$.

绝对 Frobenius 态射一般不是 $X$ 作为 $S$-概形的自同态, 因为如下交换图的底边不是恒等态射.
$$
\begin{array}
	{ccc}
	X & \overset{F^{\mathrm ab}}{\to} & X\\
	\downarrow && \downarrow\\
	S&\overset{F^{\mathrm ab}}{\to} &S.
\end{array}
$$

一个特殊情形: 当 $S=\operatorname{Spec}\mathbb F_p$ 时, $F^{\mathrm {ab}}$ 是概形 $S$ 上的恒等态射, 故给出 $X$ 作为 $S$-概形的自同态.

在一般情形, 考虑 $X$ 沿 $F^{\mathrm{ab}}\colon S\to S$ 的基变换 $X^{(p)}=X\times_S S$, 我们就得到 $X$ 作为 $S$-概形的一个自同态, 称为**相对 Frobenius 态射** $F^{\mathrm {rel}}\colon X\to X^{(p)}$.

### 函子式代数几何中的定义



这里所谓 $k$ 上的空间是指函子 $X\colon k\text{-}\mathsf {Alg}\to\mathsf {Set}$, 定义 $X^{(p)}=X\times_{\operatorname{Spec}_k,f_k}\operatorname{Spec}k$, 有
$$
X^{(p)}(A)\simeq X(A_f),
$$
即
$$
\operatorname{Hom}(\operatorname{Spec}A,X^{(p)})\simeq\operatorname{Hom}(\operatorname{Spec}A_f, X).
$$

$X$ 的 Frobenius 态射 $X \to X^{(p)}$ 由映射 $X(A) \to X(A_f)\simeq X^{(p)}(A)$ 给出.

### 数域

数域 $F$ 的 Galois 群 $\operatorname{Gal}(\overline{F}/F)$ 与有限域的 Galois 群有些联系, 可以由此将 Frobenius 自同构转移到 $\operatorname{Gal}(\overline{F}/F)$ 上.

设 $K/F$ 是数域的扩张, $v$ 为[非分歧素理想](非分歧素理想.md), 记 $v$ 分裂成的素理想之一为 $w$. 注意 $\mathcal O_F/v$ 为有限域, 而 $\mathcal O_K/w$ 是它的 $n$ 阶有限扩张, $\operatorname{Gal}(\mathcal O_K/w , \mathcal O_F/v)$ 是 Frobenius 态射生成的 $n$ 阶循环群. 进一步, 可给出 $\operatorname{Gal}(K,F)$ 中的一个 [Frobenius 共轭类](Frobenius共轭类.md) $\mathrm{Fr}(v)$.

**例**. $F = \mathbb{Q}$, $K = \mathbb{Q}(\zeta_N)$, $\operatorname{Gal}(K/F)\simeq (\mathbb{Z}/N)^\times$ (注意它是 Abel 群), $\mathcal O_F=\mathbb{Z}$, $\mathcal O_K=\mathbb{Z}[\zeta_N]$. 考虑素理想 $v=(p)$, 其非分歧当且仅当 $p$ 不整除 $N$. 此时 Frobenius 元素将 $\zeta_N$ 映射到 $\zeta_N^p$.

对于 $\mathcal O_F$ 的素理想 $v$, 选取一个由所有 $F$ 的有限扩张的素理想构成的相容系统, 其中每个元素都出现在 $v$ 的分解中. 这个系统可视为 $\overline{F}$ 的整数环中的一个关联于 $v$ 的素理想 $\bar v$.

### 函数域

设 $F$ 为 $\mathbb F_q$ 上曲线 $X$ 的[函数域](函数域.md), $v$ 为其[位](位.md), 记 $F_v$ 为 $F$ 关于 $v$ [完备化 (域)](完备化.md)得到的[局部域](局部域.md), $\mathcal O_v$ 为 $F_v$ 的整数环, $\kappa(v)$ 为 $\mathcal O_v$ 的[剩余域](剩余域.md).

每一个嵌入 $\overline{F}\subset\overline{F_v}$ 都给出[绝对 Galois 群](绝对Galois群.md)之间的一个嵌入 $\operatorname{Gal}(\overline{F_v}/F_v)\subset\operatorname{Gal}(\overline{F}/F)$.

$\operatorname{Gal}(\overline{\kappa(v)}/\kappa(v))\simeq\widehat {\mathbb{Z}}$ 中有一个 Frobenius 元素 $x\mapsto x^{q^{\deg(v)}}$, 考虑其在 $\operatorname{Gal}(\overline{F_v}/F_v)$ 中的提升在 $\operatorname{Gal}(\overline{F}/F)$ 的像, 称之为 $\operatorname{Gal}(\overline{F}/F)$ 在 $v$ 处的 Frobenius 元素 $\mathrm{Frob}_v$.

## 性质

$\mathbb F_p$ 的代数闭包的 Frobenius 同态是[绝对 Galois 群](绝对Galois群.md) $\operatorname{Gal}(\overline{\mathbb F_p}/\mathbb F_p)$ 的拓扑生成元.

设 $k$ 为 $p$ 特征域 (视为 $\mathbb F_p$-代数). 若 $k$ 的 Frobenius 态射 $x\mapsto x^p$ 为同构, 则 $k$ 为[完美域](完美域.md).

## 相关概念

[Langlands 对应](Langlands对应.md)
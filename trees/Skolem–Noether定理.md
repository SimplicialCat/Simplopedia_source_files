---
title: Skolem–Noether 定理
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 陈述

### 局部环

设 $A$ 是局部环 $R$ 上的 [Azumaya 代数](Azumaya代数.md). 则 $A$ 作为 $R$-代数的自同构均为内自同构, 即形如 $a\mapsto uau^{-1}$, 其中 $u\in A$ 为可逆元.

### 概形

设 $A$ 是[概形](概形.md) $X$ 上的 [Azumaya 代数](Azumaya代数.md). 则 $A$ 作为 $\mathcal O_X$-代数的自同构在 **Zariski 局部**为内自同构.

## 证明

### 局部环

设 $A$ 是局部环 $R$ 上的 [Azumaya 代数](Azumaya代数.md), $\phi$ 是 $A$ 的自同构.
那么 $A$ 以两种方式成为左 $A\otimes_R A^{\mathrm{op}}$-模 (即 $(A,A)$ 双模):

- $(a_1\otimes a_2^{\mathrm{op}}) a = a_1 a a_2$ (即正常的双模);
- $(a_1\otimes a_2^{\mathrm{op}}) a = \phi(a_1) a a_2$ (即左模结构经过 $\phi$ 拉回).

分别记上述两个左 $A\otimes_{R}A^{\mathrm{op}}$-模为 $A$, $A'$.

**注**. 两个左 $A\otimes_{R}A^{\mathrm{op}}$-模 $A$, $A'$ 分别是 [Morita 范畴](Morita范畴.md)中 $A$ 的自同构 $\mathrm{id}$ 与 $\phi$. 换言之, 它们分别是 $2$-范畴 [$\mathsf{Pr}_R$](高阶模.md) 中 $\mathsf{Mod}(A)$ 的两个自同构 $\mathrm{id}$ 与 $\phi$, 也就是将左 $A$-模结构 "扭曲".

用上划线表示 $-\otimes_R R/\mathfrak{m}$. 由于 $\bar A \otimes_{\bar R} \bar A ^{\mathrm{op}}$ 是[中心单代数](中心单代数.md) (实际上是 $\bar R$ 上的矩阵代数), $\bar A$ 与 $\bar A'$ 是其上的[单模](单对象.md), 而一个中心单代数上的单模在同构意义下唯一; 故存在同构 $\psi\colon \bar A \to \bar A'$.
		
现在证明 $A$ 是投射 $A\otimes A^{\mathrm{op}}$-模.
由 $A\otimes A^{\mathrm{op}} \simeq \operatorname{End}(A)$,
只需证明 $A$ 是投射 $\operatorname{End}(A)$-模. 事实上 $A$ 是 $\operatorname{End}(A)$ 的直和项.
因为 $A$ 是自由 $R$-模, 故存在 $R$-模同态 $g\colon A\to R$ 使得 $g(r)=r\,(r\in R)$.
考虑映射
$$
    A\mapsto \operatorname{End}(A),
    a\mapsto g(-)a.
$$
它是 $\operatorname{End}(A)$-模同态, 且为投影映射
$$
    \operatorname{End}(A)\to A, f\mapsto f(1)
$$
的截面. 这说明 $A$ 是 $\operatorname{End}(A)$ 的直和项, 从而是投射 $\operatorname{End}(A)$-模.
		
由于 $A$ 投射, $A\to\bar A\overset{\psi}{\to}\bar A'$ 可提升为 $A\otimes_{R}A^{\mathrm{op}}$-模同态 $\psi\colon A\to A'$, 且由[中山引理](中山引理.md), $\psi$ 为满射.

又注意到

- $\psi(a) = \psi(1a) = \psi(1)a$;
- $\psi(a) = \psi(a1) = \phi(a)\psi(1)$.

因此 $\phi(a) \psi(1) = \psi(1) a$.

故存在 $a_0$ 使得 $\psi(a_0)=1$; 由上式知 $\psi(1)$ 可逆, 且 $\phi(a)=\psi(1)a\psi(1)^{-1}$, 即 $\phi$ 为内自同构.

### 概形


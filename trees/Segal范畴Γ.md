---
title: Segal 范畴 Γ
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

## 定义

### 直接定义

Segal 范畴 $\Gamma$ 是[带基点](带基点对象.md)有限集范畴的[反范畴](反范畴.md):
$$
\Gamma := \mathsf{Fin}_*^{\mathrm{op}}.
$$
记 $\mathsf{Fin}_*$ 的对象 $\{*,1,\cdots,n\}$ 在 $\Gamma$ 中的对应物为 $\langle n\rangle$.

范畴 $\Gamma$ 的态射可描述如下: 态射 $\langle n\rangle \to \langle m\rangle$ 将每个 $1\leq i\leq n$ 对应到 $\{1,\cdots,m\}$ 的一个子集, 这些子集互不相交.

### 通过泛性质

称具有[零对象](零对象.md)和有限[积](积(范畴论).md)的范畴为**半加性范畴**.

**定义**. Segal 范畴 $\Gamma$ 是一个对象生成的[自由](自由-遗忘伴随.md)半加性范畴.

## 性质

Segal 范畴 $\Gamma$ 的[零对象](零对象.md)为 $\langle 0\rangle$, [积](积(范畴论).md)为
$$
\langle n\rangle\times \langle m\rangle = \langle n+m\rangle.
$$
特别地,
$$
\langle n\rangle = \langle 1\rangle^{\times n}.
$$
这说明 $\Gamma$ 是一个 [Lawvere 理论](Lawvere理论.md). 事实上, 它正是[带基点对象](带基点对象.md)的 Lawvere 理论, 即任何[积幺半范畴](积幺半范畴.md) $\mathcal C$ 中的带基点对象等同于保持有限积的函子 $\Gamma \to \mathcal C$.

### 张量积

范畴 $\Gamma$ 带有一个张量积 $\otimes\colon \Gamma\times\Gamma \to \Gamma$,
$$
\langle n\rangle\otimes \langle m\rangle = \langle nm\rangle.
$$

它对应带基点有限集的[压缩积](压缩积.md) $\land\colon \mathsf{Fin}_*\times\mathsf{Fin}_* \to \mathsf{Fin}_*$.

这个张量积既不是范畴论积, 也不是范畴论和.

### 与单纯形范畴的关系

[单纯形范畴](单纯形范畴.md) $\Delta$ 到 $\Gamma$ 有一函子, 将对象 $[n]\in\Delta$ 对应到 $\langle n\rangle\in\Gamma$. 详见 [Segal 函子 $\gamma$](Segal函子γ.md).


### 代数模式

范畴 $\Gamma$ 可用于定义 [$\mathbb E_\infty$-代数](交换代数.md)的[代数模式](代数模式.md). 例如 $\mathsf{Ani}$ 中的交换代数等同于 [$\Gamma$-空间](Γ-空间.md)
$$
F\colon \Gamma^{\mathrm{op}} \to\mathsf{Ani},
$$
满足 $F(\langle n\rangle) \simeq F(\langle 1 \rangle)^n$. 这种函子又称为 Segal $\Gamma$-生象. 该函子与函子 $\gamma\colon \Delta \to \Gamma$ 的复合给出[交换代数](交换代数.md)到[结合代数](结合代数.md)的[遗忘](自由-遗忘伴随.md), 沿 $\gamma$ 的左 Kan 扩张给出相应的[自由](自由-遗忘伴随.md)函子.
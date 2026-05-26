---
title: AGKRRV
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

本文是 [AGKRRV](AGKRRV1.md) 的阅读笔记.

## 观念

AGKRRV 的两个主要想法:

1. 定义 "限制变差" 局部系统的叠 $\mathrm{LS}_G^{\text{restr}}$. 研究对称幺半范畴 $\operatorname{QCoh}(\mathrm{LS}_G^{\text{restr}})$ 的作用, 以及其导致的沿 $\mathrm{LS}_G^{\text{restr}}$ 的[谱分解](谱分解.md).
2. 通过[迹猜想](迹猜想.md) (Frobenius 的迹) 联系几何与算术 Langlands 纲领, 即联系[自守层](自守层.md)的范畴与[自守函数](自守函数.md)的空间. 从而前述谱分解给出自守函数空间的谱分解.

## 1. 限制变差局部系统的叠

我们考虑的层语境 $\mathsf{Shv}(X)^{\mathrm{constr}}$ 是以下三者之一:

- **Betti 语境**, $\mathsf{e}$-线性空间层的可构造层范畴;
- **de Rham 语境**, [和乐 D-模](和乐D-模.md)范畴;
- **平展语境**, 可构造 $\overline{\mathbb{Q}}_\ell$-平展层范畴.

定义 $\mathsf{Shv}(X) = \mathsf{Ind}(\mathsf{Shv}(X)^{\mathrm{constr}})$.

定义 $\mathsf{Lisse}(X)^{\heartsuit}\subset\mathsf{Shv}(X)^{\mathrm{constr}}$ 为通常幺半结构下[可对偶](可对偶对象.md)且在通常 t-结构的心中的对象的全子范畴.

记 $\mathsf{QLisse}(X)^{\heartsuit}\subset\mathsf{Shv}(X)$ 为通常 [t-结构](t-结构.md)的心中 $\mathsf{Lisse}(X)^{\heartsuit}$ 的对象的滤余极限构成的全子范畴.



设 $G$ 为连通约化群. 定义预叠
$\mathrm{LocSys}_G^{\text{restr}}(X)$
如下: 对于[测试](探测.md)概形 $S$, 定义其 $S$-点为右 t-正合对称幺半函子
$$
\mathsf{Rep}(G) \to \mathsf{QCoh}(S) \otimes \mathsf{QLisse}(X).
$$

> 直观: 局部系统模叠的一个 $S$-点是一个映射 $S\times X\to \mathbf{B}G$.

**例**. 对于 $X = \mathrm{pt}$, 有 $\mathsf{QLisse}(X) = \mathsf{Vect}$, 从而上述 $S$-点等同于映射 $S\to \mathbf{B}G$, 即 $\mathrm{LocSys}_G^{\text{restr}}(\mathrm{pt}) = \mathbf{B}G$.
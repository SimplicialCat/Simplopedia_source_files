---
title: Hochschild 同调
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

[结合代数](结合代数.md)的 **Hochschild 同调**是其 "沿着流形 $S^1$ 的张量积", 即 $S^1$ 上的[分解同调](分解同调.md).
Hochschild 同调又叫 "[迹](迹.md)", "[余中心](余中心.md)".

[交换代数](交换代数.md)的 Hochschild 同调是其与[生象](生象.md) $S^1$ 的[张量积](张量积.md).

## 定义

### 结合代数

设 $\mathcal C$ 为[对称幺半范畴](对称幺半范畴.md), $A$ 为 $\mathcal C$ 中的[结合代数](结合代数.md). 定义其 **Hochschild 同调**为
$$
\operatorname{HH}_*(A) := A \otimes_{A\otimes A^{\mathrm{op}}} A.
$$
也即 $\operatorname{HH}_*(A)$ 是 $A$ 作为 $(A,A)$-双模的[迹](迹.md).
这个定义的缺陷是它没能反映 Hochschild 同调的 $S^1$-对称性.

另一个定义. 将结合代数 $A$ 视为 $\mathcal C$ 的 [Morita 范畴](Morita范畴.md)中的对象, 其[对偶](可对偶对象.md)为 $A^{\mathrm{op}}$, 从而给出一个取值于 Morita 范畴的 $1$ 维[拓扑场论](拓扑场论.md)
$$
Z_A\colon \mathsf{Bord}_1^{\mathrm{fr}}\to\mathsf{Morita}(\mathcal C),
$$
Hochschild 同调是其在 $S^1$ 上的值:
$$
\operatorname{HH}(A) := Z_A(S^1).
$$

### 结合代数与双模

设 $\mathcal C$ 为[对称幺半范畴](对称幺半范畴.md), $A$ 为 $\mathcal C$ 中的[结合代数](结合代数.md), $M$ 为 $(A,A)$-双模. 定义其 **Hochschild 同调**为
$$
\operatorname{HH}_*(A,M) := A \otimes_{A\otimes A^{\mathrm{op}}} M.
$$
也即 $\operatorname{HH}_*(A,M)$ 是 $M$ 作为 $(A,A)$-双模的[迹](迹.md).

### 交换代数

当 $A$ 为[交换代数](交换代数.md)时,
有
$$
\mathrm{HH}_*(A) =
A\otimes_{A\otimes A}A = \operatorname{colim}_{S^1}^{\mathsf{CAlg}(\mathcal C)} A = A^{\otimes S^1}.
$$
有典范的态射
$$
A \to\mathrm {HH}^*(A),
$$
它是 $A$ 到 $S^1$-作用的[交换代数](交换代数.md)的万有态射, 是[交换代数](交换代数.md)的范畴中 $S^1$ 形状的常值图 $A$ 的余极限, 也是 $A\colon *\to \mathsf {CAlg}(\mathcal C)$ 沿 $*\to \mathbf{B}S^1$ 的[左 Kan 扩张](Kan扩张.md).

而这个余极限 $\operatorname{colim}_{S^1}^{\mathsf{CAlg}(\mathcal C)} A$ 由于 $S^1=*\sqcup_{*\sqcup *}*$, 可计算为
$$
\begin{aligned}
\mathrm {HH}_*(A) &= \operatorname{colim}_* A \otimes_{\operatorname{colim}_{*\sqcup *}A}\operatorname{colim}_* A\\
& = A\otimes_{A\otimes A}A.
\end{aligned}
$$

记 $X = \operatorname{Spec} A$, 那么作为[导出概形](导出概形.md)有
$$
\operatorname{Spec}(\operatorname{HH}_*(A)) = X\times_{X\times X} X = X^{S^1} = \mathcal LX,
$$
即为 $X$ 的[自由环路空间](自由环路空间.md) $\mathcal L X$.

### 范畴

[紧生成范畴](紧生成范畴.md) $\mathcal C$ 的 Hochschild 同调可定义为如下单纯对象的[几何实现](几何实现.md):


## 性质

### 与 K-理论的关系

> THH and TC are in practice computationally useful approximations to K



## 相关概念

[Hochschild 上同调](Hochschild上同调.md)
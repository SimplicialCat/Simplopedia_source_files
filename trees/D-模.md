---
title: D-模
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

D-模是[微分算子环 (层)](微分层.md) 上的模. D-模起源于微分方程, [线性偏微分方程](线性偏微分方程.md)是 D-模的[表现](数学对象的表现.md).

微分算子层 $D_X$ 上的模可以描述微分方程局部的解; 它可以描述一个解沿闭合路径一周的解析延拓与原来不同的现象, 称为[**单值**](单值.md) (monodromy).

我们研究的主要对象是**局部有限表现**的 $D_X$-模, 也即[凝聚](凝聚层.md) $D_X$-模. 函子
$$
\operatorname{Hom}_{D_X}(-,\mathcal O_X)\colon \mathsf {Mod}_{\text{coh}}(D_X) \to \mathsf {Mod}(\mathbb{C}_X),
$$
描述了微分方程组的解; 其[导出函子](导出函子.md) $\operatorname{Ext}^\bullet_{D_X}(-,\mathcal O_X)$ 描述了微分方程的 "高阶解".

### 特征簇

设 $p=q=1$, $R$ 的[特征簇](特征簇.md)是...

## 定义

设 $X$ 是 $\mathbb C$ 上的光滑代数簇. $X$ 上的 D-模是[正则微分算子](正则微分算子.md)层 $D_X$ 上的模. 左 $D_X$-模即带有 $D_X$ 作用的 $\mathcal{O}_X$-模, 等同于线性映射
$$
\nabla\colon D_X \to \operatorname{End}_{\mathbb C}(M),
$$
满足

- $\nabla_{fv}(m)=f\nabla_v(m)$;
- $\nabla_v(fm)=v(f) m + f\nabla_v m$;
- $\nabla_{[v,w]}m=[\nabla_v,\nabla_w]m$.

$X$ 上的 D-模也可视为带有[可积联络](平坦联络.md)的拟凝聚 $\mathcal{O}_X$-模.

## 函子性

与凝聚层类似, 不同代数簇上的 D-模由推出和拉回联系起来.

## 和乐

设 $M$ 为凝聚 $D_X$-模. 若其[特征簇](特征簇.md)满足 $\dim \operatorname{Ch}(M)=\dim X$, 即特征簇的维数取到**最小**可能值, 则称 $M$ 为**和乐** (holonomic) 的.

和乐 $D_X$-模是线性常微分方程在高维复流形的自然推广.

## 例

### 函数层作为 D-模

函数层 $\mathcal O_X$ 是 D-模, 且可表现为
$$
\mathcal O_X \simeq \mathcal D_X / \mathcal D_X T_X.
$$
对于一般的 D-模 $M$, D-模同态 $\mathcal O_X \to M$ 等同于 $M$ 的平坦截面, 即被 $T_X$ 零化的截面.

### 向量丛

设 $E$ 是 $X$ 上带有[可积联络](平坦联络.md) $\nabla$ 的向量丛, 也即局部形如 $\bigoplus_i \mathcal O_U e_i$ 的层.

回忆联络 $\nabla$ 可视为丛映射 $TX\to \operatorname{End}(E)$, 满足

- $\nabla_{av}=a\nabla_v$;
- $\nabla_v(as)=v(a)s+a\nabla_v s$;
- $\nabla_{[v,w]}=[\nabla_v,\nabla_w]$ (称为可积性或平坦性; 见[可积联络](可积联络.md)).

此时左 $D_X$-模结构即由 $v\cdot s = \nabla_v s$ 给出.


### "δ 函数" D-模

对于 $X$ 的闭点 $x$, 有 D-模
$$
\delta_x:= \mathcal D_X / \mathcal D_X\mathfrak m_x\otimes_k\operatorname{det}T_xX.
$$
D-模同态 $\delta_x \to M$ 等同于 $M$ 上被 $\mathfrak m_x$ 零化的截面. 与直线 $\operatorname{det}T_xX$ 作张量积的目的是使得存在典范同构
$$
f_*\delta_x \simeq \delta_{f(x)}.
$$

> $\delta_x$ 是由 $\delta$ 函数和它的各阶导数张成的向量空间.

### 对偶层

对偶层 $\omega = \det \Omega^1$

由于 Lie 导数 $L_v = [\iota_v, d]$, 对于 $\alpha\in\omega$ 有 $L_v\alpha = d \iota_v \alpha$.

对偶层可以把右 D-模变成左 D-模:
$$
D^{\text{op}} = \omega\otimes D \otimes \omega^{-1}
$$

### 摩天大楼 D-模

$p\in X$, 定义
$$
M_p = D_X / D_X ()
$$

## 性质

### 与 de Rham 空间的关系

$X$ 上的 D-模等同于 $X$ 的 [de Rham 空间](deRham空间.md)上的拟凝聚层.

## 相关概念

[D-概形](D-概形.md)
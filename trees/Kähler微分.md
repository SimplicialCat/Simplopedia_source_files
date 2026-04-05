---
title: Kähler 微分
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Kähler 微分是微分几何中的微分 $1$-形式在[代数几何](代数几何.md)中的推广.

## 定义



设 $k$ 为交换环, $K$ 为 $k$-代数, 那么存在 $K$ 出发的万有 $k$-[导子](导子.md) $d_{K/k} \colon K \to \Omega_{K/k}$, 其中 $\Omega_{K/k}$ 称为 Kähler 微分环.

具体地, $\Omega_{K/k}$ 可构造为
$$
 \Omega_{K/k} := (K\otimes_k K)\big/ \big(x\otimes yz\sim ( xy\otimes z + xz\otimes y)\big),
$$
(想象 $x\otimes y$ 为 $xdy$.) 此时映射 $d_{K/k}$ 将 $x\in K$ 对应到 $[1\otimes x]\in \Omega_{K/k}$.

## 性质

由具体的构造可立刻看出 Kähler 微分环的万有性质如下. 对任意 $K$-模 $M$ 与 $k$-导子 $\delta\colon K\to M$, 存在唯一的同态 $\phi\colon \Omega_{K,k}\to M$ 满足 $\delta = \phi\circ d_{K/k}$.

特别地, $K$ 到自身的导子对应于 $\operatorname{Hom}_K(\Omega_{K/k},K)$ 的元素.

$\Omega_{K/k}$ 作为 $K$-模可由 $\{dx\mid x\in K\}$ 生成. 子集 $\{dx\mid x\in K\}$ 构成一个 $k$-线性子空间, 但通常不是整个空间; 其中的元素称为恰当 (exact) 的.

### 函子性

对于 $k$-代数同态 $\phi \colon K\to K'$, 存在映射 $d\phi \colon \Omega_{K/k} \to \Omega_{K'/k}$ 与 $d$ 交换.

这些映射满足链式法则 $d(\phi'\circ\phi)=(d\phi')\circ (d\phi)$.



## 相关概念

[微分层](微分层.md)

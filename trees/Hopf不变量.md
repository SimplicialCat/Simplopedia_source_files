---
title: "Hopf 不变量"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---


[Wiki](https://en.wikipedia.org/wiki/Hopf_invariant)

## 定义

设 $n\geq 2$, $\phi \colon S^{2n-1} \to S^n$ 为连续映射. 考虑胞腔复形
$$
C = S^n \cup_\phi e^{2n},
$$
其胞腔上同调仅 $0,n,2n$ 维非平凡. 记 $\alpha\in H^n(C;\mathbb{Z}), \beta\in H^{2n}(C;\mathbb{Z})$ 为生成元. 设 $\alpha \smile \alpha = h(\phi)\beta$. 称 $h(\phi)$ 为 $\phi$ 的 Hopf 不变量.

## Whitehead 积分公式

给定光滑映射 $\phi\colon S^{2n-1} \to S^n$, 设 $\omega_n$ 为 $S^n$ 的体积形式, $d\omega_n = 0$, 那么存在 $S^{2n-1}$ 上的 $(n-1)$-形式 $\eta$ 使得 $d\eta = \phi^*\omega_n$. 此时 $\phi$ 的 Hopf 不变量等于
$$
\int_{S^{2n-1}} \eta \wedge d \eta.
$$
> 注. 想象 $\eta$ "是" (选取代表元为) 支集在一个纤维上的 $1$ 形式, $d\eta$ "是" 支集在以另一纤维为边界的圆盘上的 $2$-形式, 那么 $\eta \wedge d\eta$ 的积分就是两个纤维的[联结数](联结数.md).

## 性质

$h \colon \pi_{2n-1}(S^n) \to \mathbb{Z}$ 为群同态. 若 $n$ 为奇数, $h$ 是平凡映射 (因为 $\pi_{2n-1}(S^n)$ 是挠群); 若 $n$ 为偶数, 则 $h$ 的像包含 $2$, 因为 [Whitehead 乘积](Whitehead乘积.md) $[\operatorname{id},\operatorname{id}]$ 的 Hopf 不变量是 $2$.

$h(\phi)$ 等于 $\phi$ 的任意两个纤维在 $S^{2n-1}$ 中的[联结数](联结数.md) (linking number).
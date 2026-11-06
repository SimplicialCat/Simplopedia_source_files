---
title: 交换 Hopf 代数胚
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

交换 Hopf 代数胚是[仿射概形](仿射概形.md)范畴中的[群胚](群胚.md)的[代数侧对偶](代数-几何对偶.md)概念.

## 定义

...

### 余模

交换 Hopf 代数胚 $(A,\Gamma)$ 上的**余模**为 $A$-模 $M$, 带有余作用
$$
\eta \colon M \to \Gamma\otimes_A M,
$$
满足
- (余单位律) $M \to \Gamma\otimes_A M \to M = \operatorname{id}_M$;
- (余结合律) $M\to \Gamma\otimes_A \Gamma\otimes_A M$ 的两个映射相等.

余模可以理解为[拟凝聚层](拟凝聚层.md)沿 $\operatorname{Spec}\Gamma\to\operatorname{Spec} A$ 的 [Čech 脉](Čech脉.md)的[下降数据](下降.md).

## 性质

### 与叠的关系

一个交换 Hopf 代数胚 $(A,\Gamma)$ 也给出一个[叠](叠.md) ([代数叠](代数叠.md))
$$
\mathcal M_{(A,\Gamma)}\colon \mathsf {Ring} \to \mathsf {Grpd},
$$
$$
R\mapsto \{\operatorname{Hom}_{\mathsf {Ring}}(\Gamma,R)\rightrightarrows \operatorname{Hom}_{\mathsf {Ring}}(A,R)\}.
$$

交换 Hopf 代数胚 $(A,\Gamma)$ 上的余模即是叠 $\mathcal M_{(A,\Gamma)}$ 上的[拟凝聚层](拟凝聚层.md).

## 例

### 平坦交换环谱

设 $E$ 是满足某种[平坦](平坦环同态.md)条件 (将在下文中说明) 的[交换环谱](E∞-环.md), 则有交换 Hopf 代数胚 $(E_* E, E_*)$, 即 [$\mathsf{Aff}$](仿射概形.md) 中的[群胚对象](群胚对象.md)
$$
\operatorname{Spec}(E_* E) \rightrightarrows \operatorname{Spec}(E_*).
$$

我们解释这一现象. 对任意交换环谱 $E\in\mathsf{CAlg}(\mathsf{Sp})$, 考虑唯一的环同态 $\mathbb S \to E$ 在[反范畴](反范畴.md)中的化身
$$
\operatorname{Spec}(E) \to \operatorname{Spec}(\mathbb S),
$$
其 [Čech 脉](Čech脉.md)为 (谱代数几何意义下) 仿射概形中的余离散[群胚对象](群胚对象.md)
$$
\Delta^{\mathrm{op}} \to \mathsf{CAlg}(\mathsf{Sp})^{\mathrm{op}},
$$
$$
[n]\mapsto\operatorname{Spec}(E)^{\times (n+1)} = \operatorname{Spec}(E^{\land (n+1)}).\,(\star)
$$

我们知道[同伦群](同伦群(稳定同伦论).md)函子
$$
\pi_*\colon (\mathsf{Sp},\land) \to (\mathsf{grAb},\otimes)
$$
是[松对称幺半函子](松幺半函子.md), 从而将[交换代数](交换代数.md)变为交换代数:
$$
\pi_*\colon \mathsf{CAlg}(\mathsf{Sp}) \to \mathsf{CAlg}(\mathsf{grAb}).
$$
因此对 $(\star)$ 作用 $\pi_*$ 即得到 $\mathsf{CAlg}(\mathsf{grAb})^{\mathrm{op}}$ 中的[单纯对象](单纯对象.md)
$$
\Delta^{\mathrm{op}}\to \mathsf{CAlg}(\mathsf{grAb})^{\mathrm{op}},
$$
$$
[n]\mapsto\operatorname{Spec}\pi_* (E^{\land (n+1)}).
$$
要让这个单纯对象构成[群胚对象](群胚对象.md), 需要 Segal 条件. 我们观察其中最简单的一个非平凡条件, 即对应单形 $[2] = [1]\sqcup_{[0]}[1]$ 的 Segal 条件:
$$
\operatorname{Spec}\pi_* (E\land E \land E) \overset{\simeq}{\to} \operatorname{Spec}\pi_* (E\land E)\times_{\operatorname{Spec}\pi_* (E)}\operatorname{Spec}\pi_* (E\land E),
$$
也即
$$
\pi_* (E\land E \land E) \overset{\simeq}{\leftarrow} \pi_* (E\land E)\otimes_{\pi_* (E)}\pi_* (E\land E).
$$
暂记 $F = E \land E$, 那么上述条件可重写为
$$
\pi_* (F \land_E F) \overset{\simeq}{\leftarrow} \pi_* (F)\otimes_{\pi_* (E)}\pi_* (F).\,(\dagger)
$$

**断言**. $E$ 的平坦性保证了 $F\land_E (-)$ 为 [$t$-正合函子](t-结构.md), 从而对任意 $E$-[模](结合代数上的模.md) $X$ 有
$$
\pi_* (F \land_E X) \overset{\simeq}{\leftarrow} \pi_* (F) \otimes_{\pi_* (E)} \pi_* (X),
$$
特别地, 映射 $(\dagger)$ 为同构.


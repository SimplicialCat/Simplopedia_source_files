---
title: Zariski 景, 平展景与平坦景的比较
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

一个概形上可以建立若干种各有特性的[景](景.md), 之间有粗细的关系, 从而其上的[层意象](层意象.md)之间有[几何态射](几何态射.md). 同一个对象在不同景中的化身, 即通过这些几何态射的拉回, 其[上同调](上同调.md)之间有比较函子. 在特殊情况下, 比较函子为同构. 本页面举例说明一些特殊情况.

## 陈述

### 比较函子的建立

记
$$
    f\colon \mathsf{Sh}(X_{\mathrm{fl}})\to \mathsf{Sh}(X_{\mathrm{Zar}})
$$
为[平展意象](平展意象.md)到 [Zariski 意象](Zariski意象.md)的比较映射, 其中

- 右伴随 (前推) 部分 $f_*$ 来自范畴的嵌入 $X_{\mathrm{Zar}}\to X_{\mathrm{fl}}$;
- 左伴随 (拉回) $f^*$ 可由层化定义:
  对于 $F\in\mathsf{Sh}(X_{\mathrm{Zar}})$, $f^*F$ 是 $X_{\mathrm{fl}}$ 上的预层 $U\mapsto \operatorname{colim}_{U\to V\to X}F(V)$ 的层化.

### $\mathbb G_m$ 的比较

**命题** ([Milne](MilneEC.md) III.4.9, [Hilbert 定理 90](Hilbert定理90.md)). 典范的映射
$$
H^1(X_{\mathrm{Zar}},\mathbb G_m) \to H^1(X_{\mathrm{\'et}},\mathbb G_m) \to H^1(X_{\mathrm{fl}},\mathbb G_m)
$$
均为同构.



由于 $f_*$ 将 $\mathbb G_m$ 变为 $\mathbb G_m$. 由 [Leray 谱序列](Leray谱序列.md)
$$
    H^p(X_{\mathrm{Zar}},R^qf_*\mathbb G_m)\Rightarrow H^{p+q}(X_{\mathrm{fl}},\mathbb G_m)
$$
(来自[滤过谱](滤过谱.md) $\Gamma_{X_{\mathrm{Zar}}}(\tau_{\leq\bullet}f_*\mathbb G_m)$), 只需证明
$$
    R^1f_*\mathbb G_m = 0.
$$
其中 $R^1f_*\mathbb G_m$ 是 Zariski 景上的预层 $U\mapsto H^1(U_{\mathrm{fl}},\mathbb G_m)$ 的层化.
所以只需证明如下命题 (我们甚至可以对一般的 $\mathrm{GL}_n$ 证明):

**命题** ([Milne](MilneEC.md) III.4.10). 设 $A$ 为局部环, $U=\operatorname{Spec}A$, 则
$$
H^1(U_{\mathrm{fl}},\mathrm{GL}_n) = 0.
$$

_证明_.
对任意上同调类 $\alpha\in H^1(U_{\mathrm{fl}},\mathrm{GL}_n)$, 存在忠实平坦有限型仿射 $U$-概形 $V=\operatorname{Spec}B$ 以及上圈 $\phi\colon V\times_U V \to \mathrm{GL}_n$ 表现 $\alpha$, 而 $\phi$ 又可视为同构
$$
\begin{aligned}
    B^n\otimes_A B &\simeq B^n \otimes_B (B\otimes_A B) \\
    &\simeq
    (B\otimes_A B)^n
     \overset{\phi}{\to} (B\otimes_A B)^n\\
    &\simeq (B\otimes_A B)\otimes_B B^n \simeq B\otimes_A B^n,
\end{aligned}
$$
这恰好给出了 $B^n$ 下降为 $A$-模的下降数据 (回忆模的忠实平坦下降, [Milne](MilneEC.md) I.2.21). 由下降理论, $B^n$ 来自于平坦有限生成 $A$-模. 但 $A$ 为局部环, 这样的 $A$-模一定是自由 $A$-模. 于是上圈 $\phi$ 上同调等价于平凡的上圈.
$\square$

### $\mathrm{GL}_n$ 的比较

**定理**.
在[概形](概形.md) $X$ 对应的 [Zariski 景](Zariski景.md), [平展景](平展景.md), [平坦景](平坦景.md)上计算同一个群概形 $\mathrm{GL}_n$ (对应的层) 的上同调, 比较映射
$$
H^1(X_{\mathrm{Zar}},\mathrm{GL}_n)\to
H^1(X_{\mathrm{\'et}},\mathrm{GL}_n)\to
H^1(X_{\mathrm{flat}},\mathrm{GL}_n)
$$
均为同构.

特别地, 对于域 $k$, $H^1(\operatorname{Spec}k,\mathbb G_m)=0$. 这是 [Hilbert 定理 90](Hilbert定理90.md).

_证明概要_.

1. 记 $L_n(X_{\mathrm{Zar}})$, $L_n(X_{\mathrm{\'et}})$, $L_n(X_{\mathrm{fl}})$ 分别为 Zariski, 平展和平坦景上局部自由 $n$ 阶 $\mathcal O_X$-模的等价类. 可以证明局部平凡化对应的 [Čech 上圈](非交换Čech上同调.md) 给出了双射
   $$
        L_n(X_{*}) \to H^1(X_{*},\mathrm{GL}_n)\,(*=\mathrm{Zar},\mathrm{\'et},\mathrm{fl}).
    $$
2. 然后证明拉回函子 $M\mapsto M^{\mathrm{fl}}$, $M\mapsto M^{\mathrm{\'et}}$ 给出了双射 $L_n(X_{\mathrm{Zar}}) \to L_n(X_{\mathrm{fl}})$, $L_n(X_{\mathrm{Zar}}) \to L_n(X_{\mathrm{\'et}})$. (拉回函子的具体构造见[平展景](平展景.md).) 需要证明三件事情:

    (a) 平坦 (平展) 局部自由 $\mathcal O_X$-模均形如 $M^{\mathrm{fl}}$, $M$ 为 Zariski 景上的[凝聚](凝聚层.md) $\mathcal O_X$-模.
    
    (b) 设 $M$ 为 Zariski 景上的[凝聚](凝聚层.md) $\mathcal O_X$-模, 若 $M^{\mathrm{fl}}$ 平坦局部自由, 则 $M$ 局部自由.

    (c) 设 $M,N$ 为 Zariski 景上的局部自由 $\mathcal O_X$-模, 则 $M\simeq N$ 当且仅当 $M^{\mathrm{fl}} \simeq N^{\mathrm{fl}}$.

    (a) 的证明本质上是[拟凝聚层的忠实平坦下降](拟凝聚层的忠实平坦下降.md).

    (b) 的证明用到如下观察: 投射模可由[忠实平坦环同态](忠实平坦环同态.md)探测. 设 $A\to B$ 忠实平坦, 若 $B\otimes_A M$ 为投射 $B$-模, 则 $M$ 为投射 $A$-模. 这是因为 $B\otimes_A \operatorname{Hom}_A(M,-) \simeq \operatorname{Hom}_B(B\otimes_A M, B\otimes_A -)$.
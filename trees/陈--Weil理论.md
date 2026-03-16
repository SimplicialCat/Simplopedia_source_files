---
title: "陈--Weil 理论"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

---
alias: 陈--Weil 同态
---

[香蕉空间](https://www.bananaspace.org/wiki/%E8%AE%B2%E4%B9%89:%E7%A4%BA%E6%80%A7%E7%B1%BB/%E9%99%88%E2%80%93Weil_%E7%90%86%E8%AE%BA_(%E4%B8%8A))

陈--Weil 理论由陈省身与 André Weil 在推广 [陈--Gauss--Bonnet 定理](陈--Gauss--Bonnet定理.md)时建立, 其大意是由[曲率形式](曲率.md)构造向量丛的拓扑不变量, 如[陈类](陈类.md).

## 陈--Weil 同态

陈--Weil 同态是 $1$ 维 $G$ 系数[非 Abel 上同调](非Abel上同调.md) (也即 $G$-[主丛](主丛.md)) 到 de Rham 上同调的映射:
$$
\operatorname{char}\colon H^1(X;G) \to \prod H_{dR}^{2n}(X).
$$
因为所有[联络](联络.md)构成的空间可缩, 而 de Rham 上同调是同伦不变量, 所以我们希望陈--Weil 同态不依赖于联络的选取. (?)

### 不变多项式

矩阵空间 $M_n(\mathbb C)$ 上的[不变多项式](不变多项式.md)是指共轭不变 (即不依赖于基的选取) 的多项式: $P(T^{-1}AT)=P(A)$, 例如 $\det$ 与 $\operatorname{tr}$. 事实上, 矩阵的不变多项式必然是 $\operatorname{tr}A,\operatorname{tr}(A^2),\cdots,\operatorname{tr}(A^n)$ 的多项式 (形式上是特征值的对称多项式).

**例**. 给定向量丛 $E$ 上[联络](联络.md) $\nabla$ 的[曲率形式](曲率形式.md) $\Omega$ (它是 $\operatorname{End}(E)$-值 $2$-形式, 在**局部上**可视为 $2$-形式构成的矩阵), 以及 $M_n(\mathbb C)$ 上的不变多项式 $P$, 我们可以定义 $P(\Omega)$.

**引理**. 对任意不变多项式 $P$, $P(\Omega)$ 是闭形式.

**证明**. 由[第二 Bianchi 恒等式](第二Bianchi恒等式.md), $d\Omega^k =[\Omega^k,\omega]$.
$$
d(\operatorname{tr}(\Omega^k))= \operatorname{tr}(d\Omega^k)=\operatorname{tr [\Omega^k,\omega]}=0.
$$

**命题.** 上同调类 $[P(\Omega)]$ 不依赖于联络的选取.

不变多项式来自 [Weil 代数](Weil代数.md).

## 主丛上的联络

[Lie 代数](Lie代数.md) $\mathfrak g$ 上的不变多项式是指 $\mathfrak g$ 上 $\operatorname{ad}$-不变的多线性型.

设 $M$ 上有 $G$-主丛 $P$ 及其联络 $\gamma$, [曲率](曲率.md) $R$, 则陈--Weil 映射
$$
\left( \wedge^{2n} \mathfrak g^*\right)^{\mathfrak g}
\overset{\wedge^n R}{\longrightarrow} \Omega^{2n}(M)
$$
将不变多项式对应到 $M$ 上的微分形式.

**李思老师的评注**. $G$-主丛的联络可理解为映射 $X_{dR}=(X,\Omega_X^\bullet) \to B\mathfrak g=(*, C^\bullet(\mathfrak g))$, 其中 $B\mathfrak g$ 是一个超流形, $C^\bullet(\mathfrak g)$ 是 Chevalley--Eilenberg 上链. 联络的平坦性说明这个映射是 dg-映射, 从而陈--Weil 同态将 $B\mathfrak g$ 上的上同调类拉回到 $M$ 上.

## 基本构造

设 $G$ 为 Lie 群, 记 $I^k(G)$ 为 $\operatorname{Sym}^k\mathfrak g^*$ 中 $\operatorname{Ad}$-不变元素的子空间. 其上有继承自 $\operatorname{Sym}^k\mathfrak g^*$ 的交换代数结构. 由 [Chevalley 同构](Chevalley同构.md), $I^k(G)$ 同构于

设 $P\to M$ 为 $G$-[主丛](主丛.md), 考虑关联的 Lie 代数丛 $P\times_{\operatorname{Ad}}\mathfrak g$. 若 $f\in I^k(G)$ 为不变多项式, 则对该丛的 $k$ 个截面 $s_1,\cdots,s_k$, 存在 $M$ 上良定义的函数 $f(s_1,\cdots,s_k)$.

一般地, 设 $s_i$ 是 $P\times_{\operatorname{Ad}}\mathfrak g\otimes E_i$ 的截面 ($1\leq i \leq k$), 则 $f(s_1,\cdots,s_k)$ 是 $E_1\otimes\cdots\otimes E_k$ 的截面.

## 证明

### 第一陈类

**定理**. 设 $E\to M$ 是光滑复线丛, 带有联络 $\nabla$ 和[曲率形式](曲率形式.md) $\Omega$, 则
$$
c_1(E)=\frac{1}{2\pi i}[\Omega].
$$

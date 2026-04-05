---
title: "Bismut 超联络"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


设 $S$ 是紧流形, $\pi\colon W\to S$ 是纤维丛, 纤维为紧可定向流形 $Z$.

记 $TZ=\ker \pi_*$ 为相对切丛, 选取水平切丛 $T^HW$ 使得 $TW= T^HW \oplus TZ$. 记 $P^{TZ}$ 为 $TW$ 到 $TZ$ 的投影.

设 $g^{TS},g^{TZ}$ 分别为 $TZ$, $TS$ 上的 Riemann 度量, 定义 $TW$ 上的 Riemann 度量
$$
g^{TW} := \pi^* g^{TS} \oplus g^{TZ}.
$$
考虑 [Levi-Civita 联络](Levi-Civita联络.md) $\nabla^{TW}$ 和 $\nabla^{TS}$.

定义
$$
\nabla^{TZ} = P^{TZ} \nabla^{TW} P^{TZ},
$$
那么 $\nabla^{TZ}$ 保持 $g^{TZ}$, 且在每个纤维 $Z_b$ 上 $\nabla^{TZ}$ 为 $Z_b$ 上的 Levi-Civita 联络.
定义
$$
^0\nabla^{TW}:= \pi^* \nabla^{TS} \oplus \nabla^{TZ}.
$$
$^0\nabla^{TW}$ 保持度量, 但不是 Levi-Civita 联络, 也即有[挠](挠.md). 记
$$
T(A,B)= {^0\nabla_A^{TW}} B - {^0\nabla_B^{TW}} A - [A,B].
$$

记 $\mathsf S = \nabla^{TW}-{^0\nabla^{TW}}$ 为两个联络的差.

设 $(\mathcal E,h^{\mathcal E},\nabla^{\mathcal E})$ 为 Clifford 代数丛 $\mathrm{Cl}(TZ)$ 的模. 设 $\{e_i\}$ 为 $TZ$ 的标准正交标架, 定义 [Dirac 算子](Dirac算子.md)
$$
D^Z = \sum_i c(e_i) \nabla_{e_i}^{\mathcal E}
$$
研究 $\ker D_+$ 与 $\ker D_-$ 在 [K-群 (拓扑)](K-群(拓扑).md)中的差.
$$
\operatorname{Ind}(D^Z) = \ker D_+ - \ker D_- \in K^0(S).
$$

**定理** (族指标定理, family index theorem)
$$
\operatorname{ch}(\operatorname{Ind}(D^Z)) = \int_Z \widehat A (TZ) \operatorname{ch}(\mathcal E / S).
$$

Bismut 的想法: 考虑 $S$ 上的无穷维向量丛 $C^\infty (Z,\mathcal E)$ 的截面空间
$$
\mathscr E = C^\infty (S,C^\infty (Z,\mathcal E)).
$$
定义 $C^\infty (Z,\mathcal E)$ 上的 Riemann 度量: 对 $b$ 处的两个向量 $s_1,s_2\in C^\infty (Z_b,\mathcal E)$,
$$
\langle  s_1,s_2\rangle := \int_{Z_b} \langle  s_1(x), s_2(x)\rangle_{\mathcal E} dV_{Z}.
$$

定义 $C^\infty (Z,\mathcal E)$ 上的联络如下. 对 $h\in\mathscr E$ 以及 $S$ 上的向量场 $U$,
$$
\nabla^{\mathscr E}_U h = \nabla_{U^H}^{\mathcal E} h,
$$
其中 $U^H$ 表示 $U$ 在 $W$ 上的唯一水平提升.
$$
\nabla_U^{\mathscr E,U} := \nabla_U^{\mathscr E} - \frac{1}{2} \langle \mathsf S(e_i)e_i,U \rangle,
$$
则联络 $\nabla_U^{\mathscr E,H}$ 保持度量.

令
$$
c(T):= \frac{1}{2} c(T (f_p^H, f_q^H)) f^p \wedge f^q \wedge,
$$
其中 $T$ 是 $^0\nabla^{TW}$ 的挠, $\{f_p\}$ 为 $TS$ 的正交标架, $\{f^p\}$ 是其对偶.

可以证明 $T(f_p^H, f_q^H) \in TZ$. 联络 $\nabla^{\mathscr E,H}$ 可表示为 $\sum_p f^p \wedge \nabla_{f_p}^{\mathscr E,H}$.

定义 **Bismut 超联络** $B\colon C^\infty (S,\mathscr E)\to C^\infty (S,  \wedge T^*S \otimes \mathscr E)$,
$$
B = D^Z + \nabla^{\mathscr E,U} -\frac{1}{4}c(T).
$$
## 性质

Bismut 超联络的平方 $B^2$ 是沿着纤维的 $2$ 阶椭圆算子.

## 伸缩

考虑伸缩变换 (rescaling)
$$
\delta_t \colon \wedge T^*S \otimes \mathscr E \to\wedge T^*S\otimes \mathscr E,\quad
\delta_t(\alpha)=t^{-k/2}\alpha\,(\alpha\in\wedge^k T^*S).
$$
定义
$$
B_t =\sqrt t \delta_t B \delta_t^{-1} =\sqrt t D^Z + \nabla^{\mathscr E,U} - \frac{1}{4\sqrt t}c(T),
$$

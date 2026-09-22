---
title: 偏屈层笔记
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

偏屈层始于奇性的代数簇的几何. 常值层的上同调不能正确描述这种几何对象; 人们最初发明[相交上同调](相交上同调.md)描述它们.

## 第 1 讲

### Poincaré 对偶

设 $X$ 为 $d$ 维光滑复射影代数簇,
$$
H^r\times H^{2d-r}\to H^{2d}(X,\mathbb{Q}) \to \mathbb{Q}
$$
为完美配对.

对于带奇点的代数簇如结曲线 (nodal curve) $C$, 记 $\widetilde C \simeq \mathbb P^1$ 为其正规化, 映射
$$
\nu\colon \widetilde C \to C
$$
相当于粘合 $\mathbb P^1$ 的两点. 在这两点之外, 映射为同构. 我们尝试计算 $C$ 的上同调.
$$
H^r(C,\mathbb{Q}) = \begin{cases}
    \mathbb{Q} & r = 0,1,2\\
    0 & \text{其它.}
\end{cases}
$$
可见 $H^1$ 上的配对退化 (因为杯积分次交换, 在 $H^1$ 上反交换), 没有完美配对.

为了找一个层尽可能接近常值层, 同时修复 Poincaré 对偶, 考虑
$$
\mathcal N = \nu_* \underline{\mathbb{Q}}_{\widetilde C},
$$
直观上这个层 "记住了结点的两支".

**引理**. 有短正合列
$$
\underline{\mathbb{Q}}_C \to \mathcal N \to i_*\mathbb{Q},
$$
映射 $\mathcal N \to i_*\mathbb{Q}$ 取结点的两支的差.

暂且定义 "IC 层"
$$
\mathrm{IC}_C := \mathcal N[1]
$$
以及 (按照历史记号)
$$
\mathrm{IH}^r(C,\mathbb{Q}) = H^{r-1}(C,\mathrm{IC}_C) = H^r(C,\mathcal N).
$$

取长正合列给出
$$
\mathrm{IH}^r(C,\mathbb{Q}) = \begin{cases}
    \mathbb{Q} & r = 0,2\\
    0 & \text{其它}.
\end{cases}
$$

**定义**. 对于光滑的 $X$,
$$
\mathrm{IC}_X := \underline{\mathbb{Q}}_X [\operatorname{dim}X].
$$

一般的 $X$ 的 IC 层是奇点消解的常值层的 (导出) 推前.

### 可构造层与六函子

回忆, Abel 范畴 $\mathcal A$ 的[导出范畴](导出范畴.md) $D(\mathcal A)$ 是[链复形](链复形.md)的范畴的[局部化](局部化(范畴论).md), 使得链复形之间的拟同构 (诱导上同调之间的同构的映射) 变为导出范畴中的同构. 

$D(\mathcal A)$ 是个[稳定 $\infty$-范畴](稳定无穷范畴.md), 其中有一些关键的三角 ([纤维列](纤维列.md)). 三角给出上同调的长正合列.

稳定范畴之间的**正合函子**是保持这些特殊三角的函子.

Abel 范畴之间的正合函子 $F\colon \mathcal A \to \mathcal A'$ 给出导出范畴之间的正合函子 $F\colon D(\mathcal A) \to D(\mathcal A')$.

不仅如此, Abel 范畴之间的**左**正合函子 $F\colon \mathcal A \to \mathcal A'$ 给出导出范畴之间的正合函子[^1] (称为**右导出函子**) $RF\colon D(\mathcal A) \to D(\mathcal A')$. 通过这个函子再取上同调就得到传统的导出函子 $R^d F$. Abel 范畴之间的**右**正合函子 $F\colon \mathcal A \to \mathcal A'$ 给出导出范畴之间的正合函子 (称为**左导出函子**) $LF\colon D(\mathcal A) \to D(\mathcal A')$. 但在导出范畴语境中, 我们常常直接用 $F$ 的符号表示导出函子 (不写 $R,L$), 因为它是唯一合理的选择.

[^1]: 这里忽略了一些有限上同调振幅的限制条件, 或者实际上考虑的是有界导出范畴.

稳定范畴 $\mathcal D$ 的关键性质是移位 $[1]\colon \mathcal D \to \mathcal D$ 是个等价. 对任意三角 $M\to N \to L$, 可旋转得到三角 $N \to L \to M[1]$, $L\to M[1]\to N[1]$ 等等.

回到正题. [可构造层](可构造层.md)是可由有限步基本操作得到的层, 具体地, 称 $X$ 上的层 $F$ **可构造**, 意思是存在 $X$ 的有限分层 $X = \bigsqcup_\alpha S_\alpha$, 每个 $S_\alpha$ 为子簇, 且 $F|_{S_\alpha}$ 为 $\mathbb{Q}$-局部系统 (局部常值的 $\mathbb{Q}$-线性空间层). 记
$$
D_c^b (X,\mathbb{Q}) \subset D(\mathsf{Shv}(X))
$$
为上同调可构造且有界的对象构成的全子范畴. 这是我们的主要工作范畴, 我们要构造的奇性代数簇 $X$ 上的 IC 层就是其中的对象.

**记号**. $f_*^{\heartsuit}\colon \mathsf{Shv}_c(X) \to \mathsf{Shv}_c(Y)$ 为可构造层的推前, $f_*\colon D_c^b(X) \to D_c^b(Y)$ 为其导出函子.

对于映射 $f\colon X \to Y$ 有三对伴随 ([六函子](六函子.md)):

- $f^* \dashv f_*$
- $f_! \dashv f^!$
- ${(-\otimes K)} \dashv {\operatorname{Hom}(K,-)}$.

"叹号推前" $f_!$ 是 $f_!^\heartsuit\colon \mathsf{Shv}_c(X) \to \mathsf{Shv}_c(Y)$ 的导出函子. 在拓扑空间中, $f_!^\heartsuit$ 的一个定义是: 对开集 $V\subset Y$, $(f_!^\heartsuit M)(V) = \{s\in M(f^{-1}(V))\mid\operatorname{supp}s \text{ 紧合}\}$. 特别地, 对于 $Y = \mathrm{pt}$ 的情形, $f_!^\heartsuit M = \Gamma_c (X;M)$ 是紧支集截面.

或许两个更有用的一般性质是

- 若 $f$ 为[开嵌入](开嵌入.md), 则 $f^! \simeq f^*$;
- 若 $f$ [紧合](紧合映射.md), 则 $f_! \simeq f_*$.

我们将视上述结构为黑箱.

**例**. $X = \mathbb A^1$, $X(\mathbb{C}) = \mathbb{C}$, 此时

- $p_*\underline{\mathbb{Q}} = \Gamma(X,\underline{\mathbb{Q}}) = \mathbb{Q}$,
- $p_!\underline{\mathbb{Q}} =\Gamma_c(X,\underline{\mathbb{Q}})=\mathbb{Q}[-2].$

提示: 考虑紧化 $j\colon X \to \overline{X} = \mathbb P^1$, 记 $i\colon \{\infty\} \to \mathbb P^1$ 为其补闭集, 则有三角
$$
j_! \underline{\mathbb{Q}}_X \to \underline{\mathbb{Q}}_{\overline{X}} \to i_*\mathbb{Q}.
$$

### Verdier 对偶

定义 $X$ 的**对偶复形**为
$$
\omega_X := p^!\mathbb{Q}.
$$
考虑函子
$$
\mathbb D_X \colon M\mapsto\operatorname{Hom}(M,\omega_X).
$$

**定理** ([Verdier 对偶](Poincaré--Verdier对偶.md)). $\mathbb D_X\colon D_c^b(X)^{\mathrm{op}} \to D_c^b(X)$ 为等价.

**例**. $X = \mathrm{pt}$ 时, $\mathbb D M = M^*$ (线性对偶).

**命题**.

- $\mathbb D$ 为正合函子;
- $\mathbb D\circ\mathbb D = \mathrm{id}$;
- $\mathbb D \circ [1] = [-1] \circ \mathbb D$;
- $\mathbb D \underline{\mathbb{Q}}_X = \omega_X$;
- 对于 $f\colon X\to Y$,
  - $\mathbb D_Y f_! = f_* \mathbb D_X$,
  - $\mathbb D f^! = f^* \mathbb D$,
- 若 $X$ 为 $d$ 维光滑代数簇, 则 $\omega_X = \underline{\mathbb{Q}}_X [2d]$.
- (Poincaré 对偶) 设 $X$ 光滑紧合, 那么 $\Gamma (X,\underline{\mathbb{Q}})^*=\Gamma_c(\mathbb D_X \underline{\mathbb{Q}}) = \Gamma(\mathbb{Q}[2d])$. (因此 Verdier 对偶可视为相对 Poincaré 对偶.)

我们将说明
$$
\mathbb D \mathrm{IC}_X = \mathrm{IC}_X.
$$

对于点 $x\in X$, 称 $i_x^*$ 为[茎](茎.md), $i_x^!$ 为余茎 (costalk). 特殊三角可由所有点处的茎探测.

余茎的一个计算方法是
$$
H^r(i_x^! \underline{\mathbb{Q}}_X) = H^r(B, B\setminus\{x\},\mathbb{Q}).
$$

考虑映射 $j\colon \mathbb A^1 \setminus 0 \to \mathbb A^1$, $i\colon 0\to\mathbb A^1$. 有自然映射
$$
j_! \to j_*
$$


**定理** ([基变换](基变换.md)). 对于拉回图

$$
\begin{CD}
X' @>{f'}>> Y' \\
@V{p}VV @VV{q}V \\
X @>>{f}> Y
\end{CD}
$$

有
$$
q^! f_* \simeq (f')_* p^!,
$$
$$
q^* f_! \simeq (f')_! p^*.
$$

我们将以 $j_!$ 与 $j_*$ 之间的一种操作 $j_{!*}$ 来定义 $\mathrm{IC}$.

---


**习题**. $\mathbb A^1 \setminus 0$ 上的 $\mathbb{Q}$-局部系统 $\mathcal L$ 等同于有限维 $\mathbb{Q}$-线性空间 $V$ 带一个自同构 $T$. 证明
$$
i^*j_* \mathcal L = [V \overset{T-1}{\to} V].
$$

*解答* (我的尝试, 不一定对 / 好).
$$
\begin{aligned}
i^*j_*\mathcal L &= \operatorname{colim}_{0\in U} \Gamma(U,j_*\mathcal L)\\
&=\operatorname{colim}_{0\in U}\Gamma(U\setminus 0, \mathcal L).
\end{aligned}
$$
考虑 $U$ 为以 $0$ 为中心的圆盘, 将 $U \setminus 0$ 写成两个可缩开集 $U_1, U_2$ 的并, 满足交集 $U_{12}=U_1\times_{U_0} U_2$ 为两个可缩分支, 那么 (假设 $D(-)$ 的下降)
$$
D(U\setminus 0) \simeq D(U_1)\times_{D(U_{12})} D(U_2),
$$
$D(U \setminus 0)$ 的一个对象等同于三元组 $(F_1\in D(U_1),F_2\in D(U_2),\phi\colon F_1|_{U_{12}}\simeq F_2|_{U_{12}})$. 那么 $\mathcal L$ 对应 $(V,V,(\mathrm{id},T)\colon V\oplus V\simeq V\oplus V)$, 常值层 $\mathbb{Q}_{U\setminus 0}$ 对应 $(\mathbb{Q},\mathbb{Q},\mathrm{id})$.
$$
\begin{aligned}
\Gamma(U\setminus 0,\mathcal L)
&=\operatorname{Hom}_{U\setminus 0}(\mathbb{Q}_{U\setminus 0},\mathcal L)\\
&=\operatorname{Hom}_{U_1}(\mathbb{Q}_{U_1},\mathcal L)\times_{\operatorname{Hom}_{U_{12}}(\mathbb{Q}_{U_{12}},\mathcal L)}\operatorname{Hom}_{U_2}(\mathbb{Q}_{U_2},\mathcal L)\\
&= V\times_{V\oplus V} V \\&= \operatorname{fib}((\mathrm{id},T)\colon V\oplus V \to V\oplus V)\\&=\operatorname{fib}(T-\mathrm{id}\colon V\to V).
\end{aligned}
$$

---

## 第 2 讲

设 $X$ 具有分层 $X = \bigsqcup S_\alpha$, 且 $\mathcal F\in D^b_c(X)$ 逐层局部常值. 我们将定义 $D^b_c(X)$ 上的可构造 [$t$-结构](t-结构.md), 使得

- $\mathcal F\in D(X)^{\leq 0}$ 当且仅当 $r > -\operatorname{dim}S_\alpha$ 时 $H^r(\mathcal F|^{*}_{S_\alpha}) =0$;
- $\mathcal F\in D(X)^{\geq 0}$ 当且仅当 $r < -\operatorname{dim}S_\alpha$ 时 $H^r(\mathcal F|^{!}_{S_\alpha}) =0$.

(我们采用上同调指标.)


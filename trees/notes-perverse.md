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



## 第 2 讲

设 $X$ 具有分层 $X = \bigsqcup S_\alpha$, 且 $\mathcal F\in D^b_c(X)$ 逐层局部常值. 我们将定义 $D^b_c(X)$ 上的可构造 [$t$-结构](t-结构.md) ([偏屈 $t$-结构](偏屈t-结构.md)), 使得

- $\mathcal F\in D(X)^{\leq 0}$ 当且仅当 $r > -\operatorname{dim}S_\alpha$ 时 $H^r(\mathcal F|^{*}_{S_\alpha}) =0$;
- $\mathcal F\in D(X)^{\geq 0}$ 当且仅当 $r < -\operatorname{dim}S_\alpha$ 时 $H^r(\mathcal F|^{!}_{S_\alpha}) =0$.

(我们采用上同调指标.)

本讲内容已经记载在 [$t$-结构](t-结构.md), [粘 $t$-结构](粘t-结构.md)等页面.

## 第 3 讲

考虑两层的开闭分解
$$
i\colon U\subset X \hookleftarrow Z \colon j,
$$
伴随
$$
(i^*\dashv i_*\dashv i^!)\colon 
D_c^b (Z)
\begin{aligned}
&\overset{i^*}{\leftarrow}\\
&\overset{i_*}{\rightarrow}\\
&\overset{i^!}{\leftarrow}
\end{aligned}\,
D_c^b(X)
\begin{aligned}
&\overset{j_!}{\leftarrow}\\
&\overset{j^*}{\rightarrow}\\
&\overset{j_*}{\leftarrow}
\end{aligned}\,
D_c^b(U) \colon (j_!\dashv j^*\dashv j_*)
$$
给出如下三角.
$$
j_! j^* F \to F\to i_* i^* F
$$
$$
i_* i^! F \to F \to j_* j^* F
$$

换言之,
$$
F = \operatorname{fib}(j_* F_U \to i_* F_Z [1])
$$

一般地, 要定义 $X$ 上关于指定分层 $S$ 的偏屈 $t$-结构, 只需定义各层 $D^b_S(S_\alpha)$ 上的 $t$-结构 (平移通常 $t$-结构使得 $\underline{\mathbb{Q}}[\operatorname{dim}S_\alpha] \in \heartsuit$).

然后老师详细解释了粘 $t$-结构. 详见[粘 $t$-结构](粘t-结构.md).

设 $S$ 为光滑代数簇, 配备平凡分层 $\mathcal S_{\mathrm{triv}}$ (只有一层).

由定义, $D^b_{\mathcal S_{\mathrm{triv}}} (S) = D^b_{\mathrm{loc}}(S)$. 注意它不等于它的心 (普通局部系统的 Abel 范畴 $\mathsf{LS}(S)$) 的导出范畴. 例如当 $S$ 单连通时, 局部系统平凡, 但 $D^b_{\mathrm{loc}}(S)$ 包含了 $S$ 的所有[上同调](上同调.md)的信息.

定义偏屈 $t$-结构满足
$$
D^b_{\mathcal{S}_{\mathrm{triv}}}(S)^{p,\leq 0} = D^b_{\mathcal S_{\mathrm{triv}}}(S)^{\leq 0} [\operatorname{dim}S].
$$

一般地, 设 $X$ 有分层结构 $\mathcal S \colon X = \bigcup_\alpha S_\alpha$.

**定理**. 通过[粘 $t$-结构](粘t-结构.md)得到的 $D^b_{\mathcal S}(X)$ 上的[偏屈 $t$-结构](偏屈t-结构.md)满足
$$
D^b_{\mathcal S}(X)^{p,\leq 0} = \{
    F\mid H^r(S_\alpha^*F) = 0\,\forall r>{-{\operatorname{dim}S_\alpha}}
\},
$$
$$
D^b_{\mathcal S}(X)^{p,\geq 0} = \{
    F\mid H^r(S_\alpha^! F) = 0\,\forall r<{-{\operatorname{dim}S_\alpha}}
\}.
$$
其中 $H^r$ 是对于普通 $t$-结构的上同调.
条件也可以对偏屈 $t$-结构的上同调表述为
$$
H^{p,r}(S_\alpha^* F) = 0 \,\forall r > 0.
$$

记 $\mathsf{Perv}_{\mathcal S}(X) := D^b_{\mathcal S}(X)^{\heartsuit}$.

若分层 $\mathcal S'$ 是 $\mathcal S$ 的细化, 则
$$
D_{\mathcal S}^b(X) \subset D_{\mathcal S'}^b (X),
$$

**习题**. 证明上述包含中 $(p,\leq 0),(p,\geq 0)$ 部分均相容:
$$
D^b_{\mathcal S}(X)^{p,\leq 0} = D^b_{\mathcal S'}(X)^{p,\leq 0} \cap D^b_{\mathcal S}(X).
$$
提示: 若 $f\colon T\to S$ 为光滑代数簇的映射, 则 $f^*(\mathsf{LS}_S)\subset\mathsf{LS}_T$, $f^*(\mathsf{Perv}(S))[\operatorname{dim}_T - \operatorname{dim}_S]\subset\mathsf{Perv}(T)$.

**习题**. $\mathbb D (\mathsf{Perv}(X)) = \mathsf{Perv}(X)$.

**例**. 考虑 $X=\mathbb A^1$, $Z=\mathrm{pt}$.

- $\mathrm{IC}_X = \underline{\mathbb{Q}}[1]$.
- $i_* i^! \underline{\mathbb{Q}}\to \underline{\mathbb{Q}}\to j_* j^*\underline{\mathbb{Q}}$
- $j_! j^* \underline{\mathbb{Q}} \to \underline{\mathbb{Q}} \to i_* i^* \underline{\mathbb{Q}}$ (通常 $t$-结构的心中的正合列)
- 平移后旋转得到心中的正合列 $i_*\mathbb{Q}\to j_! \mathrm{IC}_U \to \mathrm{IC}_X$.
- $j_!\mathrm{IC}_U\to \mathrm{IC}_X\to j_*\mathrm{IC}_U$ 恰好是 $j_!\mathrm{IC}_U\to j_*\mathrm{IC}_U$ 的满-单分解. (一般地, 若 $F^R$ 全忠实则有自然变换 $F^L \to F^R$, 来自 $\mathrm{id} = FF^R$.)

### IC 延拓
记
$$
j_!^{\heartsuit} = \tau^{\geq 0} \circ j_!,
$$
$$
j_*^{\heartsuit} = \tau^{\leq 0} \circ j_*.
$$
自然变换 $j_! \to j_*$ 给出心中的自然变换 $j_!^{\heartsuit} \to j_*^{\heartsuit}$. (一般地, 右 $t$-正合函子到左 $t$-正合函子的自然变换自动给出心中的自然变换.) 这个自然变换的像称为**中间延拓** (intermediate extension) $j_{! *}$, 由 Goresky–MacPherson 定义.

**命题**. $j_{! *}$ 为全忠实函子.

**引理**. 设 $F\in\mathsf{Perv}(U)$. 则 $j_{! *}F$ 为带有如下结构的唯一对象 $K$:

- $j^* K \simeq F$;
- $K$ 没有非平凡的支在 $Z = X \setminus U$ 上的子对象或商对象.

**命题-定义**.
$$
\mathrm{IC}_X = j_{! *}\mathrm{IC}_U.
$$
这意味着上式右端不依赖于光滑开集 $U$ 的选取.

## 第 4 讲 (2026-10-13)

上回定义了 $D^b_c(X)$ 上的偏屈 $t$-结构, 约化到开闭分解 $j\colon U\subset X \hookleftarrow Y\colon i$ 的情形, 使得 $j^* = j^!$ 与 $i_! = i_*$ 都是 $t$-正合函子.

我们还定义了 $!*$-延拓 $j_{! *}\colon \mathsf{Perv}(U) \to \mathsf{Perv}(X)$, $j_{! *} \mathcal F$ 是 $\mathcal F$ 唯一的没有支在 $Y$ 上的子/商的偏屈延拓.

**命题**. 对于 $\mathcal M \in\mathsf{Perv}(X)$, 如下条件等价:

- $M \simeq j_{! *} (j^* M)$;
- 对任意 $\mathcal N\in\mathsf{Perv}(Y)$, $\operatorname{Hom}(\mathcal M,\mathcal N) = 0$;
- $H^{p,=0}(i^*\mathcal M)$, $H^{p,=0}(i^!\mathcal M)$ 平凡;
- $i^* \mathcal M \in D^b_c (Y) ^{p,\leq -1}$, $i^!\mathcal M \in D^b_c (Y)^{p,\geq 1}$.

**推论**. $\mathbb D j_{! *} \simeq j_{! *} \mathbb D$.

**命题**. 对于一连串包含 $j_1\colon V\subset U$, $j_2\colon U\subset X$, $! *$-延拓与复合相容: $(j_2)_{! *} (j_1)_{! *} = (j_2 j_1)_{! *}$.

思路是证明 $(j_2)_{! *} (j_1)_{! *} \mathcal M$ 没有支在 $X\setminus V$ 上的非平凡子/商.

**命题**. $j_{! *}$ 保持单射和满射.

*证明*. 设 $\mathcal M_1 \to \mathcal M_2$ 是 $\mathsf{Perv}(U)$ 中的单射. 令 $K = \ker (j_{! *}\mathcal M_1 \to j_{! *} \mathcal M_2)$.
对正合列 $K \to j_{! *}\mathcal M_1 \to j_{! *} \mathcal M_2$
作用正合函子 $j^*$,
得到 $j^* K = 0$.
这意味着 $K$ 支于闭部分 $Y$. 由 $j_{! *}$ 的性质, $K = 0$.
满射的证明是对偶的.

**注**. $j_{! *}$ 不是正合函子 (不保持短正合列的中间项).

我们来仔细讨论一个反例. 令 $X = \mathbb A^1$, $U = \mathbb A^1 \setminus 0$, $Y = \{0\}$.

回忆之前的习题, $U$ 上的局部系统 $\mathcal L$ 等同于一个线性空间 $V$ 带有一个自同态 (单值算子) $T$; 偏屈层 $\mathcal L [1]$ 满足 $i^* j_*^{\heartsuit} (\mathcal L [1]) = \ker (T-1) [1]$; 对偶地 $i^! j_!^{\heartsuit} (\mathcal L [1]) = \operatorname{coker} (T-1) [-1]$.

$j_{! *} (\mathcal L [1])$
是 $j_* \mathcal L$ 的截断:
$j_{! *} (\mathcal L [1]) \simeq (j_*^{\heartsuit}) [1]$.

考虑常值局部系统 $\underline{\mathbb{Q}}$ 之间的非平凡扩张 (Jordan 块 $\begin{pmatrix}1 & 1 \\ 0 & 1\end{pmatrix}$), 正合列 $\underline{\mathbb{Q}} \to \mathcal L \to \underline{\mathbb{Q}}$ 不被 $j_*^{\heartsuit}$ 保持 ($\mathcal L$ 的整体截面是一维的).

**定义**. 对于局部闭嵌入 $Y \overset{j}{\subset} \overline{Y} \overset{i}{\hookrightarrow} X$ (其中 $Y$ 光滑), 定义
$$
\mathrm{IC}_X(\mathcal L) = i_* j_{! *} (\mathcal L [\dim Y]).
$$

**命题**. 对于稠密开集 $f\colon U\subset Y$,
$f_{! *} (\mathcal L|_U) [\dim Y] = \mathcal L [\dim Y]$;
进而 $\mathrm{IC}_X (\mathcal L) = \mathrm{IC}_X (\mathcal L|_{U})$. (上同调振幅估计, 使用 $\dim (Y\setminus U) < \dim Y$)

对于稠密开集 $U\subset X$,
$$
\mathrm{IC}_X = \mathrm{IC}_X (\underline{\mathbb{Q}}_U).
$$

**习题**. 对结曲线的正规化 $\pi\colon \widetilde C \to C$,
$$
\mathrm{IC}_C = \pi_* \mathrm{IC}_{\widetilde C}.
$$

下面我们说明 $\mathsf{Perv}(X)$ 的所有对象都可由 $\mathrm{IC}_X(\mathcal L)$ 经过有限次扩张得到.

**引理**. 设 $X$ 光滑, 连通, $\mathcal M \in \mathsf{Perv}(X)$ 局部常值 (即所有上同调局部常值), 则 $\mathcal M = \mathcal L [\dim X]$.

**引理**. 设 $X$ 光滑, 连通, $U\subset X$ 为稠密开集, $\mathcal L$ 为 $X$ 上的不可约局部系统 (意指无真子局部系统, 在 Betti 世界即基本群的不可约表示), 则 $\mathcal L |_U$ 也为不可约局部系统. 这是因为复代数簇的子簇的实余维数至少为 $2$, 从而基本群上为满射.

(平展世界如何呢?)

**命题**. 设 $X$ 光滑, 连通, 则局部系统 $\mathcal L$ 的不可约性等价于其作为可构造层的单性, 也等价于 $\mathcal L [\dim X]$ 在 $\mathsf{Perv}(X)$ 中的单性.

*证明*. 设 $\mathcal L$ 为不可约局部系统. 假设有可构造层 $\mathcal M \subset \mathcal L$. 取稠密开集 $U$ 使得 $\mathcal M |_U$ 和 $(\mathcal L / \mathcal M) |_U$ 局部常值. 但 $\mathcal L |_U$ 不可约, 故 $\mathcal M |_U$ 和 $(\mathcal L / \mathcal M) |_U$ 之一为零.

**引理**. $j\colon U\subset X$ 开, $\mathcal M\in\mathsf{Perv}(U)$, 那么 $j_{! *}\mathcal M$ 单当且仅当 $\mathcal M$ 单.

**定理** (单偏屈层分类). $\mathsf{Perv}(X)$ 的单对象恰为 $\mathrm{IC}_X (\mathcal L)$, 其中 $\mathcal L$ 为光滑连通子簇上的不可约局部系统.

设 $\mathcal P\in\mathsf{Perv}(X)$ 为单对象. 考虑支集的闭包 $Z = \overline{\operatorname{supp}\mathcal P}$, $\mathcal P = i_{Z,*} i^! \mathcal P$, 则 $i^!\mathcal P$ 单. 故不妨设 $Z = X$.

设 $X$ 为不可约分支 $X_\alpha$ 的并. 取稠密开集 $U_\alpha\subset X_\alpha$, $\mathcal P|_{U_\alpha}$ 局部常值且非零 (因为 $\mathcal P$ 的支集为全空间).
记 $U = \bigsqcup U_\alpha$.

$\mathcal P|_U = \bigoplus \mathcal L_\alpha [\dim U_\alpha]$, 故 $X$ 实际上只有一个不可约分支.

我们断言 $\mathcal P|_U$ 单. ...

**定理**. $\mathsf{Perv}(X)$ 满足 Artin 条件 (降链稳定) 和 Noether 条件 (升链稳定), 即每个对象都有有限长度.

## 第 5 讲 (2026-10-20)

上回定义并研究了 $\mathrm{IC}$ 对象. 我们将看到偏屈 $t$-结构比通常 $t$-结构表现更好.

我们将研究对于映射 $f\colon X\to Y$, 四个函子何时正合, 以及其上同调振幅.

**命题**. 当 $f$ 的纤维维数不超过 $d$ 时,

- $f^* (D^{p,\leq 0}) \subset D^{p,\leq d}$;
- $f_* (D^{p,\geq 0}) \subset D^{p,\geq -d}$;
- $f^! (D^{p,\geq 0}) \subset D^{p,\geq -d}$;
- $f_! (D^{p,\leq 0}) \subset D^{p,\leq d}$.

由伴随和 Verdier 对偶, 四个性质等价, 只需证明其中一条.

需要证明对于 $M\in D^{p,\leq 0}$,
$$
\operatorname{dim}\operatorname{supp}H^r (f^* M) \leq -r+d.
$$
而
$$
\operatorname{dim}\operatorname{supp}H^r (f^* M) = \operatorname{dim} f^*\operatorname{supp}H^r (M),
$$
一个支集的原像至多增加纤维的维数.

**推论**. 若 $f$ 是光滑映射, 相对维数为 $d$, 则 $f^! [-d] = f^* [d]$ 为偏屈 $t$-结构下的 $t$-正合函子.

**习题**. 考虑映射 $\mathbb{C}\to\mathbb{C}$, $x\mapsto x^2$.

**定理** (相对 Artin 估计) 若 $f\colon X\to Y$ 为[仿射映射](仿射态射.md), $M\in \mathsf{Sh}_c (X)$ 为[可构造层](可构造层.md), 则
$$
\operatorname{dim}\operatorname{supp} H^r (f_* M) \leq \operatorname{dim}\operatorname{supp} M - r.
$$
(注意此式与纤维的维数无关.)

**推论**. 若 $f\colon X\to Y$ 为[仿射映射](仿射态射.md), 则

- $f_* (D^{p,\leq 0}) \subset D^{p,\leq 0}$;
- $f_! (D^{p,\geq 0}) \subset D^{p,\geq 0}$.

**推论** (绝对情形, Artin 消失定理). 设 $X$ 仿射, $M\in \mathsf{Sh}_c (X)$, 则 $H^r (X,M) =0$ ($r > \operatorname{dim}X$).

此前我们只知道 $r > 2\operatorname{dim}X$ (实维数) 时上同调消失, 所以这个命题令人惊讶. 但实际上我们有如下结论.

**断言**. 仿射复代数簇 $X$ 具有一个不超过 $\operatorname{dim} X$ 维的 CW 复形的同伦型.

这个结论是用 [Morse 理论](Morse理论.md)证明的. 找一个 Morse 函数, 即实函数 $\varphi\colon X \to \mathbb{R}$, 使得 $X$ 的同伦型可通过逐次粘贴胞腔得到, 每次对应 $\varphi$ 的一个临界点, 胞腔维数是临界点的 Morse 指标. 将 $X$ 闭嵌入某个 $\mathbb A^n$, 取一个一般位置的点 $y\in\mathbb A^n$ 使得到 $y$ 的距离的平方给出 Morse 函数. 虽然 $X$ 不是紧的, 但我们可以让 $\varphi$ 在任何一个区间内的部分 $X_{[a,b]}$ 都是紧的.

> 平展情形的 Artin 消失定理的证明在 SGA 4, 4.5. 这是一个很好的报告主题.

若 $M\in D^b_c$ 不是一个普通的层, 我们还能对 $f_* M$ 说什么? 我们知道 $M$ 有一个[滤过](滤过.md), 其关联分次对象为 $H^r (M) [-r]$. 那么 $f_* M$ 有一个[滤过](滤过.md), 其关联分次对象为
$$
H^s (f_* H^r (M)) [ -r - s ].
$$

[谱序列](谱序列.md)正是用来处理这种对象的: 稳定范畴中的滤过在正合函子下的像.

### 半小性

设 $X$ 光滑, $\operatorname{dim}X = d$. 对于映射 $f\colon X\to Y$, 若

- $\operatorname{dim}\{y\in Y\mid\operatorname{dim}f^{-1}(y)\geq r\} \leq d - 2r$,
- (等价地) $\operatorname{dim}(X\times_Y X) \leq \operatorname{dim}X$,

则称 $f$ 是半小 (semismall) 的.

**习题**. 构造 $Y = \{\det\begin{pmatrix}a&b\\c&d\end{pmatrix} = 0\}$ 的半小消解.

我们想要用消解研究奇性代数簇 $Y$.

**命题**. 若 $f$ 半小, 则 $f_*\mathrm{IC}_X$ 为偏屈层.

(后面有一小节课没听)

## 第 6 讲 (2026-10-27)

**例**. $\pi\colon \operatorname{Bl}_0\mathbb A^2\to\mathbb A^2$ 为半小映射, $\pi_*\mathrm{IC}$ 为偏屈层, 分解为 $\mathrm{IC}_{\mathbb A^2}\oplus\delta_0$.

**命题** (光滑射影分解).
设 $Y$ 为光滑代数簇, $f\colon X\to Y$ 为满射, 且为[光滑](光滑映射.md), [射影](射影簇.md)映射, 相对维数为 $d$. 那么
$$
f_*\underline{\mathbb{Q}}_X \simeq \bigoplus_{q=0}^{2d} H^q(f_*\underline{\mathbb{Q}}_X)[-q].
$$

**注**. 在紧合情形也有此结论.

**推论**. 在前述条件下,
$$
f_* \mathrm{IC}_X \simeq \bigoplus_{q=-d}^{d} {^p H}^q (f_* \mathrm{IC}_X) [-q].
$$


下面主要的目标就是证明这个定理:

**定理** (BBDG) 设 $f\colon X\to Y$ 紧合,
$$
f_* \mathrm{IC}_X \simeq \bigoplus_{q} {^p H}^q (f_* \mathrm{IC}_X) [-q].
$$

**注**. 对通常 t-结构不成立.

*光滑射影分裂的证明* (Ehresmann).
由假设, $f_*\underline{\mathbb{Q}}_X$ 局部常值. (不过仅这一条还不能推出分裂为上同调.)
考虑典型纤维 $Z$, $\dim Z = d$.

- "Hard Lefschetz" 告诉我们: 若 $\mathcal L$ 为[丰沛线丛](丰沛线丛.md), 记 $\eta = c_1(\mathcal L)\in H^2(Z)$ ("一般超平面"), 则 $\eta\cup (-)\colon H^*\to H^{*+2}$ 迭代 $q$ 次给出一个典范同构 $\eta^q\cup (-)\colon H^{d-q}\simeq H^{d+q}$ (Poincaré 对偶告诉我们它们同构, 但不典范).
- 若有关于 $f\colon X\to Y$ 的相对丰沛线丛, 则有典范同构 $\eta^q\cup (-)\colon H^{d-q}(f_*\underline{\mathbb{Q}}_X) \simeq H^{d+q}(f_*\underline{\mathbb{Q}}_X)$.
- 事实上, 上述同构由同构 $\eta^q\colon f_*\underline{\mathbb{Q}} \to f_*\underline{\mathbb{Q}} [2q]$ 取上同调得到. 由 Deligne 分裂定理完成证明.

**定理** (Deligne 分裂). 设 $K$ 是带 t-结构的稳定范畴中的有界对象, 且有态射 $\eta\colon K \to K[2]$. 假设对任意 $r$, $K \to K[2r]$ 诱导同构 $H^{-r} (K)\simeq H^r(K)$, 则有 $K = \bigoplus H^i (K) [-i]$.

**本学期剩下的大纲**: BBDG 定理的证明.

1. 类比到特征 $p$
2. 纯性 (purity)
3. 权重理论
3. 从特征 $p$ 回到特征 $0$: 在 $\operatorname{Spec}\mathbb F_p$ 的特殊纤维上应用 Frobenius 与权重理论证明分解, 再回到 $\operatorname{Spec}\mathbb{C}$ 的一般纤维.

**约定**. $X$, $Y$ 等表示定义在 $\overline{\mathbb F_q}$ 上的代数簇, $X_0$, $Y_0$ 等表示 $\mathbb F_q$ 上的代数簇, $X = X_0\times_{\operatorname{Spec}\mathbb F_q}\operatorname{Spec}\overline{\mathbb F_q}$.

回忆 $\operatorname{Gal}(\overline{\mathbb F_q}/\mathbb F_q) = \widehat {\mathbb{Z}} = \operatorname{lim}_n \mathbb{Z}/n$.

回忆 Frobenius 给出 $X$ 的自同构, 与 $\overline{\mathbb F_q}$ 的自同构相容. 它也作用于 $X$ 上的层.

我们可以定义 "$\ell$-进层" $D^b_c(X,\overline{\mathbb{Q}_\ell})$ 上的偏屈 t-结构:

- 首先定义 $f^*,f^!,f_!,f_*,\mathbb D,\operatorname{Hom},\otimes$ (例如将映射分解为开嵌入接着紧合映射...)
- 平展局部系统是平展局部常值层, 等同于平展基本群的表示.

### 权重理论与 Tate 扭

- $\mathbb A^1$ 上, $\widehat {\mathbb{Z}}$ 在 $H^0 = \overline{\mathbb{Q}}_\ell$ 上的作用是平凡的.
- $\widehat {\mathbb{Z}}$ 在 $H^1(\mathbb G_m)$ 以及 $H^2(\mathbb P^1)$ 上的作用不平凡.

$\mathbb G_m$ 上的 Frobenius 作用是什么? 直观上, 它作用于 $\overline{\mathbb{F}_q}$-点的集合 $\overline{\mathbb{F}}_q^\times$ 上.

下次我们将介绍 [Tate 扭](Tate扭.md), 一个反复出现的核心对象. 它出现在这两个上同调的 Frobenius 作用的计算中.

## 第 7 讲 (2026-11-03)

**命题** (BBDG 分解定理). 设 $f\colon X\to Y$ 为紧合映射, 则 $f_*\mathrm{IC}_X$ 分解为
$$
f_*\mathrm{IC}_X\simeq \bigoplus {^p H^r} (f_*\mathrm{IC}_X)[-r],
$$
且 ${^p H^r} (f_*\mathrm{IC}_X)\in\mathsf{Perv}$ 半单.

记 $k_0 = \mathbb F_q$ 为有限域, $k = \overline{k_0}$ 为其可分闭包, $\operatorname{Gal}(k/k_0) = \widehat {\mathbb{Z}}$.
取定 "几何 Frobenius" $1\in\widehat {\mathbb{Z}}$, 它是 "算术 [Frobenius](Frobenius态射.md)" 的逆. 对于 $k_0$-概形 $X_0$, 记 $X = X_0\times_{\operatorname{Spec}k_0}\operatorname{Spec}k$.

上回说到, 我们将用 Frobenius 将问题转化到 $k_0$ 上, 然后使用平展上同调. 平展上同调的系数 $\mathbb{Z}/\ell^n$, $\mathbb{Z}_{\ell}$, $\mathbb{Q}_{\ell}$ 等需要取定一个不同于 $p$ 的素数 $\ell$.

回忆 $X$ 或 $X_0$ 上的 lisse 层等同于 $\pi_1^{\text{ét}}$ 的连续表示. 有群正合列
$$
\pi_1^{\text{ét}}(X) \to \pi_1^{\text{ét}}(X_0) \to \pi_1^{\text{ét}}(\operatorname{Spec}k_0).
$$
称 $\pi_1^{\text{ét}}(X)$ 为几何基本群, $\pi_1^{\text{ét}}(X_0)$ 为算术基本群.

### Tate 扭

设 $E$ 为 $\mathbb{Z}/\ell$ 或 $\mathbb{Z}_\ell$ 或 $\mathbb{Q}_\ell$.

**问题**. $H^* (\mathbb G_m,E),H^* (\mathbb P^1,E)$ 上的 Galois 作用是什么?

考虑 $k$ 上的 $\ell^n$ 次单位元群 $\mu_{\ell^n}$, 它不典范地同构于 $\mathbb{Z}/\ell^n$ (同构需要一个人为的单位根的选取).
$\mu_{\ell^n}$ 上的 Galois 作用不平凡. 类似地, $\mu_{\ell^\infty} := \operatorname{lim}\mu_{\ell^n}$ 不典范地同构于 $\mathbb{Z}_\ell$.

设 $V$ 为带 Galois 作用的 $E$-模. 定义其 **Tate 扭**
$$
V(1) := V \otimes_{\mathbb{Z}_\ell} \mu_{\ell^\infty}.
$$

  $\backslash$|$\mathbb A^1$| $\mathbb P^1$| $\mathbb G_m$
-|-|-|-
$H^1$|$0$|$0$|$E(-1)$
$H^2$|$0$|$E(-1)$|$0$

然后老师解释了相对 Frobenius 态射的细节. 详见 [Frobenius 态射](Frobenius态射.md).

考虑 [Kummer 序列](Kummer理论.md)
$$
\mu_{\ell^n}\to \mathbb G_m \overset{\ell^n}{\to} \mathbb G_m,
$$
注意 $\ell\neq p$ 保证 $\ell^n$ 为平展映射, 从而构成 $\mu_{\ell^n}$-[主丛](主丛.md), 也即 $H^1(\mathbb G_m,\mu_{\ell^n})$ 的一个典范元素. 特别地, 这个典范元素在 Galois 作用下不变.

类似地, 有同构
$$
E \overset{\simeq}{\to} H^1(\mathbb G_m, E(1)),
$$
$$
E(-1)\simeq H^1 (\mathbb G_m,E).
$$
这是 [Tate 扭](Tate扭.md)的另一种更令人信服的理解方式.


$\mathbb P^1$ 的 Poincaré 对偶给出完美配对
$$
H^0(\mathbb P^1,E)\otimes_E H^2(\mathbb P^1,E(1))\to E,
$$
即
$$
H^2(\mathbb P^1,E(1)) \simeq H^0(\mathbb P^1,E)^\vee.
$$
一般地, 对于 $d$ 维光滑代数簇 $X$, $\dim X = d$, 有
$$
H^i_c (X,E(d)) \simeq H^{2d-i}(X,E)^\vee.
$$
记
$$
\omega_{X_0} := E_{X_0}(d)[2d].
$$
它是 $X_0\to\operatorname{Spec}k_0$ 的 $!$-拉回; 注意对于 $k_0$-概形 $X_0$, 也可定义其上的层的 Tate 扭, 那就是与拉回 Galois 表示得到的局部系统作张量积.

...
$$
\omega_{X_0\times Y_0} \simeq \omega_{X_0} \otimes \omega_{Y_0}.
$$

...我们需要找特征值为 $q^{d/2}$ 的东西...

### 混合层

称 $F_0\in\mathsf{Sh}(X_0)$ 以权 $w$ 逐点纯 (punctually pure of weight $w$) 是指其任意闭点 $x\in X_0$ 的茎 $F_{\bar x}$ 上的 $\operatorname{Gal}(\mathbb F_{q_x})$-作用中 Frobenius 元素的特征值为代数数, 且绝对值等于 $q_x^{w/2}$ (这绝对值不依赖于嵌入 $\mathbb{C}$ 的方式).

例如 $E(d)$ 是逐点纯的, 有权 $-2d$. 注意 $\omega_{X_0} = E(d)[2d] = \mathbb D E$, 而 $E$ 的权是 $0$. 我们希望

**混合层** (mixed sheaves) 是有[逐次](关联分次代数.md)逐点纯的[滤过](滤过.md)的层.

"逐点纯" 考虑的是茎, 而我们还有更强的 "纯" 的概念, 不仅涉及到茎还涉及到**余茎** (costalk).

**定义**. 对于 $F_0\in D^b_c(X_0)$, 令
- $F_0\in D^b_{\leq w}(X_0)$ 当且仅当 $H^i(F_0)$ 是权 $\leq w+i$ 的混合层;
- $F_0\in D^b_{\geq w}(X_0)$ 当且仅当 $\mathbb D F_0\in D_{\leq -w}^b(X_0)$. 这涉及到余茎.
- 称 $F_0$ 以权 $w$ **纯**就是说 $F_0\in D^b_{\leq w}(X_0)\cap D^b_{\geq w}(X_0)$.

**注**. 权不是 $t$-结构, 但有近似的正交性.

**命题**. 设 $M_0\in D^b_{\leq w}(X_0),N_0\in D^b_{\geq w+1}(X_0)$, 则相应的 $D^b(X)$ 的对象之间同态的 Frobenius 不动点平凡:
$$
\operatorname{Hom}(M,N)^{\mathrm{Frob}} = 0.
$$

例. $\operatorname{Spec}\mathbb F_q$ 上有个不平凡的映射 $E\to E(1)$.

**命题**. 设 $M_0\in D^b_{\leq w}(X_0),N_0\in D^b_{\geq w+2}(X_0)$, 则 $\operatorname{Hom}(M_0,N_0) = 0$.

### Weil I, Weil II

设 $X_0$ 为曲线, $L$ 为纯权 $w$ lisse 层. Deligne 证明了 $H^1_c (L)$ 的权 $\leq w+1$.

[-](notes-perverse-summary.md#:embed)
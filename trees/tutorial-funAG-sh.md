---
title: 函子式代数几何 第二节 层论
tag: 教程
author: [SimplicialCat](SimplicialCat.md)
---

我们假设读者已经了解[层](景上的层.md)的概念, 本节仅回顾与函子式代数几何相关的一些层论基本事实.

## 点函子与概形

### 点函子

对于一个几何对象 $X$, 我们常常使用它的 "点" 来对 $X$ 有关的对象进行构造与论证, 而常常这里的 "点" 的概念比想象中更灵活: 我们不需要所谈论的点真的是一个最小的不可分割的几何对象; 任何其它几何对象到 $X$ 的一个态射都可以称作一个点. 而当我们采取这种更宽泛的点的概念时, "逐点" 的论证往往会自动具有自然性.

**定义** (仿射概形的点函子). 对于仿射概形 $\operatorname{Spec} A$, 定义其[点函子](点函子.md)为
$$
	\operatorname{Spec} A\colon 
	\mathsf{Ring} \to \mathsf{Set},\quad
	B\mapsto \operatorname{Hom}_{\mathsf{Ring}}(A,B).
$$
称 $(\operatorname{Spec} A)(B) = \operatorname{Hom}_{\mathsf{Ring}}(A,B)$ 的元素为 $\operatorname{Spec} A$ 的 $B$-点.
将仿射概形对应到其点函子的过程实际上就是[米田嵌入](米田嵌入.md)
$\mathbf{y}\colon \mathsf{Aff} \to \operatorname{Psh}(\mathsf{Aff})$.

**例** (一般线性群, 乘法群). 一般线性群 $\mathrm{GL}_n$ 作为仿射概形的定义为
$$
\mathrm{GL}_n = \operatorname{Spec} \mathbb{Z}[x_{11},\cdots,x_{nn}][\det(x)^{-1}],
$$
其点函子为
$$
A\mapsto \mathrm{GL}_n(A)=\{x\in \mathrm{Mat}_{n\times n}(A)\mid \text{$\det(x)$ 可逆}\}.
$$
特别地, 当 $n=1$ 时记
$$\mathbb{G}_m=\mathrm{GL}_1
=\operatorname{Spec}\mathbb{Z}[x][x^{-1}],$$
其点函子为 "乘法群" 函子
$$
A\mapsto A^\times = \{x\in A\mid \text{$x$ 可逆}\}.
$$
因此称 $\mathbb{G}_m$ 为[乘法群概形](乘法群概形.md). 由点函子容易看出 $\mathbb{G}_m$ 的群结构, 因为一个环的可逆元关于乘法自然构成群. 群的乘法 $\mathbb{G}_m\times\mathbb{G}_m\to\mathbb{G}_m$ 对应环同态 
$$
\mathbb{Z}[x][x^{-1}]\to\mathbb{Z}[u][u^{-1}]\otimes \mathbb{Z}[v][v^{-1}],\quad x\mapsto uv.
$$
群的取逆 $\mathbb{G}_m\to\mathbb{G}_m$ 对应环同态 $x\mapsto x^{-1}$.

**例** ($\mathbb{G}_m$-作用与分次).

环 $R$ 上的一个 $\mathbb{Z}$-[分次](分次代数.md)是一个分解
$$
R =\cdots \oplus R_{-1}\oplus R_0 \oplus R_1 \oplus\cdots,
$$
满足对 $r\in R_{n}, s\in R_{m}$ 有 $rs\in R_{n+m}$.
这等价于 $\operatorname{Spec} R$ 上的一个 $\mathbb{G}_m$-[作用](群作用.md), 也即一个映射 $\operatorname{Spec} R \times \mathbb{G}_m \to \operatorname{Spec} R$, 满足群作用的条件.
这个映射以点函子的观点可以如下描述.
对于环 $A$, 它给出映射
$$
\operatorname{Hom}_{\mathsf{Ring}}(R,A)\times A^\times \to \operatorname{Hom}_{\mathsf{Ring}}(R,A),
$$
$$
(\varphi,a)\mapsto
\big(
r\mapsto \varphi(r)a^{\deg r}
\big).
$$
(其中 $\deg r$ 为齐次元素 $r$ 的次数, 以线性延拓到非齐次元素.)
当然也可以用仿射概形作为环的对偶来描述,
这个作用对应于环同态
$$
R\to R\otimes\mathbb{Z}[x][x^{-1}] \simeq R[x][x^{-1}],\quad r\mapsto rx^{\deg r}.
$$

更一般地, 对任意交换幺半群 $M$, 考虑幺半群环 $\mathbb{Z}[M]$, 也即 $M$ 自由生成的交换环, 对应的仿射概形 $\operatorname{Spec}\mathbb Z[M]$ 是 $\mathsf{Aff}$ 中的幺半群.
环 $R$ 的 $M$-分次 $R=\bigoplus_{m\in M}R_m$ 等同于 $\operatorname{Spec}\mathbb Z[M]$-作用.

见[滤与分次的叠观点](fil-gr.md).

### Zariski 覆盖

**定义** (Zariski 覆盖). 对于仿射概形 $\operatorname{Spec} A$, 定义其 **Zariski 覆盖**为 $\mathsf{Aff}$ 中形如
$$
\{D(f_i) \to \operatorname{Spec} A\}_{i\in I}\,(f_i\in A)
$$
的一族态射,
满足 $\{f_i\}_{i\in I}$ 生成 $A$ 的单位理想.

**例**. 考虑一个极端情形, 对于 $A=0$ 为零环,
空集构成了 $\operatorname{Spec} A$ 的 Zariski 覆盖, 因为零个元素就生成了零环的单位理想.

**命题**. 对环的两个元素 $f,g\in A$ 有
$D(f)\times _{\operatorname{Spec} A}D(g) \simeq D(fg)$.

*证明*. 这是因为
$$
\begin{aligned}
    A[f^{-1}]\otimes_A A[g^{-1}]
    &\simeq
    A[x,y]/(xf-1,yg-1)\\
    &\simeq
    A[z]/(zfg-1)\\
    &\simeq A[(fg)^{-1}].
\end{aligned}
$$

**例**. $D(2) \to\operatorname{Spec}\mathbb{Z}$ 和 $D(3) \to \operatorname{Spec} \mathbb{Z}$ 构成 $\operatorname{Spec} \mathbb{Z}$ 的 Zariski 覆盖.

**命题** (Zariski 覆盖是[次典范](次典范拓扑.md)的)
对任意 Zariski 覆盖 $\{D(f_i) \to \operatorname{Spec} A\}_{i\in I}\,(f_i\in A)$, 有 $\mathsf{Aff}$ 中的余等化子
$$
\coprod_{i,j}D(f_if_j) \rightrightarrows
\coprod_i D(f_i)
\to \operatorname{Spec} A.
$$

*证明*. 要证明有 $\mathsf{Ring}$ 中的[等化子](等化子.md)
$$
A \to {\prod_i A[f_i^{-1}]} \rightrightarrows {\prod_{i,j}A[(f_if_j)^{-1}].}
$$
具体地, 设 $(x_i/f_i^{n_i})_{i\in I}\in \prod_i A[f_i^{-1}]$ 在两个限制映射下的像相等, 即在 $A[(f_if_j)^{-1}]$ 中有 $x_i/f_i^{n_i} = x_j/f_j^{n_j}$.
我们要证明存在唯一的 $x\in A$ 使得在 $A[f_i^{-1}]$ 中有 $x/1=x_i/f_i^{n_i}$.

先考虑 $I$ 为有限集的情形.
取正整数 $N_{ij}$, 使得
$(f_if_j)^{N_{ij}} (f_j^{n_j}x_i-f_i^{n_i}x_j)=0$.
由有限性, 可取正整数 $N=\max\{N_{ij}\mid i,j\in I\}+\max\{n_i\mid i\in I\}$.
由条件, $\{f_i\}_{i\in I}$ 生成单位理想.
那么 $\{f_i^N\}_{i\in I}$ 也生成了单位理想.
设 $1=\sum_{i\in I} a_if_i^N\,(a_i\in A)$.
令 $x = \sum_{i\in I} a_if_i^{N-n_i}x_i$.
对任意 $i\in I$,
容易验证 $x$ 在 $A[f_i^{-1}]$ 中等于 $x_i/f_i^{n_i}$.
这是因为 $f_i^{n_i}x-x_i=0$.
这证明了 $x$ 的存在性.
而 $x$ 的唯一性是因为, 若 $x$ 在每个 $A[f_i^{-1}]$ 中都等于 $0$, 则 $x=0$.

再来处理 $I$ 为任意集合的情形. 取有限子集 $I_0\subset I$ 使得 $\{f_i\}_{i\in I_0}$ 生成了单位理想. 对 $I_0$ 使用前述构造得到 $x$. 考虑 $i'\in I\setminus I_0$, 对 $I_0\cup \{i'\}$ 再次使用前述构造得到 $x'$. 由唯一性就得到 $x=x'$.

$\square$

### 概形

**定义** (空间). 定义**空间**为函子 $X\colon \mathsf{Aff}^{\mathrm{op}} \to \mathsf{Set}$ (也即 $X\colon \mathsf{Ring}\to\mathsf{Set}$).

当然, 空间一词在数学上有太多不同的含义, 这种空间与那种空间不一定相关联. 不过代数几何使用的空间概念大多都类似这种形式.

**定义** (概形). 称满足如下条件的空间 $X$ 为[**概形**](概形.md):
- (Zariski 层条件) 对任意 Zariski 覆盖 $\{D(f_i) \to \operatorname{Spec} A\}_{i\in I}\,(f_i\in A)$, 给定一族相容的元素 $s_i\in X(D(f_i))$ (相容的意思是 $s_i,s_j$ 限制在 $D(f_if_j)$ 上相同), 存在唯一的 $s\in X(\operatorname{Spec} A)$ 限制为每个 $s_i$.
- (局部仿射性) $X$ 存在仿射开覆盖 (开覆盖的定义在本节的后文).

概形的态射即为函子的自然变换. 记概形的范畴为 $\mathsf{Sch}$.

**命题**. 仿射概形是概形. 换言之, 将仿射概形对应到其点函子的米田嵌入穿过概形的范畴, 给出全忠实函子 $\mathbf{y}\colon \mathsf{Aff} \hookrightarrow \mathsf{Sch}$.

*证明*. 这是由于 Zariski 覆盖是次典范的.

**命题**. 概形 $X$ 是仿射概形在空间范畴中的余极限:
$$
	X \simeq \operatorname{colim}_{\operatorname{Spec} A \to X}\operatorname{Spec} A.
$$

*证明*. 这是[预层](预层.md)的性质.

### 闭嵌入与开嵌入

**定义** (闭嵌入). 满足如下条件的空间映射 $X\to Y$ 称为**闭嵌入**: 对任意 $\operatorname{Spec} A \to Y$, 拉回图
$$
\begin{array}{ccc}
X\times_Y\operatorname{Spec}A & \rightarrow & \operatorname{Spec}A \\
\downarrow &  & \downarrow \\
X & \rightarrow & Y
\end{array}
$$
中, 态射 $X\times_Y\operatorname{Spec}A \to \operatorname{Spec} A$ 为仿射概形的闭嵌入, 即形如 $\operatorname{Spec} (A/I)\hookrightarrow \operatorname{Spec} A$.

空间的闭嵌入与前面定义的仿射概形闭嵌入是相容的. 若 $X\to Y$ 为空间的闭嵌入且 $Y=\operatorname{Spec} A$ 为仿射概形, 考虑沿 $\mathrm{id}_{\operatorname{Spec} A}$ 的拉回, 知 $X\to Y$ 是仿射概形的闭嵌入.

**定义** (补空间). 设 $X\to Y$ 为空间的映射, 定义其**补空间** $Y\setminus X$ 为函子
$$
	(Y\setminus X)(A) = \{\operatorname{Spec} A\to Y\mid \operatorname{Spec} A\times_Y X\simeq\varnothing\}.
$$

注意, $(Y\setminus X)(A)$ 不等于 $Y(A) \setminus X(A)$.

**定义** (开嵌入). 设 $X\to Y$ 为空间映射.
- 若 $Y$ 为仿射概形, 且 $X\to Y$ 同构于一个闭子概形的补空间, 则称之为开嵌入.
- 一般地, 若对任意 $\operatorname{Spec} A\to Y$, 拉回图
$$
\begin{array}{ccc}
X\times_Y\operatorname{Spec}A & \rightarrow & \operatorname{Spec}A \\
\downarrow &  & \downarrow \\
X & \rightarrow & Y
\end{array}
$$
中, 态射 $X\times_Y\operatorname{Spec}A \to \operatorname{Spec}A$ 为仿射概形的开嵌入, 则称 $X\to Y$ 为开嵌入.

注意对于一般的空间, 我们不是定义开嵌入为闭嵌入的补空间, 这两个概念并不完全 "对称".

**记号**. 对于闭嵌入或开嵌入 $i\colon U\to X$, $j\colon V\to X$, 常常记 $U\times_X V$ 为 $U\cap V$; 当 $X$ 上的某对象 (如拟凝聚层) $F$ 可以沿 $i$ 拉回到 $U$ 上时, 记 $i^*F$ 为 $F|_U$.

**例**. 仿射概形的闭嵌入 $\operatorname{Spec} (A/I)\hookrightarrow\operatorname{Spec} A$ 的补空间 $\operatorname{Spec} A \setminus \operatorname{Spec} (A/I)$ 为
$$
	B\mapsto \{A\to B\mid A/I\otimes_A B\simeq 0\},
$$
其中条件 $A/I\otimes_A B\simeq 0$ 也等价于 $B/IB\simeq 0$, 即 $IB=B$ (作为 $A$-模).
		
当 $I=(f)$ 为主理想时, $A/(f)$ 的补空间为
$$
B\mapsto \{A\to B\mid fB=B\} = \{A[f^{-1}]\to B\},
$$
也即 $\operatorname{Spec} A[f^{-1}]=D(f)$. 例如 $\mathbb G_m$ 是 $0\colon \operatorname{Spec} \mathbb{Z}\hookrightarrow\operatorname{Spec} \mathbb{Z}[x]$ 的补空间, 简记作 $\mathbb{A}^1\setminus 0$.
		
但是一般而言 $\operatorname{Spec} A \setminus \operatorname{Spec} (A/I)$ 未必是仿射概形, 例如 $\mathbb{A}^2\setminus 0$ 就不是仿射概形. 注意到 $\mathbb A^2$ 的开子空间 $D(x),D(y)$ 都嵌入 $\mathbb A^2\setminus 0$, 且有如下交换图.
$$
\begin{array}{ccc}
\operatorname{Spec}\mathbb{Z}[x^{\pm 1},y^{\pm 1}]\simeq D(x)\cap D(y) & \rightarrow & D(x) \\
\downarrow &  & \downarrow \\
D(y) & \rightarrow & \mathbb A^2\setminus 0
\end{array}
$$
因此对任意映射 $\mathbb A^2\setminus 0 \to \operatorname{Spec} A$, 有环同态 $A\to \mathbb{Z}[x^{\pm 1},y^{\pm 1}]$. 但该环同态的像同时落在 $\mathbb{Z}[x^{\pm 1},y]$ 以及 $\mathbb{Z}[x,y^{\pm 1}]$ 中, 而这两个子环的交集为 $\mathbb{Z}[x,y]$,
这说明映射 $\mathbb A^2\setminus 0 \to \operatorname{Spec} A$ 穿过 $\mathbb{A}^2$. 因此 $\mathbb A^2\setminus 0$ 不可能是仿射概形.
		
另外, 仿射概形之间的映射何时是开嵌入, 也是一个比较复杂的问题. 答案是当且仅当对应的环同态为平坦, 有限表现同态, 且为环范畴中的满态射.

**命题**. 闭嵌入的拉回是闭嵌入, 开嵌入的拉回是开嵌入.
这就是说在拉回图
$$
\begin{array}{ccc}
X & \rightarrow & Z \\
\downarrow &  & \downarrow \\
Y & \rightarrow & W
\end{array}
$$
中, 若 $Z\to W$ 为闭嵌入 (开嵌入), 则 $X\to Y$ 为闭嵌入 (开嵌入).

*证明*. 任取映射 $\operatorname{Spec}A\to Y$, 作如下拉回图.
$$
\begin{array}{ccccc}
\operatorname{Spec}A\times_Y X & \rightarrow & X & \rightarrow & Z \\
\downarrow &  & \downarrow &  & \downarrow \\
\operatorname{Spec}A & \rightarrow & Y & \rightarrow & W
\end{array}
$$
故 $\operatorname{Spec} A\times_Y X\to \operatorname{Spec} A$ 为闭 (开) 嵌入. 这说明 $f$ 是闭 (开) 嵌入.

**命题**. 闭嵌入的复合是闭嵌入.

**命题**. 开嵌入的复合是开嵌入. (这个命题的证明比较困难.)

**定义** (开覆盖). 设 $X$ 为空间. 定义 $X$ 的一个**开覆盖**为一族开嵌入 $\{U_i\to X\}$, 使得对任意 $\operatorname{Spec} A\to X$ ($A\neq 0$) 都存在 $i$, $\operatorname{Spec} A\times_X U_i$ 不为空.
进一步, 若每个 $U_i$ 为仿射概形, 则称之为**仿射开覆盖**.

容易验证上述覆盖的概念满足 "覆盖" 应有的性质:
若 $\{U_i\to X\}$ 为开覆盖, 而对每个 $i$ 有 $\{V_{i,j} \to U_i\mid j\in J_i\}$ 为开覆盖, 则 $\{V_{i,j} \to X\}$ 为开覆盖.

**命题**. 设 $\{D(f_i) \to\operatorname{Spec} A\}$ 是 Zariski 覆盖, 那么它是仿射开覆盖.

*证明*. 任取映射 $\operatorname{Spec} B\to\operatorname{Spec} A$ ($B\neq 0$), 对应环同态 $\varphi\colon A\to B$,
那么存在 $f_i$ 使得 $\varphi(f_i)$ 非幂零元, 从而
$\operatorname{Spec} B\times_{\operatorname{Spec} A}D(f_i) \simeq \operatorname{Spec} (B[\varphi(f_i)^{-1}])\neq\varnothing$.

**命题**. 仿射概形的开覆盖总可以细化为 Zariski 覆盖.

*证明*. 设 $U \to \operatorname{Spec} A$ 为开嵌入.
由定义, $U = \operatorname{Spec} A \setminus \operatorname{Spec} (A/I)$.
我们证明 $U$ 被 $\{D(f)\mid f\in I\}$ 覆盖.
对任意 $\operatorname{Spec} B\to U$ ($B\neq 0$), 有对应的环同态 $\varphi\colon A\to B$, 且作为 $A$-模有 $B=IB$, 这说明存在 $f\in I$ 使得 $\varphi(f)$ 非幂零元, 从而 $\operatorname{Spec}B\times_{U}D(f)\neq\varnothing$.

**定义** (局部闭嵌入).
对于空间映射 $X\to Y$, 若其可分解为
$X\to Z\to Y$, 而 $X\to Z$ 为闭嵌入, $Z\to Y$ 为开嵌入 (注意顺序: 先闭嵌入, 后开嵌入), 则称 $X\to Y$ 为**局部闭嵌入**.

**例**. 映射 $\operatorname{Spec} k[t,t^{-1}] \hookrightarrow\operatorname{Spec} k[x,y]$, $t\mapsto (t,0)$ 为局部闭嵌入.
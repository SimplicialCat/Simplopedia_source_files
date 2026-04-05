---
title: 函子式代数几何 第一节 仿射概形
tag: 教程
author: [SimplicialCat](SimplicialCat.md)
---

这里所指的环是含幺交换环, 其中 $1$ 可能等于 $0$. 若 $1=0$, 则环中所有元素都等于 $0$, 记这个环为 $0$.

粗略地说, 对于环 $A$, 我们希望有一个空间 $\operatorname{Spec} A$ 使得 $A$ 的元素可视为 $\operatorname{Spec} A$ 上的函数.
这里, "函数" 不是指 $\mathbb{R}$-值或任何确定的东西上取值的函数, 而是一个纯粹形式上的概念, 我们仅仅希望它满足如下性质:

- 对于空间之间的映射 $X\to Y$, 由 $Y$ 上的函数可得 $X$ 上的函数.

换言之, "空间" 与 "空间上的函数环" 之间的对应是一个反变函子.

**定义**. 仿射概形的范畴为环范畴的对偶范畴:
$$
	\mathsf{Aff} := \mathsf{Ring}^{\mathrm{op}}.
$$
环 $A$ 在对偶范畴中对应仿射概形 $\operatorname{Spec} A$.

需要强调的是 $\operatorname{Spec} A$ 是一个形式的记号, 它不是一个拓扑空间 (至少暂时不是).

由定义, 对于仿射概形之间的映射 $\operatorname{Spec} A\to \operatorname{Spec} B$, 由 $B$ 的元素可得 $A$ 的元素. 这正是我们期望的.

如下是仿射概形范畴的基本范畴论性质:

- $\mathsf{Aff}$ 具有[始对象](始对象.md) $\varnothing := \operatorname{Spec} 0$.
- $\mathsf{Aff}$ 具有[终对象](终对象.md) $\operatorname{Spec}\mathbb{Z}$.
- $\mathsf{Aff}$ 中存在[推出](推出.md), 对应于 $\mathsf{Ring}$ 中的[拉回](拉回.md):
$$
	\operatorname{Spec} A\sqcup_{\operatorname{Spec} B}\operatorname{Spec} C\simeq\operatorname{Spec} (A\times_B C).
$$
- $\mathsf{Aff}$ 中存在[拉回](拉回.md) (纤维积), 对应于 $\mathsf{Ring}$ 中的[推出](推出.md) (张量积):
$$
	\operatorname{Spec} A\times_{\operatorname{Spec} B}\operatorname{Spec} C \simeq \operatorname{Spec} (A\otimes_B C).
$$

**例**. 在 $\mathsf{Ring}$ 中有 $\mathbb F_2 \otimes_{\mathbb{Z}} \mathbb F_3 \simeq 0$, 故在 $\mathsf{Aff}$ 中有 $\operatorname{Spec} \mathbb F_2\times_{\operatorname{Spec}\mathbb{Z}}\operatorname{Spec}\mathbb F_3\simeq \varnothing$.

**例** (Galois 扩张与主丛). 设 $k$ 为域, $a\in k^\times$ 非平方, $K=k[t]/(t^2-a)$ 为二次扩域. 例如 $k=\mathbb{R},K=\mathbb{C}$.
那么 $\operatorname{Spec} K\to\operatorname{Spec} k$ 是 $\mathbb{Z}/2\mathbb{Z}$-[主丛](主丛.md). 我们来解释这句话的意思.
		
首先, $\operatorname{Spec} K$ 上有一个 $\mathbb{Z}/2\mathbb{Z}$-[作用](群作用.md)
$$
	\operatorname{Spec} K\times \mathbb{Z}/2\mathbb{Z} \simeq \operatorname{Spec} K \sqcup \operatorname{Spec} K \to \operatorname{Spec} K
$$
(注. 这里 ${-}\times \mathbb{Z}/2\mathbb{Z}$ 可以理解为 ${-}\times_{\operatorname{Spec} k}(\operatorname{Spec} k \sqcup \operatorname{Spec} k \simeq \operatorname{Spec} k^2)$.)
它就是 $K$ 上的 [Galois 群](Galois群.md)的作用
$$
	K \to K^2, \quad x\mapsto (x,\bar x),
$$
其中 $x\mapsto \bar x$ 是 $K$ 上的自同构 $t\mapsto -t$.
		
进一步, 有同构
$$
	\operatorname{Spec} K\times\mathbb{Z}/2\mathbb{Z} \overset{\simeq}{\longrightarrow}\operatorname{Spec} K \times_{\operatorname{Spec} k}\operatorname{Spec} K.
$$
其中两个分量分别为投影和 Galois 群作用.
换言之, 环同态
$$
K\otimes_k K\to K^2,\quad x\otimes y\mapsto (xy,x\bar y)
$$
为同构.

**例**. $\mathsf{Aff}$ 中的乘积对应 $\mathsf{Ring}$ 中的余积, 即张量积. 因此 $\mathsf{Aff}$ 中的群对象 $\operatorname{Spec} A$ 相当于环 $A$ 带有一个余结合的余乘法 $m\colon A\to A\otimes A$ 以及余单位 $A\to\mathbb{Z}$, "对径映射" $A\to A$ (这些映射均为环同态), 满足若干等式. 这个结构又称为[交换 Hopf 代数](Hopf代数.md).

**例** (仿射直线). 称仿射概形 $\mathbb A^1:=\operatorname{Spec}\mathbb{Z}[x]$ 为**仿射直线** (affine line).
对任意仿射概形 $\operatorname{Spec} A$,
映射 $\operatorname{Spec} A \to \mathbb A^1$ 等同于环同态 $\mathbb{Z}[x] \to A$, 因而等同于环 $A$ 的元素. 某种意义上这解释了 "$A$ 的元素等同于 $\operatorname{Spec} A$ 上的函数" 的直观.
		
**例** (仿射空间). 更一般地, 定义 $n$ 维**仿射空间** (affine space) $\mathbb A^n$ 为 $\operatorname{Spec}\mathbb{Z}[x_1,\cdots,x_n]$. 因为 $n$ 元多项式环是 $n$ 个 $\mathbb{Z}[x]$ 的张量积, 所以在 $\mathsf{Aff}$ 中有 $\mathbb A^n\simeq (\mathbb A^1)^n$.
对任意仿射概形 $\operatorname{Spec} A$,
一个映射 $\operatorname{Spec} A \to \mathbb A^n$ 等同于环 $A$ 的 $n$ 个元素.
		
值得注意的是, $\mathbb A^1$ 是 $\mathsf{Aff}$ 中的环对象, 其加法和乘法映射 $+,\times\colon \mathbb A^2\to \mathbb A^1$ 分别对应 $\mathbb{Z}[x]$ 到 $\mathbb{Z}[y,z]$ 的环同态 $x\mapsto y+z$ 和 $x\mapsto yz$.

**例** (环上的仿射空间). 给定环 $R$, 定义 $R$ 上的 $n$ 维仿射空间为
$$
\mathbb A^n_R := \mathbb A^1\times\operatorname{Spec} R \simeq \operatorname{Spec} R[x_1,\cdots,x_n].
$$
因为 $R[x,y]\simeq R[x]\otimes_R R[y]$, 有 $\mathbb A^2_R \simeq \mathbb A^1_R\times_{\operatorname{Spec} R}\mathbb A^1_R$.
下标 $R$ 是[相对](相对.md)代数几何的记号. 在以 $\operatorname{Spec} R$ 为基底 (即在[俯范畴](俯范畴.md) $\mathsf{Aff}_{/\operatorname{Spec} R}$, $\mathsf{Sch}_{/\operatorname{Spec} R}$ 工作) 时 $\mathbb A^1_R$ 的地位就相当于 $\mathbb A^1$ 在 $\operatorname{Spec} \mathbb{Z}$ 为基底时的地位.

**例**. 环 $R$ 上的一个 $\mathbb{N}$-[分次](分次代数.md)是一个分解 $R= R_0\oplus R_1\oplus\cdots$, 且满足对 $r\in R_n,s\in R_m$ 有 $rs\in R_{n+m}$. 这等价于一个环同态
$$
	R \to R[x], \quad (r\in R_n)\mapsto rx^n,
$$
满足复合
$$
	R\to R[x]\overset{x=1}{\to} R = \mathrm{id}_R.
$$
翻译到仿射概形, 这等价于映射 $h\colon \operatorname{Spec} R\times\mathbb A^1 \to \operatorname{Spec} R$,
满足
$$
\operatorname{Spec} R \overset{1}{\to} \operatorname{Spec} R \times \mathbb A^1 \overset{h}{\to} \operatorname{Spec} R = \mathrm{id}_{\operatorname{Spec} R}.
$$
又注意到 $R\to R[x]\overset{x=0}{\to}R$ 是 $R$ 到 $R_0$ 的收缩.
因此在 "$\mathbb{A}^1$ 同伦论" 中, 上述结构称为 $\operatorname{Spec} R$ 的恒等映射与 $\operatorname{Spec} R$ 到 $\operatorname{Spec} R_0$ 的收缩之间的 $\mathbb{A}^1$ 同伦.

另外, 环 $R$ 上的 $\mathbb{Z}$-分次相当于[乘法群概形](乘法群概形.md) $\mathbb G_m$ 的作用. (见[滤与分次的叠观点](fil-gr.md).)

**例** (方程的解空间). 对于多项式 $f\in\mathbb{Z}[x_1,\cdots,x_n]$,
考虑仿射概形
$$
	V(f) := \operatorname{Spec} \big(\mathbb{Z}[x_1,\cdots,x_n]/(f)\big),
$$
直观上它是多项式方程 $f=0$ 的所有解的空间.
对任意仿射概形 $A$, 一个映射 $\operatorname{Spec} A\to V(f)$ 等同于方程 $f=0$ 在环 $A$ 上的一个解.
		
当然, 对一般的环的元素 $f\in A$ 也可定义
$$
	V(f) := \operatorname{Spec} (A/(f)).
$$
注意到, 元素 $f\in A$ 等同于环同态 $\mathbb{Z}[x]\to A$, 即仿射概形的映射 $\operatorname{Spec} A\to\mathbb{A}^1$, 从而环 $A/(f)$ 也可写成 $A\otimes_{\mathbb{Z}[x]}\mathbb Z$, 即 $V(f)$ 是如下的[拉回](拉回.md).
$$
\begin{array}
{ccc}
V(f) & \to & \operatorname{Spec}\mathbb{Z} \\
\downarrow && \downarrow \scriptsize{0}\!\!\\
\operatorname{Spec} A &\underset{f}{\to}& \mathbb{A}^1
\end{array}
$$
某种意义上这解释了 "$V(f)$ 是 $f$ 的零点集" 这一直观.
		
对于一族多项式 $f_1,\cdots,f_m\in\mathbb{Z}[x_1,\cdots,x_n]$ 生成的理想 $I$,
定义
$$
	V(I) := \operatorname{Spec}\mathbb{Z}[x_1,\cdots,x_n]/I
$$
直观上是方程组 $f_1=0,\cdots,f_m=0$ 的解的空间.
		
对于理想 $I,J$,
$$
	V(I)\times_{\mathbb A^n}V(J) \simeq V(I+J),
$$
意思是两个方程组的解空间相交, 给出两者的公共解的空间.

"方程的解的空间" 可以抽象为如下的概念.

**定义** (仿射概形的闭嵌入).
对于环 $A$ 的理想 $I$,
称商映射 $A\to A/I$ 对应的仿射概形的态射 $f\colon \operatorname{Spec} (A/I)\to \operatorname{Spec} A$ 为**闭嵌入**.

仿射概形的闭嵌入的概念不依赖于拓扑空间的概念. 不过在使用拓扑空间的观点时, 它确实构成概形的底层拓扑空间的闭子空间.
后面介绍的 "开嵌入" 同样不依赖于拓扑空间的概念; 但开嵌入的定义稍复杂一些, 并且仿射概形的开嵌入不一定是仿射概形.

**例** (局部化). 环 $A$ 对一个元素 $f\in A$ 的[局部化](局部化.md)是 $A[f^{-1}] = A[x]/(xf-1)$. 定义 "标准开集" $D(f)$ 为仿射概形
$$
	D(f) := \operatorname{Spec} (A[f^{-1}]).
$$
其直观上是函数 $f$ 取值非零处. 这个直观有如下的解释. 元素 $f\in A$ 相当于环同态 $\mathbb{Z}[x]\to A$, 也即仿射概形的映射 $\operatorname{Spec} A\to\mathbb A^1$. 环 $A[f^{-1}]$ 可以写成 $A\otimes_{\mathbb{Z}[x]}\mathbb{Z}[x][x^{-1}]$, 而 $\operatorname{Spec} \mathbb {Z}[x][x^{-1}]$ 可以写成 $\mathbb{A}^1\setminus 0$. 因此 $D(f)$ 是如下的拉回.
$$
\begin{array}
{ccc}
D(f) & \to & \mathbb A^1 \setminus 0 \\
\downarrow && \downarrow \scriptsize{0}\!\!\\
\operatorname{Spec} A &\underset{f}{\to}& \mathbb{A}^1
\end{array}
$$

另一种看法是, $D(f)$ 是 $V(f) = \operatorname{Spec} A/(f)$ 在 $\operatorname{Spec} A$ 中的补空间.
可以验证 $V(f)$ 与 $D(f)$ 的交确实为空:
$$
\begin{aligned}
&D(f)\times_{\operatorname{Spec} A}\operatorname{Spec} A/(f) \\&\simeq \operatorname{Spec} (A[f^{-1}]\otimes_A A/(f))\\&\simeq\operatorname{Spec} 0 = \varnothing.
\end{aligned}
$$

**例**.
设 $e,f\in A$, 满足 $e+f=1,ef=0$. 那么 $A/(e)\simeq A[f^{-1}]$, $A/(f)\simeq A[e^{-1}]$, 且
$$
A\simeq A/(e) \times A/(f)\simeq A[e^{-1}]\times A[f^{-1}].
$$
写成仿射概形即 $V(e)\simeq D(f)$, $V(f)\simeq D(e)$, 且 
$$
\operatorname{Spec} A \simeq V(e)\sqcup V(f)\simeq D(e)\sqcup D(f).
$$

**例** (切向量).
考虑仿射概形 $D=\operatorname{Spec} \mathbb{R}[\epsilon]/(\epsilon^2)$, 它是由 $\mathbb{A}^1_{\mathbb{R}}=\operatorname{Spec}\mathbb{R}[x]$ 中 "平方为零的元素" 构成的子空间; 因此可以想象它是一条无穷小的线段. (这里 $\mathbb{R}$ 可以换成任何环, 没有本质的作用, 只是 $\mathbb{R}$ 比较贴近直观.)
环同态 $\mathbb R[\epsilon]/(\epsilon^2)\to\mathbb{R},\epsilon\mapsto 0$ 对应于 "基点" $0\colon \operatorname{Spec} R\to D$.

对于 $\mathbb{R}$-概形 $X$,
映射 $D\to X$ 称作 $X$ 的**切向量**. 切向量的基点就是 $\operatorname{Spec} \mathbb{R}\overset{0}{\to}D\to X$.
例如 $X=\operatorname{Spec} \mathbb{R}[x,y]/(x^2+y^2-25)$ 在点 $(x,y)=(4,3)$ 处有一切向量 $D\to X$, $\epsilon\mapsto (4-3\varepsilon,3+4\varepsilon)$, 即由环同态
$$
\mathbb{R}[x,y]/(x^2+y^2-25) \to \mathbb{R}[\epsilon]/(\epsilon^2),
$$
$$
x\mapsto 4-3\epsilon,\ y\mapsto 3+4\epsilon
$$
给出.
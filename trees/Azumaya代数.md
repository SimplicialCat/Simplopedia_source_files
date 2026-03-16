---
title: Azumaya 代数
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

环或[概形](概形.md)上的 **Azumaya 代数**[^az]是域上的[中心单代数](中心单代数.md)的推广, 是 [Morita 等价](Morita等价.md)下可逆的代数, 给出 [Brauer 群](Brauer群.md)的元素.

[^az]: **注**. 東屋 五郎, Azumaya Gorō

Azumaya 代数在[平展](平展景.md)局部上是矩阵代数.

## 定义

### 局部环

局部环 $R$ 上的 **Azumaya 代数**是满足如下条件的 $R$-代数 $A$:

- $A$ 是有限维**自由** $R$-模;
- 映射 $A\otimes_R A^{\mathrm{op}} \to \operatorname{End}_R(A)$, $a\otimes a'\mapsto (x\mapsto axa')$ 为同构.

由定义, Azumaya 代数在 [Morita 等价](Morita等价.md)的意义下可逆.

一种等价的定义是仅对 "纤维" (剩余域) 作要求. 记 $k= R/\mathfrak m$ 为剩余域, 则 $R$-代数 $A$ 是 Azumaya 代数当且仅当

- $A$ 是有限维自由 $R$-模, 且 $\bar{A} := A\otimes_R k$ 是 $k$ 上的 Azumaya 代数 (由后面证明的性质, 此即域 $k$ 上的[中心单代数](中心单代数.md)).

_证明_.
基本上是[中山引理](中山引理.md)的直接应用.

### 环

局部环上的 Azumaya 代数可以推广到环上, 区别基本上只是局部环上的自由模推广为环上的[投射模](投射模.md).

**命题-定义**. 设 $R$ 是交换环, $R$ 上的 Azumaya 代数是满足如下等价条件的 $R$-代数 $A$:

- 存在 $R$-代数 $B$ 使得 $A\otimes_R B$ 与 $R$ [Morita 等价](Morita等价.md);
- $A\otimes_R A^{\mathrm{op}}$ 与 $R$ [Morita 等价](Morita等价.md);
- $A$ 的中心为 $R$, 且 $A$ 是 $R$ 上的[可分代数](可分代数.md);
- $A$ 为 $R$-模范畴 $\mathsf{Mod}(R)$ 的[有限生成投射生成元](紧投射生成元.md), 且典范的 $R$-模同态 $A\otimes_R A^{\mathrm{op}} \to \operatorname{End}_R(A)$ 为同构.

环上的 Azumaya 的概念可进一步推广为 [Azumaya 范畴](Azumaya范畴.md).

### 概形

**定义 1**. 概形 $X$ 上的 Azumaya 代数是满足如下条件的 $\mathcal O_X$-代数 $A$:

- $A$ 是[凝聚](凝聚层.md) $\mathcal O_X$-模;
- 对 $X$ 的闭点 $x$, $A_x$ 是 $\mathcal O_{X,x}$ 上的 Azumaya 代数. 由局部环上 Azumaya 代数的性质, 这个条件可以仅在点处的 "纤维" (剩余域) 上验证.

下面是一个等价的定义, 可视为将局部环上 Azumaya 代数的条件用 $X$ 的[内语言](意象的内语言.md)陈述 (在 $X$ 的[内语言](意象的内语言.md)中 $\mathcal O_X$ 为[局部环](局部环.md)):

**定义 2** ("内语言定义"). $A$ 为 $\mathcal O_X$-代数, 且为有限型 "自由" $\mathcal O_X$-模, 且 $A\otimes A^{\mathrm{op}} \to \operatorname{End}_{\mathcal O_X}(A)$ 为同构.

**注**. 内语言中的 "自由" 翻译到外部即局部自由.

另一个等价的定义是

**定义 3** ("[平展](平展景.md) / 平坦局部矩阵代数"). $A$ 为 $\mathcal O_X$-代数, 且为有限型 $\mathcal O_X$-模, 且存在[平展](平展景.md)覆盖 (或平坦覆盖) $(U_i \to X)$, 使得 $A_{U_i}$ 是 $\mathcal O_{U_i}$ 上的矩阵代数.

我们证明后两种定义与定义 1 等价.

- 假设 $A$ 在每个局部环 $\mathcal O_{X,x}$ 上均为 Azumaya 代数, 那么 $(A\otimes A^{\mathrm{op}})_x \simeq A_x\otimes A^{\mathrm{op}}_x$, $\operatorname{End}_{\mathcal O_X}(A)_x \simeq \operatorname{End}_{\mathcal O_{X,x}}(A_x)$, 于是 $A\otimes A^{\mathrm{op}} \to \operatorname{End}_{\mathcal O_X}(A)$ 为同构. 所以 "内语言定义" 与原定义等价.
- 假设 $A$ 在平展或平坦覆盖 $(U_i \to X)$ 上为矩阵代数. 那么 $U=\bigsqcup U_i$ 在 $X$ 上忠实平坦, 可得 $A$ 平坦从而为 Zariski 局部自由 $\mathcal O_X$-模. 在每一点 $x$ 的纤维 (剩余域) 上, 记 $A(x) := A_x \otimes k(x)$, 那么平坦覆盖 $U$ 上任何一个打到 $x$ 的点都给出 $k(x)$ 的一个域扩张 $k'$, 使得 $A(x) \otimes_{k(x)} k'$ 是 $k'$ 上的矩阵代数. 这推出 $A(x)$ 是 $k$ 上的中心单代数, 即 Azumaya 代数. 所以 "平坦局部矩阵代数" 与原定义等价.

### 环谱

设 $R$ 是 $\mathbb E_3$-[环谱](环谱.md), 那么 $\mathsf{Mod}(R)$ 是 $\mathbb E_2$-幺半范畴, [$1\mathsf{Pr}_R=\mathsf{Mod}(\mathsf{Mod}(R))$](高阶模.md) 是 $\mathbb E_1$-幺半范畴. 定义 $R$ 上的 Azumaya 代数为 $1\mathsf{Pr}_R$ 中的可逆对象.

## 性质

### 张量积

**命题**. 局部环 $R$ 上的 Azumaya 代数 $A,B$ 的张量积 $A\otimes_R B$ 仍为 Azumaya 代数.

_证明_. 这是如下事实的推论:

- $R$-代数 $A$ 为 Azumaya 代数当且仅当 $\bar{A}= A\otimes_R k$ 为 $k$ 上的 Azumaya 代数;
- 域上的 Azumaya 代数等同于[中心单代数](中心单代数.md);
- 域上的中心单代数的张量积仍为中心单代数.

### 函子性

局部环上 Azumaya 代数的概念有如下的函子性.

**命题**. 设 $A$ 是 $R$ 上的 Azumaya 代数, $R'$ 是局部环, 且有环同态 $R\to R'$ (甚至不要求为局部环同态), 则 $A\otimes_R R'$ 构成 $R'$ 上的 Azumaya 代数.

_证明_.
由已知,
$$
A\otimes_R A^{\mathrm{op}}
\simeq
\operatorname{End}_R(A).
$$
作用 $-\otimes_R R'$ 得
$$
A\otimes_R A^{\mathrm{op}}\otimes_R R'
\simeq
\operatorname{End}_R(A)\otimes_R R'.
$$
此即
$$
(A\otimes_R R')\otimes_{R'} (A\otimes_R R')^{\mathrm{op}}
\simeq
\operatorname{End}_{R'}(A\otimes_R R').
$$

### 与中心单代数的关系

下面的结论说明 Azumaya 代数是域上的[中心单代数](中心单代数.md)的推广.

**结论**. 设 $R$ 为局部环, $A$ 是 $R$ 上的 Azumaya 代数, 则

- $A$ 的[中心](中心.md)为 $R$,
- $A$ 的双边理想一一对应于 $R$ 的理想: 对于 $A$ 的双边理想 $I$, $I=(I\cap R)A$; 对于 $R$ 的理想 $J$, $J=JA\cap R$.

_证明_.
由于 $A\otimes_R A^{\mathrm{op}} \simeq \operatorname{End}_R(A)$,
对任意 $\varphi\in \operatorname{End}_R(A)$,
存在 $b_1,b'_1,\cdots,b_k,b'_k\in A$ 使得
$\varphi(a)=b_1ab'_1+\cdots +b_kab'_k$.
这说明

- 对于 $A$ 的中心的元素 $c$, 有 $\varphi(ac)=\varphi(a)c$;
- 对于 $A$ 的双边理想 $I$, 有 $\varphi(I)\subset I$.
		
设 $a_1=1,\cdots,a_n$ 是 $A$ 的一组 $R$-基.
考虑 $A$ 的 $R$-线性自同态 $\chi_i$, 满足 $\chi_i(a_j)=\delta_{ij}$.
那么 $\chi_i$ 的像包含于 $R$.
		
对 $A$ 的中心的元素 $c$, 设
$$
    c=\sum r_ia_i\,(r_i\in R),
$$
则 $c=\chi_1(a_1)c=\chi_1(a_1c)=r_1\in R$.
	
设 $I$ 是 $A$ 的双边理想.
对 $a\in I$, 设
$$
    a=\sum r_ia_i\,(r_i\in R),
$$
那么 $r_i=\chi_i(a)\in I$,
从而 $a\in (I\cap R)A$.
		
设 $J$ 是 $R$ 的理想.
对 $a\in JA$, 设
$$
    a=\sum r_ia_i\,(r_i\in J),
$$
那么 $a\in R$ 当且仅当 $r_i=0\,(i>1)$.
故 $JA\cap R = J$.

### 分类

由于 Azumaya 代数在平展局部上为矩阵代数, 而矩阵代数的自同构群为 [$\mathrm{PGL}_n$](PGLn.md), Azumaya 代数给出[非 Abel 上同调](非Abel上同调.md) $H^1(X_{\mathrm{\'et}},\mathrm{PGL}_n)$ 的元素.

另一方面, 对[平展意象](平展意象.md)中任意映射 $*\to\mathbf{B}\mathrm{PGL}_n$, 群同态 (闭嵌入)
$$
    \mathrm{PGL}_n \to \mathrm{GL}_{n^2}
$$
将其变为映射
$$
  {*} \to \mathbf{B}\mathrm{GL}_{n^2},
$$
由 $\mathrm{GL}_n$ 的 [Zariski 与平展的比较](Zar-fl-et.md), 它实际上来自于一个秩为 $n^2$ 的 Zariski 局部自由 $\mathcal O_X$-模.

### 与向量丛的关系

考虑群同态 ([Zariski 意象](Zariski意象.md)中的满射)
$$
\mathrm{GL}_n \to \mathrm{PGL}_n
$$
给出的[上同调](非Abel上同调.md)的映射
$$
H^1(X_{\mathrm{\'et}},\mathrm{GL}_n) \to H^1(X_{\mathrm{\'et}},\mathrm{PGL}_n).
$$
我们断言它将向量丛 $E$ 映射到 Azumaya 代数 $\operatorname{End}(E)$.

_证明_. 设 $E\colon * \to \mathbf{B}\mathrm{GL}_n$ 在 Zariski 覆盖 $U$ 上有平凡化
$$
\phi \colon \mathcal O_U^n \simeq E|_U.
$$
平凡化 $\phi$ 给出覆盖 $U$ 上实现了 $E$ 的 $\mathrm{GL}_n$-[Čech 上圈](非交换Čech上同调.md)
$$
(\phi\mathrm{pr}_2)^{-1}(\phi\mathrm{pr}_1)\colon  U\times U \to \mathrm{GL}_n.
$$
平凡化 $\phi$ 还给出同构
$$
\psi\colon M_n(\mathcal O_U) = \operatorname{End}(\mathcal O_U^n)\simeq \operatorname{End}(E|_U),
$$
其中 $\psi$ 的作用是将下图左边的竖向箭头变为右边的竖向箭头.
$$
\begin{array}
{ccc}
\mathcal O_U^n & \overset{\phi}{\to} & E|_U \\
\downarrow & & \downarrow\\
\mathcal O_U^n & \underset{\phi}{\to} & E|_U
\end{array}
$$
那么实现 $\operatorname{End}(E)$ 的一个 [$\mathrm{PGL}_n$](PGLn.md)-[Čech 上圈](非交换Čech上同调.md)为
$$
(\psi\mathrm{pr}_2)^{-1}(\psi\mathrm{pr}_1)\colon U\times U \to \mathrm{PGL}_n.
$$
注意到 $(\psi\mathrm{pr}_2)^{-1}(\psi\mathrm{pr}_1)$ 的作用是将下图最左边的竖向箭头变为最右边的竖向箭头.
$$
\begin{array}
{ccc}
\mathcal O_{U\times U}^n & \overset{\phi\mathrm{pr}_1}{\to} & E|_{U\times U} & \overset{\phi\mathrm{pr}_2}{\leftarrow} & \mathcal O^n_{U\times U} \\
\downarrow & & \downarrow & & \downarrow\\
\mathcal O_{U\times U}^n & \underset{\phi\mathrm{pr}_1}{\to} & E|_{U\times U} & \underset{\phi\mathrm{pr}_2}{\leftarrow} & \mathcal O^n_{U\times U}
\end{array}
$$
这正是前面实现了 $E$ 的 $\mathrm{GL}_n$-[Čech 上圈](非交换Čech上同调.md)
$$
(\phi\mathrm{pr}_2)^{-1}(\phi\mathrm{pr}_1)\colon  U\times U \to \mathrm{GL}_n
$$
在群同态 $\mathrm{GL}_n \to \mathrm{PGL}_n , X\mapsto X(-)X^{-1}$ 下的像 (详见 [$\mathrm{PGL}_n$](PGLn.md) 页面). $\square$

### Azumaya 代数的相似, Brauer 群

定义环或概形上 Azumaya 代数的相似关系: $A\sim A'$ 当且仅当存在 Zariski 局部自由模 $E,E'$ 使得 $A\otimes \operatorname{End}(E) \simeq A'\otimes \operatorname{End}(E')$.

注意到 $\operatorname{End}(E)\otimes \operatorname{End}(E') \simeq \operatorname{End}(E\otimes E')$, 故张量积保持相似关系; 全体相似等价类在张量积下构成一个群, 称为环或概形的 [Brauer 群](Brauer群.md).

**命题**. 两个 Azumaya 代数相似当且仅当它们作为结合代数 [Morita 等价](Morita等价.md).

_证明_. 由于 $\operatorname{End}(E)$ Morita 等价于基环, 且张量积保持 Morita 等价, Azumaya 代数的相似当然推出 [Morita 等价](Morita等价.md). 需要费点功夫的是另一个方向.

由 [Morita 等价](Morita等价.md)的刻画, $R$-代数 $A$ [Morita 等价](Morita等价.md)于 $R$ 当且仅当 $A\simeq\operatorname{End}_R(E)$, $E$ 为有限生成投射 $R$-模. 对于 $R$ 为局部环的情形, $E$ 为自由 $R$-模.

设局部环 $R$ 上 Azumaya 代数 $A,A'$ Morita 等价, 由定义, Azumaya 代数 $A$ 在 Morita 等价意义下的逆为 $A^{\mathrm{op}}$, 故有 $A\otimes_R (A')^{\mathrm{op}}$ Morita 等价于 $R$. 由前述结论, $A\otimes_R (A')^{\mathrm{op}} \simeq\operatorname{End}_R(E)$, $E$ 为自由 $R$-模.
两边以 $-\otimes_R A'$ 作用, 得
$A\otimes_R \operatorname{End}_R(A') \simeq A'\otimes_R\operatorname{End}_R(E')$, 故 $A,A'$ 作为 Azumaya 代数相似.

### 与束的关系

概形 $X$ 上的 Azumaya 代数 $A$ 给出一个[束](束.md) (gerbe) $F_A$:
对 $U\in X_{\mathrm{\'et}}$, $F_A(U)$ 是如下资料构成的 $1$-群胚:

- $U$ 上的向量丛 $E$;
- [代数](结合代数.md)同构 $A_U \simeq \operatorname{End}(E)$.

$F_A$ 局部非空是由于 Azumaya 代数[平展](平展景.md)局部同构于矩阵代数. 此[束](束.md)由群 $\mathbb G_m$ 控制:
$$
\begin{aligned}
    \operatorname{Aut}_{F_A(U)}(x)&\simeq \operatorname{Aut}_{\operatorname{Aut}(\operatorname{End}(E))}(\mathrm{id})\\
    &\simeq Z(\operatorname{End}(E))\simeq \mathbb G_m(U),
\end{aligned}
$$
(其中 $Z$ 表示代数的[中心](中心.md)) 从而 (由[束](束.md)与[上同调](上同调.md)的关系) 定义了 $H^2(X_{\mathrm{\'et}},\mathbb G_m)$ 的元素; 并且它平凡当且仅当 $F_A$ 有[整体](整体截面.md)元素, 即 $A$ 在整体上同构于一个向量丛的自同态代数.

## 例

### 特征 $p$ 的微分算子

设 $k$ 为特征 $p$ 域, $A = k\langle x,\partial \rangle / ([\partial ,x]-1)$ 为 [Weyl 代数](Weyl代数.md). 那么 $A$ 是 $k[x^{p},y^p]$ 上的 Azumaya 代数.

首先, $x^p, \partial^p$ 落在 $A$ 的中心中.

不妨设 $\bar k$ 代数闭; 由 Hilbert 零点定理, $k[x^p,y^p]$ 的极大理想形如 $(x^p-a,y^p-b)$; 设 $\alpha^p = a, \beta^p = b$, 则有同构
$$
A / (x^p - a ,y^p - b) \simeq \operatorname{End}_k(k[x]/x^p),
$$
$$
x\mapsto \text{乘 } (x+\alpha),\,y\mapsto \frac{\partial}{\partial x}+\beta.
$$

### 量子环面

设 $A = \mathbb{C}\langle z^{\pm 1}, t^{\pm 1} \rangle / (zt = qtz)$, $q\in\mathbb{C}^\times$ 为固定的常数. 这称为**量子环面** (quantum tori) 上的 "函数环". 设 $q$ 为 $n$ 次单位根, 则 $A$ 是 $\mathbb{C}[x^{\pm n}, t^{\pm n}]$ 上的 Azumaya 代数.
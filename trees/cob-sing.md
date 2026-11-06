---
title: 带奇点配边假设
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

带奇点配边假设是[配边假设](配边假设.md)的推广, 是关于 "带奇点流形" (下文将会定义) 的某种配边构成的[高阶范畴](高阶范畴.md)的万有性质.

> 奇点的奇应读 qí, 意为奇异, 反常的.

直观上, 配边范畴是一个对象自由生成的含对偶对称幺半 $(\infty,n)$-范畴, 而带奇点配边范畴则是奇点数据给出的各阶态射自由生成的含对偶对称幺半 $(\infty,n)$-范畴, 每维奇点数据 $X_k$ 的每个点给出一个 $k$-态射生成元, 而 $X_k$ 上的纤维丛 $E_k$ 指定这些 $k$-态射的类型.

## 陈述

### 带奇点流形

带奇点流形是一个非常广泛的概念, 我们先看几个方面的例子.

#### 局部锥形流形

我们知道, 流形 $Y$ 的[锥](锥(拓扑学).md) $C(Y) = Y\times [0,1] / Y\times\{1\}$ 一般不是流形, 问题在锥点的邻域不同于欧氏空间.

固定**一个**闭 $(k-1)$-维流形 $Y$, 考虑如下形状的广义流形: 拓扑空间 $M$ 带有子空间 $M_0\subset M$, 满足

- $M - M_0$ 为光滑流形;
- $M_0$ 为光滑流形;
- $M_0$ 的点在 $M$ 中有邻域, 形如 $M_0$ 中的邻域与 $C(Y)$ 的乘积. (注意这里不是说某个 $Y$, 而是指定的那个 $Y$.)

当然, $M_0$ 可以是空集, 那么 $M$ 本身为光滑流形.

用这种广义流形可以定义类似于配边范畴的范畴 $\mathsf{Bord}_n'$, 带有对称幺半函子 $\mathsf{Bord}_n\to\mathsf{Bord}'_n$.

注意到在 $\mathsf{Bord}'_n$ 中有 $k$-态射 $\varnothing \to Y$, 对应于 $C(Y)$. 某种意义上, $\mathsf{Bord}_n'$ 是由 $\mathsf{Bord}_n$ 加上这个态射自由生成的对称幺半 $(\infty,n)$-范畴. 具体地: 对任意含对偶的对称幺半 $(\infty ,n)$-范畴 $\mathcal C$ 与对称幺半函子 
$$
Z_0\colon \mathsf{Bord}_n\to\mathcal C,
$$
对任意态射
$$
1=Z_0(\varnothing) \to Z_0(Y),
$$
存在唯一的延拓
$$
Z\colon \mathsf{Bord}'_n\to\mathcal C.
$$

#### Feynman 图

Feynman 图是一种表示粒子相互作用过程的图 (作为带奇点的 $1$-流形). 若给一个 Feynman 图的每个顶点赋予一个有限维线性空间, 每个边赋予一个线性映射, 则整个图可以计算为一个线性映射. 这体现了如下的直观: Feynman 图的范畴 (对象是有限点集, 态射是 Feynman 图) 是一些对象和一些态射自由生成的含对偶对称幺半 $(\infty,1)$-范畴.

首先, 我们规定粒子和相互作用的种类数据 $\vec{X}$:

- 二重覆叠 (即 $\mathrm{O}(1)$-主丛) $\widetilde X_0 \to X_0$, 表示粒子的可能种类; 覆叠变换 $\widetilde {X}_0\to \widetilde {X}_0$, $p\mapsto \bar p$ 表示反粒子;
- 集合 $X_1$ 表示相互作用的可能种类; 覆叠空间 $E\to X_1$ (纤维为有限点集) 带有映射 $E\to \widetilde {X}_0$ 表示每种相互作用涉及的粒子种类.

现在定义 $\vec{X}$-Feynman 图为如下数据:

- 紧空间 $G$ 表示整个 Feynman 图;
- $G_0\subset G$ 是顶点集, $G-G_0$ 的每个连通分支是一条边;
- 每条边标记着一种粒子 $p\in P := \pi_0\widetilde X_0$ (与边的定向有关, 若边的定向反转则 $p$ 变为 $\bar p$);
- 每个顶点 $g\in G_0$ 标记着一种相互作用 $x\in X_1$, 有一个邻域同胚于 $C(E_x)$.

考虑这样一个范畴 $\mathsf{Bord}'_1$,

- 其对象为有限集, 每个元素标记着一种粒子 $p\in P$;
- 其态射为 Feynman 图.

给定 $\vec{X}$ 以及如下数据,

- 对每个粒子 $p$ 一个线性空间 $V_p$, 带有完美配对 $V_{p}\otimes V_{\bar p} \to k$,
- 对每个相互作用 $x$ 一个向量 $v_x\in\bigotimes_{e\in E_x} V_{\sigma(e)}$

便确定了唯一的对称幺半函子
$$
  \mathsf{Bord}'_1 \to \mathsf{Vect}.
$$

#### 畴壁

考虑带畴壁 (domain wall) 的流形:
$$
  M = M_- \sqcup_{M_0} M_+,
$$
其中 $\partial M_- = M_0 = \partial M_+ = M_- \cap M_+$. 直观上这是一个红蓝二染色的流形.

用带畴壁的流形可以定义类似于配边范畴的范畴 $\mathsf{Bord}_n'$, 带有两个对称幺半函子
$$
j_-, j_+\colon \mathsf{Bord}_n\to\mathsf{Bord}'_n.
$$
直观上 $j_-, j_+$ 就是将一个流形分别视为全红和全蓝的流形.

给定含对偶的对称幺半 $(\infty ,n)$-范畴 $\mathcal C$ 与两个 "体理论 (bulk theory)"
$$
Z_-, Z_+ \colon \mathsf{Bord}_n \to \mathcal C,
$$
对任意 $\mathrm{O}(n-1)$-等变态射
$$
Z_- (*) \to Z_+ (*),
$$
存在唯一的延拓
$$
Z\colon \mathsf{Bord}'_n \to \mathcal C.
$$

#### 切结构

[切结构](切结构.md)也是 "带奇点流形" 这一概念的特例.

#### 奇点数据的定义

**定义** (奇点数据, 粗略定义).
- 一个 $n$ 维奇点数据 $\vec X$ 是一列拓扑空间 $(X_0,X_1,\cdots,X_n)$, 一列向量丛 $\zeta_k \colon X_k\to\mathbf{B}\mathrm{O}(n-k)$, 以及一列纤维丛 $E_k\to X_k$.
- 一个 $m$ 维 $\vec X$-流形是[分层空间](分层.md) $M_n\subset \cdots\subset M_1\subset M_0 = M$, 满足 $M_k - M_{k-1}$ 是余 $k$ 维光滑流形, 带有 $(X_k,\zeta_k)$-[结构](切结构.md). 并且这些流形要以纤维丛 $E_k\to X_k$ 规定的方式相容.

**定义** (奇点数据, 严格定义). 固定自然数 $n$. 我们对 $0\leq k \leq n$ 归纳定义如下两个概念:

- **长为** $k$ 的**奇点数据** (singularity datum) $\vec{X}$;
- **余维** $V$ 的 $\vec{X}$-**流形**, 其中 $V$ 为不超过 $n-k$ 维的实线性空间.

定义如下.

- 长为 $k=0$ 的奇点数据 $\vec{X} = (X_0,\zeta_0)$ 是一个拓扑空间 $X_0$ 以及其上的 $n$ 阶实向量丛 $\zeta_0\colon X\to\mathbf{B}\mathrm{O}(n)$.
- 对于 $0< k\leq n$, 长为 $k$ 的奇点数据 $\vec{X} = (\vec{X}',X_k,\zeta_k,p\colon E_k\to X_k)$ 是一个长为 $(k-1)$ 的奇点数据 $\vec{X}'$ 加上一个拓扑空间 $X_k$, 一个 $(n-k)$ 阶实向量丛 $\zeta_k \colon X_k\to\mathbf{B}\mathrm{O}(n-k)$, 以及纤维丛 $p\colon E_k\to X_k$, 其在 $x\in X_k$ 上的纤维为 $\vec{X}'$-流形, 余维 $(\zeta_k)_x \oplus\mathbb{R}$.
- 设 $\vec{X}$ 为长为 $k$ 的奇点数据, 余维 $V$ 的 $\vec{X}$-流形是如下资料:
  - 拓扑空间 $M$,
  - 闭子空间 $M_k\subset M$, 构成 $n-k-\dim V$ 维光滑流形,
  - 映射 $q\colon M_k\to X_k$ 以及同构 $T_{M_k}\oplus V\simeq q^*\zeta_k$,
  - $M-M_k$ 上带余维 $V$ 的 $\vec{X}'$-流形结构,
  - $M_k$ 的开邻域 $U$, 以及商映射 $\left(0,1\right]\times q^*E\to U$, 其限制在 $(0,1)\times q^*E$ 上为嵌入, 限制在 $\{1\}\times q^*E$ 上为投影 $q^*E\to M_k$.

**注**.
- 长度为 $n$ 的奇点数据简称为 $n$ 维奇点数据. 长为 $k<n$ 的奇点数据也可以添加一些空的空间视为长为 $n$ 的奇点数据.
- 对于 $n$ 维奇点数据 $\vec X$ 与自然数 $m\leq n$, 定义 $m$ 维 $\vec X$-流形即为余维 $\mathbb{R}^{n-m}$ 的 $\vec X$-流形.

### 猜想的陈述

设 $\vec{X} = (\vec{X}',X_k,\zeta_k,p\colon E_k\to X_k)$ 为长为 $k$ 的奇点数据. 构造如下准备资料:
- 记 $\widetilde X_k\to X_k$ 为 $\zeta_k$ 对应的 $\mathrm{O}(n-k)$-[主丛](主丛.md), 即 $n-k$ 阶向量丛的正交标架丛);
- 一点 $\widetilde x \in \widetilde X_k$ 可视为 $x\in X_k$ 配备标架 $\alpha\colon (\zeta_k)_x \simeq \mathbb{R}^{n-k}$;
- 通过 $\alpha$, 可将纤维 $p^{-1}(x)$ 视为余维 $\mathbb{R}^{n-k+1}$ 的 $\vec{X}'$-流形, 对应于对象 $E_{\widetilde x} \in \Omega^{k-1}\mathsf{Bord}^{\vec{X}'}_n$ (对应 $\widetilde x\mapsto E_{\widetilde x}$ 关于 $\mathrm{O}(n-k)$-作用等变).

**猜想** (带奇点配边假设). 设 $\mathcal C$ 为含对偶的对称幺半 $(\infty,n)$-范畴. 给定对称幺半函子
$$
Z_0\colon \mathsf{Bord}^{\vec{X}'}_n \to \mathcal C
$$
以及 $\Omega^{k-1}\mathcal C$ 中的一族态射 $\eta_{\widetilde x}\colon 1=Z_0(\varnothing)\to Z_0(E_{\widetilde x})$ ($\widetilde x\in\widetilde X$, $\mathrm{O}(n-k)$-等变), 存在唯一的延拓
$$
Z\colon \mathsf{Bord}^{\vec X}_n \to\mathcal C.
$$

## 证明

设 $\mathcal C,\mathcal D$ 为对称幺半范畴, 其中 $\mathcal C$ 为 $(\infty ,n-1)$-范畴, $\mathcal D$ 为 $(\infty ,n)$-范畴. 设 $f\colon \mathcal C\to\mathcal D$ 为对称幺半函子. 可定义 $f$ 的**锥** $\operatorname{Cone}(f)$, 它是一个对称幺半 $(\infty ,n)$-范畴, 粗略描述如下:

- 其对象为 $D\in\mathcal D$;
- 态射 $D\to D'$ 为二元组 $(C,\eta\colon f(C)\otimes D \to D')$;
- 态射 $(C_1,\eta_1),(C_2,\eta_2)$ 的张量积为 $(C_1\otimes C_2,\eta_1\otimes \eta_2)$.

例如 $\mathcal D = 1$ 时, $f\colon \mathcal C\to 1$ 的锥就是 $\mathcal C$ 的[逆环](逆环路空间.md) $\mathbf{B}\mathcal C$, 满足其仅有一个对象, 且 $\Omega\mathbf{B}\mathcal C \simeq\mathcal C$.

注意到有自然的对称幺半函子 $\mathcal D\to\operatorname{Cone}(f)$, 对象 $D$ 对应 $D$ 自身, 而态射 $\eta\colon D\to D'$ 对应 $(1,\eta)$.

**定理** (相对配边假设). 给定对称幺半函子
$$
Z_0\colon \mathcal D\to\mathcal C,
$$
$$
f\colon \mathbf{B}^{k-1}\mathsf{Bord}_{n-k}^{(X,\zeta)}\to\mathcal D,
$$
以及 $\Omega^{k-1}\mathcal C$ 中的一族态射
$$
\eta_{\widetilde x}\colon 1 = Z_0(1)\to Z_0 (P_{\widetilde x})\,(\widetilde x\in\widetilde X),
$$
存在唯一的延拓
$$
Z\colon \operatorname{Cone}(f)\to\mathcal C.
$$

粗略地说, $\operatorname{Cone}(f)$ 是 $\mathcal D$ 自由添加一族 $k$-态射 $\eta_{\widetilde x}$ 生成的含对偶对称幺半 $(\infty,n)$-范畴.

例如 $\mathcal D = 1$ 时 $\operatorname{Cone}(f) = \mathbf{B}^k\mathsf{Bord}_{n-k}^{(X,\zeta)}$,
由配边假设它就是由一族 $k$-态射 $\eta_{\widetilde x}$ 自由生成的含对偶对称幺半 $(\infty,n)$-范畴. 这是普通配边假设应用于 $\Omega^k \mathcal C$ 得到的推论.
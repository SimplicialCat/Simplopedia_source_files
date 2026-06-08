---
title: Chtouca 与整体 Langlands 参数
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

本文是 [V. Lafforgue 文章](VLafforgueCht.md)的阅读笔记.

## 1. Hecke 叠

设 $X$ 为 $\mathbb F_q$ 上的不可约光滑射影曲线, $G$ 为约化群.

设 $N\subset X$ 为有限点集, 定义 $\mathrm{Bun}_{G,N}$ 为 $X$ 上具有 "$N$ 级结构" 的 $G$-丛的[模空间](模空间.md). 所谓 "$N$ 级结构" (structure de niveau $N$) $(\mathcal G,\psi)$ 是指在 $N$ 上的平凡化 $\psi\colon \mathcal G|_N \simeq G|_N$.

设 $I$ 为有限集, $(I_1,\cdots,I_k)$ 为 $I$ 的分划, 计顺序. 定义 **Hecke 叠**
$$
\mathrm{Hecke}_{N,I}^{(I_1,\cdots,I_k)}
$$
为如下资料的分类叠:

- $x_i\in X\setminus N$ ($i\in I$);
- $(\mathcal G_0,\psi_0),\cdots,(\mathcal G_k,\psi_k) \in \mathrm{Bun}_{G,N}$;
- 对 $j\in\{1,\cdots,k\}$, 同构 $\phi_j\colon \mathcal G_{j-1}|_{X\setminus \{x_i\colon i\in I_j\}} \simeq \mathcal G_{j}|_{X\setminus \{x_i\colon i\in I_j\}}$, 保持级结构.

简言之, $\mathrm{Hecke}_{N,I}^{(I_1,\cdots,I_k)}$ 的一个点对应着一个具有 $N$ 级结构的 $G$-丛经过一列调整, 每次调整 $I_j$ 个点处.

当 $N = \varnothing$ 时在记号中将其省略.

将 $(I_1,\cdots,I_k)$ 的某些相连片段合并, 相应地将调整过程的中间步骤遗忘, 可得遗忘映射
$$
\pi^{(I_1,\cdots,I_k)}_{(I'_1,\cdots,I'_{k'})}\colon \mathrm{Hecke}_{N,I}^{(I_1,\cdots,I_k)} \to \mathrm{Hecke}_{N,I}^{(I'_1,\cdots,I'_{k'})}.
$$
当然, 还有投影映射
$$
p_0\colon \mathrm{Hecke}_{N,I}^{(I_1,\cdots,I_k)} \to \mathrm{Bun}_{G,N}.
$$

定义 **Beilinson–Drinfeld Grassmann 空间** $\mathrm{Gr}_I^{(I_1,\cdots,I_k)}$ 为类似 $\mathrm{Hecke}_{I}^{(I_1,\cdots,I_k)}$ 的模空间, 但增加一个 $\mathcal G_k$ 的平凡化.

当 $I$ 为单点集时, 记 $\mathrm{Gr}_I^{(I)}$ 为 $\mathrm{Gr}$. 这个空间在一点 $x\in X$ 处的纤维就是通常说的[](仿射Grassmann空间.md), 即 fpqc 商 $G(F_x)/G(\mathcal O_x)$.

以 $\sum\infty x_i$ 表示各点 $x_i$ 的形式邻域的并. 考虑去心邻域 $\sum\infty x_i \setminus x_i$. 我们无需给出其定义, 只要求如下性质: 去心邻域上的同构 $\phi\colon \mathcal G \to \mathcal G'$ 相当于对 $G$ 的任意有限维表示 $V$ 给出一个态射 $V_{\mathcal G} \to V_{\mathcal G'}(N\sum x_i)$, 其中 $N$ 依赖于 $V$, 这些态射满足函子性, 且与张量积, 对偶相容.

> 注记. 这可视为 [Tannaka 重构](淡中对偶.md)观念的应用; 形式圆盘 $\infty x_i$ 上的 $G$-丛等同于对称幺半函子 $\mathsf{Rep}(G)\to\mathsf{QCoh}(\infty x_i)$, 而 $G$-丛的同构等同于这种函子之间的自然变换; 去心形式圆盘 $\infty x_i\setminus x_i$ 上的拟凝聚层范畴 $\mathsf{QCoh}(\infty x_i\setminus x_i)$ 是 $\mathsf{QCoh}(\infty x_i)$ 的一个[局部化](局部化(范畴论).md) (将 $\mathcal O(D)$ 的截面变得可逆), 而局部化范畴中的态射可用原范畴中的态射 $V_{\mathcal G} \to V_{\mathcal G'}(N x_i)$ 计算.

Beilinson–Drinfeld Grassmann 空间 $\mathrm{Gr}_I^{(I_1,\cdots,I_k)}$ 在 $(x_i)_{i\in I}$ 上的一个点是如下资料:
- $\sum\infty x_i$ 上的 $G$-丛 $\mathcal G_0,\cdots,\mathcal G_k$,
- $\mathcal G_{j-i}$ 和 $\mathcal G_{j}$ 在 $(\sum\infty x_i) \setminus \{x_i\colon i\in I_j\}$ 上的同构 $\phi_j$,
- $\mathcal G_k$ 的平凡化 $\theta$.

直观: 由于加入了 $\mathcal G_k$ 的平凡化, 并且 $\mathcal G_k$ 和前面每个 $\mathcal G_i$ 在 $x_i$ 之外同构, 故 $\mathcal G_i$ 可以只保留 $x_i$ 的形式邻域上的部分.

## 2. $G$-Chtouca 的叠

设 $I$ 为有限集, $(I_1,\cdots,I_k)$ 是 $I$ 的分拆. 设 $N\subset X$ 为有限点集, 定义 $(X\setminus N)^I$ 上的叠
$$
\mathrm{Cht}_{N,I}^{(I_1,\cdots,I_k)}
$$
分类的资料为 Hecke 叠所分类的资料加上一个保持级结构的同构
$$
\sigma\colon {^\tau\mathcal G_0} \overset{\sim}{\to} \mathcal G_k.
$$
有遗忘映射
$$
\gamma_{N,(I)}^{(I_1,\cdots,I_k)} \colon \mathrm{Cht}_{N,I}^{(I_1,\cdots,I_k)} \to \mathrm{Hecke}_{N,I}^{(I_1,\cdots,I_k)},
$$
忘掉同构 $\sigma$; 有投影映射
$$
\mathfrak p_{N,I}^{(I_1,\cdots,I_k)}\colon \mathrm{Cht}_{N,I}^{(I_1,\cdots,I_k)} \to (X\setminus N)^I,
$$
称为**爪** (les pattes).

将 $(I_1,\cdots,I_k)$ 的某些相连片段合并, 相应地将 chtoucas 的中间步骤遗忘, 可得遗忘映射
$$
\pi^{(I_1,\cdots,I_k)}_{(I'_1,\cdots,I'_{k'})}\colon \mathrm{Cht}_{N,I}^{(I_1,\cdots,I_k)} \to \mathrm{Cht}_{N,I}^{(I'_1,\cdots,I'_{k'})}.
$$

## 4. 上同调的层

### 4.2

定义
$$
\begin{aligned}
\mathcal H^{\leq\mu,E}_{N,I,\underline\omega} &= R(\mathfrak p_{N,I}^{(I_1,\cdots,I_k),\leq \mu})_!
(\mathcal F^{(I_1,\cdots,I_k)}_{N,I,\underline\omega,\Xi,E}|_{\mathrm{Cht}_{N,I,\underline\omega}^{(I_1,\cdots,I_k),\leq \mu}})\\
&\in D_c^b((X\setminus N)^I,E).
\end{aligned}
$$

## 5. 创生与湮灭



### 特化同态 (spécialisation)
$$
\mathfrak {sp}\colon 
$$

有同构
$$
\begin{aligned}
\mathfrak {sp}^*\colon& (\operatorname{colim}_\mu \mathcal H_{N,I,W}^{0,\leq\mu,E}|_{\Delta(\bar\eta)})^{\text{Hf}}
\\
\simeq\,&(\operatorname{colim}_\mu \mathcal H_{N,I,W}^{0,\leq\mu,E}|_{\overline{\eta^I}})^{\text{Hf}}.
\end{aligned}
$$

定义远足算子 $S_{I,W,x,\xi,(\gamma_i)_{i\in I}}$ 为如下复合:
$$
S_{I,W,x,\xi,(\gamma_i)_{i\in I}} := C_\xi^\flat 
(\mathfrak{sp}^*)^{-1}(\gamma_i)_{i\in I}\mathfrak {sp}^*
C_\xi^\sharp.
$$


---
title: Barwick 算子范畴
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

[Clark Barwick 文章](BarwickOpeCat.md)的笔记. 将原文转写为模型无关语言.


---

回忆 $\infty$-范畴可由[单纯形](单纯形范畴.md) (即一串连续的箭头) [探测](探测.md), 给出[单纯生象](单纯对象.md). 类似地, [算畴](算畴.md) ([多重范畴](多重范畴.md)) 可由类似于[树](树.md)的对象探测. 本文建立了一个统一的框架, 由算子范畴 $\Phi$ 出发构造探测用的 "$\Phi$-序列", 分别在 $\Phi = 1$ 和 $\Phi = \mathsf{Fin}$ 的情形恢复出 $\infty$-范畴与算畴的概念.


## 算子范畴

**定义**. 一个**算子范畴** (operator category) $\Phi$ 是满足如下条件的范畴:

- $\Phi$ 具有[终对象](终对象.md) $1$; 记 $|I|:=\operatorname{Hom}(1,I)$, 称之为 $I$ 的**点**的集合;
- 态射集 $\operatorname{Hom}(I,J)$ 均为有限集;
- 对任意态射 $I\to J$ 以及 $j\in |J|$, 有[纤维](纤维列.md) $\{j\}\times_J I$.

定义算子范畴之间的态射为满足如下条件的函子 $G\colon \Psi\to\Phi$:

- $G$ 保持终对象以及纤维操作;
- 对任意 $I\in\Psi$, $|I|\to |GI|$ 为满射.

记算子范畴的 $2$-范畴为 $\mathsf{Op}$.

**例**. 终范畴 $1$, 有限全序集范畴 $\mathsf{Ord}$ (态射为偏序集映射), 有限集范畴 $\mathsf{Fin}$ 均为算子范畴.

**注**. 范畴 $\mathsf{Ord}$ 就是[增广单纯形范畴](单纯形范畴.md) $\Delta_+$, 但在这里我们有意避免使用这个称呼, 因为单纯形范畴 $\Delta$ 将以另一种身份出现, 我们想要避免混淆.

**命题**.
- $1$ 是 $\mathsf{Op}$ 的始对象.
- $\mathsf{Fin}$ 是 $\mathsf{Op}$ 的[终对象](终对象.md): 对任意算子范畴 $\Phi$, 有态射 $\Phi\to\mathsf{Fin}$, $I\mapsto |I|$.

**定义**. 对于算子范畴 $\Phi$ 与自然数 $n$, 记 $\Phi_{\leq n}$ 为其中具有不超过 $n$ 个点的对象构成的全子范畴. 这也是一个算子范畴.

**定义**. 对于算子范畴 $\Psi,\Phi$, 定义其[圈积](圈积.md) $\Psi\wr\Phi$ 为如下范畴:

- 其对象为
  $$
    (I\in\Phi,(M_i\in\Psi)_{i\in |I|}),
  $$
- 态射 $(I,(M_i)) \to (J,(N_j))$ 为
  $$
    (\eta\colon I\to J,(\omega_i\colon M_i\to N_{\eta(i)})_{i\in |I|}).
  $$

容易看到 $\Psi\wr\Phi$ 仍是算子范畴:

- 其终对象为 $(1,(1))$;
- 对象 $(I,(M_i))$ 的一个点就是 $I$ 的一个点 $i$ 配上 $M_i$ 的一个点, $|(I,(M_i))| \simeq \sum_{i\in I} |M_i|$ 为有限个有限集之[和](和(范畴论).md);
- 态射 $(\eta,(\omega_i))\colon (I,(M_i)) \to (J,(N_j))$ 在点 $(j,n)$ 处的纤维为 $(\eta^{-1}(j),(\omega_i^{-1}(n))_{i\in |\eta^{-1}(j)|})$.

**例**. $\mathsf{Ord} \wr \mathsf{Ord}$ 的对象可理解为一个全序集上的丛, 每个纤维又是一个全序集. 态射就是把每个纤维映射到对方的某个纤维, 保持底和纤维上的序.

**定理**. 圈积是 $\mathsf{Op}$ 上的一个[幺半](幺半范畴.md)结构.

## 一类重要的态射: 区间含入

**定义** (区间含入). 设 $\Phi$ 为算子范畴, 称如下[拉回](拉回.md)图中的态射 $K\to J$ 为纤维含入,
$$
\begin{array}{ccc}
K & \rightarrow & J \\
\downarrow &  & \downarrow \\
\{i\} & \rightarrow & I
\end{array}
$$
称一串纤维含入的复合为**区间含入**.

**例**.
- $\mathsf{Ord}$ 中的区间含入是 $\{k < k+1 < \cdots < \ell\} \subset \{1 < \cdots < n\}$.
- $\mathsf{Fin}$ 中的区间含入即为单射.

区间含入的性质:

- 区间含入为单射, 且关于拉回与复合封闭.
- 若 $\phi\colon K\to J$ 为区间含入, $\psi\colon L\to K$ 为任意态射, 则 $\psi$ 为区间含入当且仅当 $\phi\psi$ 为区间含入.
- 若 $\phi\colon K\to J$ 为区间含入, 

## 算子范畴中的序列

**定义**.
设 $\Phi$ 为算子范畴, 定义范畴 $\Delta_{\Phi}$ 如下:

- $\Delta_{\Phi}$ 的对象为 $\Phi$ 中的序列 $I_0\to I_1 \to \cdots \to I_n$, 即有限全序集 $[n]$ 到 $\Phi$ 的函子, 简记为 $([n],I)$;
- 态射 $([n],I) \to ([m], J)$ 为态射 $\eta\colon [n]\to [m]$ 以及自然变换 $\phi\colon J\to I\eta$, 使得 $J_k \to I_{\eta(k)}$ 均为区间含入, 且自然性方块均为[拉回](拉回.md).

**例**.

- $\Delta_1 = \Delta$ 就是[单纯形范畴](单纯形范畴.md).
- $\Delta_{\mathsf{Fin}}$ 是[分层森林](分层树.md)的范畴.

注意到 $\Delta_{\Phi}$ 关于 $\Phi$ 有函子性; 特别地, 对任何 $\Phi$ 都有函子 $\Delta \to \Delta_{\Phi}$.

**定义** (完备 Segal $\Phi$-算畴). 设 $\Phi$ 为算子范畴, 定义**完备 Segal $\Phi$-算畴**为满足如下条件的函子 $X\colon \Delta_{\Phi}^{\mathrm{op}} \to \mathsf{Ani}$:

- $X([n],I) \overset{\simeq}{\to} \prod_{i\in |I_m|} X(I_{0,i}\to I_{1,i}\to\cdots\to \{i\})$;
- $X([n],I) \overset{\simeq}{\to} X(I_0\to I_1)\times_{X(I_1)}\cdots\times_{X(I_{m-1})}X(I_{m-1}\to I_m)$;
- $X|_\Delta$ 为[完备 Segal 生象](范畴对象.md).

记这样的函子构成的全子范畴为 $\mathsf{Operad}_\Phi$.

**例**.

- 完备 Segal $1$-算畴就是[完备 Segal 生象](范畴对象.md).
- 完备 Segal $\mathsf{Fin}$-算畴就是 ([Lurie](LurieHA.md) 意义下的) [对称算畴](算畴.md).

**命题**. 对于算子范畴的态射 $G\colon \Psi \to \Phi$ 有伴随
$$
G_! \dashv G^*\colon \mathsf{Operad}_\Psi
\rightleftarrows \mathsf{Operad}_\Phi.
$$

**例**. 考虑态射 $u\colon \mathsf{Ord}\to\mathsf{Fin}$, 称 $u_!\colon \mathsf{Operad}_{\mathsf{Ord}}\to \mathsf{Operad}_{\mathsf{Fin}}$ 为非对称算畴的**对称化**. $\mathsf{Operad}_{\mathsf{Ord}}$ 的终对象的对称化即为算畴 $\mathbb E_1$.



## 算子范畴给出单子

**定义** (点分类子). 设 $\Phi$ 为算子范畴. 若存在对象 $I$ 与其中的点 $i$, 使得对任意对象 $J$ 和点 $j$, 存在唯一的态射 $f\colon J\to I$ 使得 $f^{-1}(j) = \{i\}$, 则称 $(I,i)$ 为**点分类子** (point classifier).

由于点分类子由万有性质定义, 当它存在是它就是唯一的.

**例**.

- $\mathsf{Fin}$ 的点分类子为 $(\{0,1\}, 1)$.
- $\mathsf{Ord}$ 的点分类子为 $(\{0<1<2\} , 1)$; 直观: $0$ 表示基点以下, $1$ 表示基点, $2$ 表示基点以上.
- $\mathsf{Ord}\wr\mathsf{Ord}$ 的点分类子为 $\big({(\{0<1<2\},(\{0\},\{0<1<2\},\{0\}))},(1,1)\big)$. 直观:
  $$
    \begin{array}{ccc}
    & * &\\
     * & \star & *\\
     & * &
    \end{array}
  $$
  其中 $\star$ 表示那个特殊的点.
- 一般地, $\mathsf{Ord}^{\wr \,n}$ 都存在点分类子.

**定义** (完美算子范畴). 称满足如下条件的算子范畴 $\Phi$ 为完美算子范畴:

- $\Phi$ 存在点分类子 $(T,t)$;
- 函子 $\operatorname{fib}\colon \Phi_{/T} \to \Phi$ 有[右伴随](伴随.md).

由于这对伴随, 完美算子范畴 $\Phi$ [给出 $\Phi$ 上的单子](伴随给出单子.md) $T_\Phi$.

**例**.

- 

## Leinster 范畴

**定义**. 设 $\Phi$ 为完美算子范畴, 称 $T_\Phi$ 的 [Kleisli 范畴](Kleisli范畴.md)为 $\Phi$ 的 **Leinster 范畴** $\Lambda (\Phi)$.
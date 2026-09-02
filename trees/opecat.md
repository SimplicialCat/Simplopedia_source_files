---
title: Barwick 算子范畴
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

[Clark Barwick 文章](BarwickOpeCat.md)的笔记. 将原文转写为模型无关语言.


---

回忆 $\infty$-范畴可由[单纯形](单纯形范畴.md) (即一串连续的箭头) [探测](探测.md), 给出[单纯生象](单纯对象.md). 类似地, [算畴](算畴.md) ([多重范畴](多重范畴.md)) 可由类似于[树](树.md)的对象探测. 本文建立了一个统一的框架, 由算子范畴 $\Phi$ 出发构造探测用的 "$\Phi$-序列", 分别在 $\Phi = 1$ 和 $\Phi = \mathsf{Fin}$ 的情形恢复出 $\infty$-范畴与算畴的概念.


---

**定义**. 一个**算子范畴** (operator category) $\Phi$ 是满足如下条件的范畴:

- $\Phi$ 具有[终对象](终对象.md) $1$; 记 $|I|=\operatorname{Hom}(1,I)$, 称之为 $I$ 的**点**的集合;
- 态射集 $\operatorname{Hom}(I,J)$ 均为有限集;
- 对任意态射 $I\to J$ 以及 $j\in |J|$, 有纤维 $\{j\}\times_J I$.

定义算子范畴之间的态射为满足如下条件的函子 $G\colon \Psi\to\Phi$:

- $G$ 保持终对象以及纤维操作;
- 对任意 $I\in\Psi$, $|I|\to |GI|$ 为满射.

记算子范畴的 $2$-范畴为 $\mathsf{Op}$.

**例**. 终范畴 $1$, [单纯形范畴](单纯形范畴.md) $\Delta$, 有限集范畴 $\mathsf{Fin}$ 均为算子范畴. $\mathsf{Fin}$ 是 $\mathsf{Op}$ 的终对象: 对任意算子范畴 $\Phi$, 有态射 $\Phi\to\mathsf{Fin}$, $I\mapsto |I|$.

**定义**. 对于算子范畴 $\Phi$ 与自然数 $n$, 记 $\Phi_{\leq n}$ 为其中具有不超过 $n$ 个点的对象构成的全子范畴. 这也是一个算子范畴.

**定义**. 对于算子范畴 $\Psi,\Phi$, 定义其[圈积](圈积.md) $\Psi\wr\Phi$ 为如下范畴:

- 其对象为
  $$
    (I\in\Phi,(M_i\in\Psi)_{i\in |I|}),
  $$
- 态射 $(I,(M_i)) \to (J,(N_j))$ 为
  $$
    (\eta\colon I\to J,(\omega_j\colon M_i\to N_{\eta(i)})_{i\in |I|}).
  $$

**定理**. 圈积是 $\mathsf{Op}$ 上的一个[幺半](幺半范畴.md)结构.


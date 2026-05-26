---
title: Chtouca 与整体 Langlands 参数
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

本文是 [V. Lafforgue 文章](VLafforgueCht.md)的阅读笔记.

## 1. Hecke 叠

## 2. $G$-Chtouca 的叠

设 $I$ 为有限集, $(I_1,\cdots,I_k)$ 是 $I$ 的分拆. 设 $N\subset X$ 为有限点集, 定义 $(X\setminus N)^I$ 上的叠
$$
\mathrm{Cht}_{N,I}^{(I_1,\cdots,I_k)}
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


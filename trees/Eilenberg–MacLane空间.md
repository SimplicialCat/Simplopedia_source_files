---
title: Eilenberg–MacLane 对象
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

对正整数 $n$ 与群 $G$ (当 $n>1$ 时要求为 Abel 群), Eilenberg–MacLane 空间 $K(G,n)$ 是同伦等价意义下唯一以 $G$ 为 $n$ 阶[同伦群](同伦群.md)的 $n$-[截断](截断性.md) $(n-1)$-[连通](连通性.md)空间.

**定义**. 在 [$\infty$-意象](意象.md) $\mathcal C$ 中, 定义 $n$ 阶 **Eilenberg–MacLane 对象**是指**带点** $n$-[截断](截断性.md) $(n-1)$-[连通](连通性.md)对象. 记 $n$ 阶 Eilenberg–MacLane 对象的范畴为 $\mathsf{EM}_n(\mathcal C) = \mathcal C_{*/}^{\geq n,\leq n}$.

Eilenberg–MacLane 对象 $(X,*)$ 被它的 $n$ 阶同伦群 $\pi_n(X,*)$ 唯一决定. 证明见后文.

**注**. Eilenberg–MacLane 对象的定义中**带点**条件很重要. 不带点的 $n$-[截断](截断性.md) $(n-1)$-[连通](连通性.md)对象称为 $n$-[束](束.md) (gerbe).

## 性质

**命题** ([HTT 7.2.2.12](LurieHTT.md)).
设 $\mathcal C$ 为 [$\infty$-意象](∞-意象.md), 考虑 $n$ 阶[同伦群](同伦群.md)函子
$$
\pi_n = \tau_{\leq 0}\circ \Omega^n \colon \mathcal C_{*/} \to (\mathcal C_{*/})_{\leq 0}.
$$
那么

- 对 $n=0$, $\pi_0$ 给出了等价 $\mathsf{EM}_0(\mathcal C)\simeq \mathcal C_{*/}^{\leq 0}$;
- 对 $n=1$, $\pi_1$ 给出了等价 $\mathsf{EM}_1(\mathcal C)\simeq \mathsf{Grp}(\mathcal C_{\leq 0})$;
- 对 $n\geq 2$, $\pi_n$ 给出了等价 $\mathsf{EM}_n(\mathcal C)\simeq \mathsf{Ab}(\mathcal C_{\leq 0})$.

换言之, 在等价
$$
\Omega^n \colon \mathcal C_{*/}^{\geq n} \simeq \mathsf{Grp}_{\mathbb E_n}(\mathcal C)
$$
中, 两边的子范畴 $\mathsf{EM}_n(\mathcal C)$ 与 $\mathsf{Grp}_{\mathbb E_n}(\mathcal C_{\leq 0})$ 相对应.

记上述等价的逆为 $K(-,n)$.

**推论**. Eilenberg–MacLane 对象 $K(A,n)$ 是 $A$ 的 $n$ 阶[逆环路空间](逆环路空间.md) $\mathbf{B}^n A$.



## 例

### 一维 CW 复形

一维 CW 复形是 $K(G,1)$, 其中 $G$ 为其基本群.

### 射影空间

- $\mathbb{R}P^\infty$ 是 $K(\mathbb{Z}_2,1)$.
- $\mathbb{C}P^\infty$ 是 $K(\mathbb{Z},2)$.
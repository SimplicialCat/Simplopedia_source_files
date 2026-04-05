---
title: Morita 等价
tag: 百科
subject : [范畴论](范畴论.md)
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Morita 等价是[模范畴](高阶模.md)的等价. 通过追踪具有特殊范畴论性质的对象 ([有限生成投射生成元](紧投射生成元.md)), 可以给出 Morita 等价的具体刻画.

更一般的观念见 [Morita 等价 (观念)](Morita等价(观念).md).

## 定义

### 代数

设 $k$ 为交换环, $A,B$ 为 $k$ 上的[结合代数](结合代数.md), 若如下等价条件成立, 则称 $A$ 与 $B$ **Morita 等价**:

- 左模范畴 $\mathsf{LMod}(A)$ 与 $\mathsf{LMod}(B)$ 等价;
- 右模范畴 $\mathsf{RMod}(A)$ 与 $\mathsf{RMod}(B)$ 等价;
- 存在 $(A,B)$-双模 $M$ 与 $(B,A)$-双模 $N$ 满足
$$
M\otimes_B N\simeq A,\,N\otimes_A M\simeq B.
$$
- $A$ 同构于左 (右) $B$-模范畴中某个[有限生成投射生成元](紧投射生成元.md)的自同态代数.
- $B$ 同构于左 (右) $A$-模范畴中某个[有限生成投射生成元](紧投射生成元.md)的自同态代数.

### 充实范畴

设 $\mathcal V$ 为 (完备, 余完备) 闭[对称幺半范畴](对称幺半范畴.md), 例如交换环 $R$ 上的模范畴 $\mathsf{Mod}(R)$.

回忆, $\mathcal V$ 中的[结合代数](结合代数.md)等同于仅有一个对象的 $\mathcal V$-[充实范畴](充实范畴.md). 所以结合代数的 Morita 等价是下面的概念的特例:

**定义**. 对于两个 $\mathcal V$-[充实范畴](充实范畴.md) $\mathcal A,\mathcal B$, 定义其 **Morita 等价**为如下两个等价的条件:

- $\mathcal V$-充实范畴 $\mathsf{LMod}(\mathcal A)$ 与 $\mathsf{LMod}(\mathcal B)$ 等价;
- 存在 $(\mathcal A,\mathcal B)$-双模 $M$ 与 $(\mathcal B,\mathcal A)$-双模 $N$ 满足
    $$
        M\otimes_{\mathcal B} N\simeq\mathcal A,\,\, N\otimes_{\mathcal A}M\simeq\mathcal B.
    $$

见[充实范畴上的模](充实范畴上的模.md).

## 性质

以下的 "环" 指的是固定的含幺交换环 $k$ 上的[结合代数](结合代数.md).

**定义**. 环 $A$ 上的右模 $M$ 的 **Morita 语境** (Morita context) 是如下的六元组 $(A,M,N,E,\alpha,\beta)$:


- $N=\operatorname{Hom}_A(M,A)$;
- $E= \operatorname{End}_A(M)$;
- $M\in\mathsf{BiMod}(E,A)$, $N\in\mathsf{BiMod}(A,E)$;
- $\alpha\colon N\otimes_{E} M \to A$, $f\otimes x\mapsto f(x)$;
- $\beta\colon M\otimes_A N \to E$, $x\otimes f\mapsto xf(-)$;

下面两个命题显示了**生成元**和**有限生成投射**这两个性质之间的某种类比; 这两个性质是**纯范畴论**性质, 也即在范畴等价之下不变; 特别地, 模范畴之间的等价必须尊重这两个性质. 代数 $A$ 在 $\mathsf{RMod}(A)$ 中同时是生成元与有限生成投射对象, 从而在任何等价的范畴中也是[有限生成投射生成元](紧投射生成元.md). 这一观察是 Morita 理论的核心.

**命题**.
设 $M$ 是 $\mathsf{RMod}(A)$ 的[生成元](生成元(范畴论).md), 则

- $\alpha\colon N\otimes_E M\to A$ 为同构;
- $N\simeq \operatorname{Hom}_{\mathsf{LMod}(E)}(M,E)\in\mathsf{BiMod}(A,E)$;
- $M\simeq \operatorname{Hom}_{\mathsf{RMod}(E)}(N,E)\in\mathsf{BiMod}(E,A)$;
- $A\simeq\operatorname{End}_{\mathsf{RMod}(E)}(N)\simeq\operatorname{End}_{\mathsf{LMod}(E)}(M)$.

**命题**.
设 $M$ 是 $\mathsf{RMod}(A)$ 的[有限生成](可表现对象.md)[投射对象](投射对象.md), 则

- $\beta\colon M\otimes_A N \to E$ 为同构;
- $M\simeq \operatorname{Hom}_{\mathsf{LMod}(A)}(N,A)\in\mathsf{BiMod}(E,A)$;
- $N\simeq\operatorname{Hom}_{\mathsf{RMod}(A)}(M,A)\in\mathsf{BiMod}(A,E)$ (当然, 这就是 $N$ 的定义);
- $E\simeq \operatorname{End}_{\mathsf{RMod}(A)}(M) \simeq\operatorname{End}_{\mathsf{LMod}(A)}(N)$ (第一个同构就是 $E$ 的定义).

**命题** ("Morita I"). 设 $M$ 是 $\mathsf{RMod}(A)$ 的[有限生成投射生成元](紧投射生成元.md), $(A,M,N,E,\alpha,\beta)$ 是对应的 Morita 语境, 则

- $-\otimes_A N \colon \mathsf{RMod}(A) \to \mathsf{RMod}(E)$ 与 $-\otimes_E M \colon \mathsf{RMod}(E) \to \mathsf{RMod}(A)$ 是一对互逆的等价;
- $N\otimes_E - \colon \mathsf{LMod}(E) \to \mathsf{LMod}(A)$ 与 $M\otimes_A - \colon \mathsf{LMod}(A) \to \mathsf{LMod}(E)$ 是一对互逆的等价.

**命题** ("Morita II"). 设 $A,B$ 为环,
$$
F\colon \mathsf{RMod}(A) \to \mathsf{RMod}(B),
G\colon \mathsf{RMod}(B) \to \mathsf{RMod}(A)
$$
为互逆的等价,
则有

- $N = F(A) \in\mathsf{BiMod}(A,B)$, $F\simeq -\otimes_A N$;
- $M = G(B) \in\mathsf{BiMod}(B,A)$, $G\simeq -\otimes_B M$.

**定义**. 对于环 $A,B$ 与右 $A$-模 $M$, 若 $(B,A)$-双模 $M$ 为 $\mathsf{RMod}(A)$ 的[有限生成投射生成元](紧投射生成元.md), 且 $B\simeq\operatorname{End}_{\mathsf{RMod}(A)}(M)$, $A\simeq\operatorname{End}_{\mathsf{LMod}(E)}(M)$, 则称 $M$ 为 $(B,A)$-**pro-生成元** (progenerator).

**命题** ("Morita III"). 范畴等价 $\mathsf{RMod}(A) \to \mathsf{RMod}(B)$ 的同构类一一对应于 $(B,A)$-pro-生成元的同构类. 范畴等价的复合等同于紧投射生成元的张量积.
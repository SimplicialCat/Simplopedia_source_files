---
title: Hochschild 上同调
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

[结合代数](结合代数.md)的 Hochschild 上同调又称[中心](中心.md).

## 定义

### 结合代数

固定基环 $k$, 定义 $k$ 上的[结合代数](结合代数.md) $A$ 的 **Hochschild 上同调**为
$$
\mathrm{HH}^* (A) := \operatorname{End}_{A\otimes A^{\mathrm{op}}}(A),
$$
其中 $A$ 是 $A\otimes A^{\mathrm{op}}$-左模, 即 $(A,A)$-双模.

### 范畴

范畴 $\mathcal C$ 的 Hochschild 上同调 (又叫[中心](中心.md)) 为
$$
\operatorname{HH}^*(\mathcal C) :=\operatorname{End}_{\operatorname{End}(\mathcal C)}(\mathrm{id}).
$$

### 可对偶可表现范畴

固定一个基环 $k$. 设 $\mathcal C$ 是 [$\mathsf{Pr}_{k}$](高阶模.md) 的[可对偶对象](可对偶对象.md), 记其对偶为 $\mathcal C^\vee$, 定义 $\mathcal C$ 的 Hochschild 同调 $\operatorname{HH}(\mathcal C)\in\mathsf{Mod}_k$ 为如下复合函子的表示对象:
$$
\mathsf{Mod}(k) \overset{\mathrm{coev}}{\longrightarrow}\mathcal C\otimes_k\mathcal C^{\vee} \overset{\mathrm{ev}}{\longrightarrow} \mathsf{Mod}(k).
$$
更一般地, 对于函子 $f\colon \mathcal C \to \mathcal C$, 定义
$\operatorname{HH}(\mathcal C,f)\in\mathsf{Mod}_k$ 为如下复合函子的表示对象:
$$
\mathsf{Mod}(k) \overset{\mathrm{coev}}{\longrightarrow}\mathcal C\otimes_k\mathcal C^{\vee} \overset{f\otimes\mathrm{id}}{\longrightarrow} \mathcal C\otimes_k\mathcal C^{\vee} \overset{\mathrm{ev}}{\longrightarrow} \mathsf{Mod}(k).
$$

特别地, 当 $\mathcal C = \mathsf{LMod}(A)$ 是 $k$-代数 $A$ 上的左模范畴时, $\operatorname{HH}(\mathcal C) = A\otimes_{A\otimes A^{}}$

### 传统定义

设 $k$ 为域, $R$ 为 $k$-代数, $M$ 为 $R$ 双模. 考虑[单纯](单纯对象.md) $R$-模 $C_\bullet(R,M):= M\otimes_k R^{\otimes \bullet}$, 其面映射具体为
$$
d_0\colon (m\otimes r_1\otimes \cdots \otimes r_n) \mapsto (m r_1\otimes r_2\otimes\cdots\otimes r_n),
$$
$$
d_i\colon (m\otimes r_1\otimes \cdots \otimes r_n) \mapsto (m\otimes r_1\otimes\cdots\otimes r_ir_{i+1}\otimes\cdots\otimes r_n),
$$
$$
d_n\colon (m\otimes r_1\otimes \cdots \otimes r_n) \mapsto (r_nm\otimes r_1\otimes\cdots\otimes r_{n-1}).
$$

对于 $M=R$, 记 $C_n(R)=C_n(R,R)$.
**Hochschild 同调** $H_\bullet(R,M)$ 即是上述[单纯](单纯对象.md)模的同调; 对于 $M=R$, 记 $HH_n(R) = H_n(R,R)$.

类似地定义 **Hochschild 上同调** $H^\bullet (R,M)$ 为复形 $\operatorname{Hom}(R^{\otimes n},M)$ 的上同调, 其中 $\delta=\sum_i (-1)^i \delta_i$, $\delta_i$ 定义为
$$
(\delta_0 f)(r_1\otimes\cdots\otimes r_n) =r_1 f(r_2\otimes\cdots\otimes r_n),
$$
$$
(\delta_i f) (r_1\otimes \cdots\otimes r_n) = f(r_1\otimes\cdots\otimes r_ir_{i+1}\otimes\cdots\otimes r_n),
$$
$$
(\delta_n f)(r_1\otimes\cdots\otimes r_n) = f(r_1\otimes\cdots \otimes r_{n-1})r_n.
$$
对于 $M=R$, 记 $HH^n(R)=H^n(R,R)$.

## 性质

考虑 $R$ 的中心 $Z(R)$, 可以证明 $H_*(R,M)$ 上有 $Z(R)$-双模结构.

## 与 Tor, Ext 的关系


## 相关概念

[Hochschild 同调](Hochschild同调.md)
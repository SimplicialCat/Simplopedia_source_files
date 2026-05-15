---
title: Fourier 变换
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Fourier 变换是 Abel 群上的函数关于平移算子生成的交换 [$C^*$-代数](C-星代数.md)的[谱分解](谱分解.md).

## 定义

### 局部紧 Abel 群

[局部紧 Abel 群](局部紧Abel群.md) $G$ 上的 $\mathbb{C}$-值可积函数 $f$ 的 **Fourier 变换**是 $G$ 的 [**Pontryagin 对偶**](Pontryagin对偶.md) $\widehat {G} = \operatorname{Hom}(G,\mathbb T)$ 上的函数 $\widehat {f}$,
$$
\widehat {f}(\chi) = \int_G f(g)\overline{\chi(g)} dg.
$$
记算子 $f\mapsto \widehat {f}$ 为 $\mathcal F$.

## 性质

### 运算

对于可积函数 $f,g\in L^1(G)$, 定义其[卷积](卷积.md) $f*g$,
$$
(f*g)(x)  = \int_G f(xy^{-1}) g(y)\,d\mu(y).
$$

**命题**.
$\mathcal F$ 将卷积变为函数的乘积:
$$
\widehat {f*g} = \widehat {f}\cdot \widehat {g}.
$$

### 范数

**命题** ($L^1$–$C_0$ 对偶, Riemann–Lebesgue 引理).
Fourier 变换 $\mathcal F$ 将 $L^1(G)$ 映射到 $C_0(\widehat G)$.

**命题** ($L^2$, Plancherel 定理).
Fourier 变换 $\mathcal F$ 将 $L^2(G)$ **等距同构地**映射到 $L^2 (\widehat G)$.

**命题** (Hausdorff–Young 不等式).
设 $p,q\geq 1$, 且 $1/p+1/q = 1$.
那么 Fourier 变换 $\mathcal F$ 将 $L^p(G)$ 映射到 $L^q (\widehat G)$, 且
$$
\|\widehat f\|_q\leq \|f\|_p.
$$
这是 Riesz–Thorin 插值定理的推论.

## 例

$(\mathbb{R}_+,\times)$ 的 Haar 测度为 $\dfrac{dx}{x}$, 其 Pontryagin 对偶可视为 $i\mathbb{R}$, 其中 $i\xi\in i\mathbb{R}$ 对应于同态 $\mathbb{R}_+\to\mathbb T$, $x\mapsto x^{i\xi}$.

$\mathbb{R}_+$ 上的函数 $f$ 的 Fourier 变换为
$$
\widehat{f}\colon i\xi \mapsto \int_{\mathbb{R}_+} f(x) x^{-i\xi} dx.
$$
这与 Mellin 变换有关.
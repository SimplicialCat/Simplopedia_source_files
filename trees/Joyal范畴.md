---
title: Joyal 范畴 Θn
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Joyal 范畴 $\Theta_n$ 的对象是[探测](探测.md) $(\infty,n)$-范畴的基本单元, 是[单纯形](单纯形范畴.md)在 $(\infty,n)$-范畴理论中的推广.

## 定义

### 归纳定义

记 $\Delta$ 为[单纯形范畴](单纯形范畴.md), $\Gamma$ 为 [Segal 范畴 $\Gamma$](Segal范畴Γ.md), 有典范的函子 $\gamma\colon \Delta\to\Gamma$; 详见 [Segal 函子 $\gamma$](Segal函子γ.md).

**定义**. Joyal 范畴 $\Theta_n$ 是 $n$ 个 $\Delta$ 的[圈积](圈积.md), 带有典范函子 $|{-}|\colon \Theta_n \to \Gamma$.

该定义出自 [Berger](BergerWr.md).

具体展开[圈积](圈积.md) $\Theta_n = \Delta \wr \Theta_{n-1}$ 的定义, $\Theta_n$ 的归纳定义如下:

- 其对象形如 $[k] (X_1,\cdots,X_k)$, 其中 $[k]\in\Delta$, $X_i\in\Theta_{n-1}$;
- 态射 $[k] (X_1,\cdots,X_k) \to [\ell] (Y_1,\cdots,Y_\ell)$ 包括单纯形的态射 $\phi\colon [k] \to [\ell]$ 以及 $\Theta_{n-1}$ 中的态射 $X_i \to Y_j$ ($\phi(i-1) < j \leq \phi(i)$);
- 函子 $|{-}|\colon \Theta_n\to\Gamma$ 定义为 $|[k] (X_1,\cdots,X_k)| = \prod_{i=1}^k |X_i|$ (注意 $\Gamma$ 中的积为 $\langle n \rangle \times \langle m \rangle = \langle n+m \rangle$).

直观上, $\Theta_n$ 的对象 $[k] (X_1,\cdots,X_k)$ 是一个[充实](充实范畴.md)于 $\widehat {\Theta_{n-1}}$, 以 $0,1,\cdots,k$ 为对象的范畴, 态射对象为 $\operatorname{Hom}(i-1,i)= X_i$.

如下是 $\Theta_3$ 的一个对象的示意:

<img src="/assets/globular.svg" alt="" width="300" style="display:block; margin:auto;">

这个对象写出来是

```
    [3] (
        [2] (
            [1] ([0]),
            [0]
        ),
        [0] (),
        [1] ([0])
    ).
```

$\Theta_n$ 的对象也可理解为类似[树](树.md)的结构, 不过与[树](树.md)不同的是, 每个 "结点" 被指定了一个层级 (一个自然数), 态射必须保持这个自然数.

#### 嵌入

范畴 $\Theta_{n-1}$ 到 $\Theta_n$ 有不止一个合理的嵌入.

最符合直观的含入函子 $i_{n-1}\colon \Theta_{n-1} \to\Theta_n$ 是:

- $i_0\colon \Theta_0 = \{[0]\} \hookrightarrow \Theta_1 = \Delta$;
- $i_n ([k] (X_1,\cdots,X_k)) = [k] (i_{n-1}(X_1),\cdots,i_{n-1}(X_k))$.

直观上, $\Theta_{n-1}$ 的对象作为 $(n-1)$-范畴, 当然也可以视为 $n$-范畴, 只不过没有非平凡的 $n$-态射. 余极限 $\Theta = \operatorname{colim}_n \Theta_n$ 用的是这种嵌入.

另一个函子 $\sigma\colon \Theta_{n-1} \to \Theta_n$ (有时称为**纬悬**) 是
$$
\sigma (X) = [1] (X).
$$
直观上, 它有两个对象 $0,1$, 并且把 $X$ 的每个对象变为 $\sigma (X)$ 中的态射 $0\to 1$, 每个 $k$-态射提升为 $(k+1)$-态射.

### 作为球状集

范畴 $\Theta_n$ 的对象可视为[球状集](球状集.md), 不过态射不仅有球状集映射. (事实上球状集映射恰为 $\Theta_n$ 上[代数模式](代数模式.md)结构中的**惰性映射**.)

### 通过组合 $n$-圆盘

范畴 $\Theta_n$ 可通过 Joyal 的 "[组合 $n$-圆盘](组合圆盘.md)" 直接定义.

## 性质

### 稠密性

我们知道

- $n$-范畴等同于 $\mathsf{Cat}_{n-1}$-[充实范畴](充实范畴.md): $\mathsf{Cat}_n \simeq \mathsf{Cat}_{n-1}\text{-}\mathsf{Cat}$;
- [圈积](圈积.md)有这样的性质, 若 $\mathcal A\subset \mathcal V$ [稠密](稠密子范畴.md), 则 $\Delta\wr \mathcal A \subset \mathcal V\text{-}\mathsf{Cat}$ 稠密;

于是归纳可以证明 $\Theta_n\subset\mathsf{Cat}_n$ 稠密.

### 代数模式

范畴 $\Theta_n$ 可用于定义 $n$-范畴以及 [$\mathbb E_n$-代数](En-代数.md)的[代数模式](代数模式.md).
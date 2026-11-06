---
title: HADR - 积性模式
tag: 讲稿
author: [SimplicialCat](SimplicialCat.md)
---



**定义**. **积性模式** (Cartesian pattern) 是指一个代数模式 $\mathcal O$ 带有态射 $|\{-\}|\colon \mathcal O \to \Gamma^\flat$, 满足对任意 $X\in\mathcal O_{\mathrm{int}}$, 典范的函子
$$
(\mathcal O_{\mathrm{el}})_{/X} \to (\Gamma^\flat_{\mathrm{el}})_{/|X|}
$$
为等价. 其中

- $(\mathcal O_{\mathrm{el}})_{/X}$ 指的是 $\mathcal O$ 的基本对象到 $X$ 的**惰性**映射的范畴,
- $(\Gamma^\flat_{\mathrm{el}})_{/|X|}$是一个 $|X|$ 元离散集合.

这就是说, 积性模式 $\mathcal O$ 的对象 $X$ 包含的基本对象构成离散有限集. 直观上, 每个对象 $X$ 都可想象为 $|X|$ 个基本对象 (颜色) 放在一起构成的对象.

因此, 积性模式 $\mathcal O$ 的 Segal 对象
$$
F\colon \mathcal O^{\mathrm{op}}\to\mathcal C
$$
在探测对象 $X$ 上的取值等于其在基本对象上的取值的[积](积(范畴论).md):
$$
F(X) \overset{\simeq}{\to} \prod_{E\rightarrowtail X} F(E).
$$
这就是**积性**模式的名称的道理. 为了体现积性模式的特殊性, 我们称积性模式 $\mathcal O$ 的 Segal 对象为 $\mathcal O$-**幺半群** ($\mathcal O$-monoid).

积性模式之间的态射 $f\colon \mathcal O\to\mathcal P$ 就定义为 $\Gamma$ 之上的代数模式态射:
$$
\begin{array}{ccc}
\mathcal O & \rightarrow & \mathcal P \\
 & \searrow & \downarrow \\
 &  & \Gamma.
\end{array}
$$
特别地, 对任意 $X\in\mathcal O$ 有 $|f(X)| = |X|$. 这就是说积性模式的态射保持一个对象的基本成分的数量.


**例**.
- Segal 态射 $\gamma\colon \Delta\to\Gamma$ 是积性模式.
- 表达 $n$ 重结合代数的模式 $\Delta^n\to\Gamma$ 是积性模式, $|([k_1],\cdots,[k_n])| := \langle k_1\cdots k_n\rangle$.
- [Joyal 范畴](Joyal范畴.md) $\Theta_n\to\Gamma$ 是积性模式, 若 $|X_i| = \langle m_i\rangle$, 则 $|[k] (X_1,\cdots,X_k)| = \langle m_1+\cdots + m_k \rangle$).
- [树的范畴](树.md) $\Omega\to\Gamma$ 是积性模式, 其中基本对象为花冠; 对于一棵树 $X\in\Omega$, $|X|$ 就是 $X$ 中节点的数目.

## $\mathcal O$-幺半范畴和 $\mathcal O$-代数

对于积性模式 $\mathcal O$, 定义 $\mathcal O$-**幺半范畴**为 $\mathsf{Cat}$ 中的 $\mathcal O$-幺半群. 其[直化](直化.md)为 $\mathcal O$ 上的[拉回纤维化](纤维范畴.md) $\mathcal V\to \mathcal O$.
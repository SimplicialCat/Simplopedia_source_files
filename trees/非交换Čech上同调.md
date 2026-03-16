---
title: 非交换 Čech 上同调
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

非交换 Čech 上同调是用 [Čech 脉](Čech脉.md)计算[非 Abel 上同调](非Abel上同调.md)的方法, 是 [Čech 上同调](Čech上同调.md)的非交换推广.

对象 $X$ 上群 $G$ 系数的 $1$ 阶非 Abel 上同调即 $X$ 到 $\mathbf{B}G$ 的映射类, 也即 $X$ 上 $G$-[主丛](主丛.md)的等价类; 若 $X$ 上的[主丛](主丛.md) $P$ 被 $X$ 的覆盖 $U\to X$ 平凡化, 则对应的映射类 $X\to\mathbf{B}G$ 可被 $G$-Čech 上圈[实现](几何实现(单纯图表的余极限).md).

## 定义

### 一阶: 一般情形

这里 "覆盖" 指的是 [$\infty$-意象](∞-意象.md)中的[有效满射](有效满射.md), 即在 $\pi_0$ 上满的映射.

**定义**. 覆盖 $U\to X$ 上的 $1$ 阶 $G$-**Čech 上圈**是 [Čech 脉](Čech脉.md) (作为[单纯对象](单纯对象.md)) 之间的态射
$$
    \alpha\colon \text{\v{C}}(U\to X) \to \text{\v{C}}(*\to \mathbf{B}G).
$$
展开来看, $\alpha$ 就是如下一系列映射以及它们之间的相容条件:

- $\alpha_0\colon U \to *$,
- $\alpha_1\colon U\times_X U \to G$,
- $\alpha_2\colon U\times_X U\times_X U \to G\times G$,
  - $\mathrm{pr}_{12}, \mathrm{pr}_{13}, \mathrm{pr}_{23}\colon U\times_X U\times_X U \to U\times_X U$
  - $\mathrm{pr}_1, \mu, \mathrm{pr}_2\colon G\times G\to G$
- 满足 $\mathrm{pr}_1 \alpha_2 = \alpha_1 \mathrm{pr}_{12}$, $\mathrm{pr}_2 \alpha_2 = \alpha_1 \mathrm{pr}_{23}$, $\mu \alpha_2 = \alpha_1 \mathrm{pr}_{13}$,
- ...

例如, 由上面写出的这些条件可得等式 $\mu\circ (\alpha_1\mathrm{pr}_{12},\alpha_1\mathrm{pr}_{23})=\alpha_1\mathrm{pr}_{13}$, 也即
$$
\alpha (u,v)\alpha(v,w) = \alpha(u,w).
$$

#### 上同调等价

**定义**, 对于覆盖 $U\to X$ 上的两个 $G$-Čech 上圈 $\alpha,\alpha'$, 若存在[单纯同伦](单纯同伦.md) $\alpha\to\alpha'$, 即
$$
\eta \colon \text{\v{C}}(U\to X)\times\Delta^1\to \text{\v{C}}(*\to \mathbf{B}G),
$$
满足 $\eta_0 = \alpha$, $\eta_1 = \alpha'$, 则称 $\alpha,\alpha'$ **上同调等价** (cohomologous).

由[单纯同伦](单纯同伦.md)页面写下的条件, $G$-Čech 上圈 $\alpha,\alpha'$ 的上同调等价包含如下资料:

- 记 $h_1(-,01) \colon U\times_X U \to G$ 为 $h(u,v)$, 则
  - $h(v,w)\alpha(u,v) = h(u,w)$,
  - $\alpha'(v,w)h(u,v)=h(u,w)$.
- 令 $\eta(u) = h(u,u)$, 则由上两式,
$$
\eta(v)\alpha(u,v) = h(u,v) = \alpha'(u,v) \eta(u).
$$

覆盖 $U\to X$ 上的 $1$ 阶 $G$-Čech 上圈的等价类记为 $H^1(U/X,G)$; 在许多场合中, 可以定义 $X$ 的 $G$-系数 $1$ 阶**非交换 Čech 上同调**为对**某些**覆盖的余极限
$$
\check H^1(X, G):=\operatorname{colim}_{U\to X} H^1(U/ X, G).
$$
这里 "某些覆盖" 是根据具体情形选取的一类覆盖, 期待让 $\check H^1(X, G)$ 按后面说的方式[实现](几何实现.md)了 $H^1(X,G)$ 的每个元素. (如果在抽象的场景考虑所有覆盖, 那么任意 $p\in H^1(X,G)$ 对应的主丛 $P\to X$ 平凡化 $P$ 自身, 从而 $H^1(P/X,G)$ 有一个元素实现了 $P$, 这就没有意思了.)

### 与真正的上同调的关系

由 [Giraud 公理](Giraud公理.md), 覆盖 $U\to X$ 的 [Čech 脉](Čech脉.md)的[几何实现](几何实现.md)是 $X$ 自身, 故 $G$-Čech 上圈 $\alpha\colon \text{\v{C}}(U\to X) \to \text{\v{C}}(*\to \mathbf{B}G)$ 给出[几何实现](几何实现.md)之间的映射 $|\alpha|\colon X \to\mathbf{B}G$, 也即 $H^1(X,G)$ 的元素.

另一方面, $H^1(X,G)$ 中的元素 $p\colon X\to\mathbf{B}G$ 能被覆盖 $U\to X$ 的 Čech 上圈实现的一个充分条件是 $U\to X$ **平凡化** $p$, 也即有交换图
$$
\begin{array}
    {ccc}
    U & \to & * \\
    \downarrow & \swarrow \!\!{\scriptsize\alpha}\!\!\!\! & \downarrow \\
    X & \to & \mathbf{B}G.
\end{array}
$$
此时由 [Čech 脉](Čech脉.md)的函子性, 当然有 Čech 脉之间的映射. 注意, 上述交换图是一个[结构而非性质](结构.md), 其中的 $2$-态射 $\alpha\colon \mathrm{triv}\to p$ 要参与到 Čech 上圈的计算中. 例如要计算其在 Čech 脉的第 $1$ 层上的映射, 考虑下图:
$$
\begin{array}
  {ccccc}
  \!\!\!\!\!\!\!\!\!\! U\times_X U \!\!\!\! & \to & U \\
  \downarrow & & \downarrow & \searrow \\
  U & \to & X & & *\\
  & \searrow & & \searrow & \downarrow \\
  && * & \to & \mathbf{B}G,
\end{array}
$$
其中右方, 下方两个平行四边形均为 $2$-态射 $\alpha$. 可得 Čech 脉的第 $1$ 层上的映射为
$$
(\alpha\mathrm{pr}_2)^{-1} (\alpha\mathrm{pr}_1)\colon  U\times_X U \to G = *\times_{\mathbf{B}G} *.
$$

总结起来, 要想
$$
\check H^1(X, G):=\operatorname{colim}_{U\to X} H^1(U/ X, G).
$$
计算了真正的 $H^1(X,G)$, 就是要用合适的覆盖去平凡化每个 $G$-主丛.




### 二阶: 交叉模

设 $(G,H,\delta,\alpha)$ 为[交叉模](交叉模.md).
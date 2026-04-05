---
title: Kähler 流形
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


"Kähler = 复 $\cap$ [辛流形](辛.md) $\cap$ Riemann"

"Kähler = Riemann $\cap$ 陈"

另见[超 Kähler 流形](超Kähler流形.md).

## 定义

设 $M$ 为[复流形](复流形.md), 带有 [Hermite 向量丛](Hermite度量.md)
$$
g\in C^\infty ({T^*}' M \otimes {T^*}''M).
$$
(注. $g$ 是光滑截面, 而非全纯截面.)

设
$$
g = g_{i \bar j} dz^i \otimes d\bar z^j,
$$
其实部
$$
\operatorname{Re}g= \frac{1}{2} g_{i\bar j} (dz^i\otimes d\bar z^j + d \bar z^i\otimes d z^j)
$$
为 Riemann 度量, 虚部
$$
\gamma = \operatorname{Im}g=\frac{\sqrt{-1}}{2}g_{i\bar j}(dz^i\otimes d\bar z^j - d \bar z^i\otimes d z^j)=\frac{\sqrt{-1}}{2}g_{i\bar j}\, dz^i\wedge d\bar z^j
$$
(的 $2$ 倍) 称为**基本 $2$-形式**. 见[基本形式](基本形式.md).

满足 **Kähler 条件** $d\gamma=0$ 的度量称为 Kähler 度量, 此时 $\gamma$ 称为 **Kähler 形式**.

> 很自然地会产生退化度量.

## 性质

### Kähler 度量的拉回

**命题**. 设 $f\colon N\to (M,g)$ 是 Kähler 流形的子流形, 则 $(N,f^* g)$ 是 Kähler 流形.

**证明**. 对 $(M,g)$ 的基本形式 $\gamma$ 有 $d(f^*\gamma)=f^*(d\gamma)=0$.

### 代数簇

**命题**. 若 $M$ 为紧 Kähler 流形, $H^2(M,\mathcal O_M) = 0$, 则 $M$ 是[代数簇](代数簇.md).

**证明**. $H^2(M,\mathbb C) \simeq H^{2,0} \oplus H^{1,1} \oplus H^{0,2}$, ...

**推论**. 紧 [Riemann 面](Riemann面.md)是代数簇.

## 例

$\mathbb{C}P^n$ 在 [Fubini--Study 度量](Fubini--Study度量.md)下构成 Kähler 流形. 进而 $\mathbb{C}P^n$ 的子流形构成 Kähler 流形.

## 联络与曲率

**定理**. Kähler 流形 $M$ 的全纯切丛上的[陈联络](陈联络.md)等同于 Levi-Civita 联络; 事实上这个条件与 Kähler 条件等价.

**证明**. 设 $g$ 为 Hermite 度量, $\nabla$ 为[陈联络](陈联络.md). 我们证明 $\nabla$ 无[挠率](挠.md)等价于 $d\gamma = 0$.

考虑联络形式
$$
\omega = g^{-1}dg = \sum_k g^{i \bar k} \partial g_{i \bar k},
$$
则有
$$
\nabla_{\frac{\partial}{\partial z^i}} \frac{\partial}{\partial z^j}=g^{\ell \bar k} \Big(\frac{\partial}{\partial z^i} g_{j\bar k}\Big) \frac{\partial}{\partial z^\ell}
$$
故 $\nabla$ 无挠等价于 $\displaystyle \frac{\partial g_{j\bar k}}{\partial z^i}$ 关于 $i,j$ 对称. 另一方面,
$$
d\gamma = \partial\gamma+\bar\partial\gamma = 0
$$
等价于
$$
\partial\gamma =0
$$
(因为 $\gamma$ 是实形式)

$\square$

**定理**. Kähler 条件等价于 [Laplace 算子](Laplace算子.md)与微分形式到 $(p,q)$-形式的投影算子交换.

> 上面这个结论是丘先生 2023 年 3 月 16 日在院长讨论班讲的. 同时他说, 假若和 Laplace 算子交换的微分算子的环比标准的 ($\triangle,d,d^*$ 等等) 要更大, 那么流形的几何会有有趣的性质. 这种用算子完全代替几何的想法与[非交换几何](非交换几何.md)有关系.

[曲率](曲率.md)张量与[近复结构](近复结构.md)相容:
$$
R(X,Y)\circ J=J\circ R(X,Y).
$$

定义 Ricci 形式
$$
\rho(X,Y)=\operatorname{Ric}(X,JY).
$$
有
$$
\rho = -2i K_{\alpha\bar{\beta}} dz^\alpha\wedge d\bar z^{\beta},
$$
其中
$$
K_{\alpha\bar\beta} = -\frac{\partial^2 \log G}{\partial z^\alpha \partial\bar z^\beta},\quad G= \det(g_{\alpha\bar\beta}).
$$

### 曲率 $2$-形式

$(1,1)$-形式
$$
\Omega_i^j = d\omega_i^j-\omega_i^k\wedge _k^j = R_{ik\bar\ell}^{j} dz^k d\wedge \bar{z}^\ell
$$
考虑

$$
R_{i\bar j}=- \frac{\partial ^4}{\partial z^i \partial z^j}\log\det(g,r).
$$



## 适配坐标

类似于 Riemann 几何的正则坐标 (normal coordinates), 我们定义复流形上 $p$ 处的适配坐标 (adapted coordinates at $p$) 为满足如下条件的全纯坐标:

- $z^i (p)=0$;
- $g_{i\bar j}(p) =\delta_{ij}$;
- $\Gamma_{jk}^i (p) = 0$.

**定理**. $(M,g)$ 为 Kähler 流形当且仅当每一点处存在适配坐标.

**证明**. 必要性. 对于适配坐标, $\nabla$ 无挠, 故 $\nabla$ 与 Levi-Civita 联络相等, $g$ 是 Kähler 的.

充分性. 先取 $z^i$ 满足前两条, 然后取常数 $c_{ik}^j$ (关于 $i,k$ 对称), 作坐标变换
$$
z^j = w^j + \frac{1}{2} \sum c_{ik}^j w^i w^k,
$$
试图满足第三个条件.

## Kähler 势

**命题**. 基本形式 $\gamma$ 可写成
$$
\gamma = \sqrt{-1} \partial \bar\partial f,
$$
$f$ 称为 Kähler 势.

**证明**. 因为 $\gamma$ 是闭形式, 局部上有 $1$-形式 $\psi$ 使得 $\gamma = d \psi$.

由 $\gamma$ 是实的, 有 $\psi = \varphi + \overline{\varphi}$, 其中 $\varphi$ 是 $(1,0)$-形式.

由
$$
\gamma
 = \partial \varphi + \partial \bar\varphi + \bar\partial \varphi + \bar\partial \bar\varphi
$$
是 $(1,1)$-形式, 知 $\bar\partial \bar\varphi = 0$.

由 $\bar\partial$-[Poincaré 引理](Poincaré引理.md), 局部上存在光滑函数 $\tau$ 使得 $\bar\varphi = \bar\partial \bar\tau$, 也即 $\varphi = \partial \tau$. 因此
$$
\gamma = \bar\partial \partial  \tau + \partial \bar\partial \bar\tau = \partial \bar\partial (\bar\tau - \tau),
$$
令 $\bar\tau - \tau = \sqrt{-1} f$ 即可. $\square$

因此
$$
g_{i \bar j} = \frac{\partial ^2 f }{\partial z^i \partial \overline{z^j}}.
$$

## Hodge 恒等式

- $[L,\partial] = 0$, $[L,\bar\partial] = 0$, $[\Lambda,\bar\partial^*] = 0$, $[\Lambda,\partial^*] = 0$;
- $[L,\partial^*] = \sqrt{-1}\bar\partial$, $[L,\bar\partial^*] = - \sqrt{-1}\partial$;
- $[\Lambda,\partial]=\sqrt{-1}\bar\partial^*$, $[\Lambda,\bar\partial] = - \sqrt{-1}\partial^*$.

定义 $\triangle_\partial = \partial^* \partial + \partial \partial ^*$, 等等.

**命题**.
$$
\triangle_d = 2 \triangle_{\partial} = 2 \triangle_{\bar\partial}.
$$
**证明**.
$$
\begin{aligned}
	\triangle_d &= (\partial + \bar\partial)^*(\partial + \bar\partial) + (\partial + \bar\partial)(\partial + \bar\partial)^*\\
	&= \triangle_{\partial} + \triangle_{\bar\partial}+ (\partial \bar\partial ^* + \bar\partial ^*\partial) +(\bar\partial  \partial ^* + \partial ^* \bar \partial).
\end{aligned}
$$
由 Hodge 恒等式,
$$
\triangle_\partial = \partial ^* \partial + \partial \partial ^* = \sqrt{-1} [\Lambda,\bar\partial]\partial + \sqrt{-1} \partial [\Lambda,\bar\partial] = \triangle_{\bar\partial},
$$
$$
\partial \bar\partial ^* + \bar\partial ^*\partial = -\sqrt{-1} \partial [\Lambda, \partial] -\sqrt{-1} [\Lambda, \partial] \partial = 0.
$$
$\square$

由此及 [Hodge 理论](Hodge分解定理.md)
$$
\mathcal H^{p,q}_{\bar\partial}(M) \simeq \ker \triangle_{\bar\partial}
$$
可知
$$
\mathcal H_d^r(M) \otimes \mathbb{C} \simeq \sum_{p+q=r} \mathcal H^{p,q}_{\bar\partial}(M).
$$

**推论**. 对于紧流形 $M$,
$$
H^r(M;\mathbb{C}) \simeq \bigoplus_{p+q=r} H^q(M,\Omega^p(M)).
$$

**命题**. $\triangle_d$ 是实算子, 即若 $\alpha$ 是实形式, 则 $\triangle\alpha$ 也是实形式.

由此, $\ker\triangle_{\bar\partial}$ 在共轭下不变;

**定理**. 对紧 Kähler 流形 $M$,
$$
H^q(M,\Omega^p(M)) \simeq H^p(M,\Omega^q(M)).
$$
**推论**. $b^2 = \dim_\mathbb{C} H^2(M;\mathbb{C}) = 2 \dim H^{1,0}$ 是偶数.
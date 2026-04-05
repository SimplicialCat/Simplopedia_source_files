---
title: "Hodge 理论"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

---
aliases: Hodge 分解定理, Hodge 定理
---

## 实流形的 Hodge 理论

Hodge 理论研究紧流形上的[椭圆算子](椭圆算子.md), 如 [Laplace 算子](Laplace算子.md). 它告诉我们指标如何翻译成上同调.

### 调和形式

**定理**. 紧可定向 Riemann 流形 $M$ 上 $p$ 阶[调和形式](调和形式.md)的空间 $\mathcal H_d^p(M)$ 是**有限维**的. 对于正交投影 $H_d\colon \Omega^p(M) \to \mathcal H_d^p(M)$, 存在 Green 算子 $G_d\colon \Omega^p\to \Omega^p$, 满足

- $G_d H_d = H_d G_d = 0$;
- $d G_d = G_d d$, $d^* G_d = G_d d^*$;
- $H_d + \triangle_d G_d = \operatorname{id}_{\Omega^p}$.

**推论**. 紧可定向 Riemann 流形 $M$ 上任一微分形式可分解为一个调和形式, 一个 $d$ 的像与一个 $d^*$ 的像之和. 若 $\alpha$ 为闭形式, 则 $\alpha$ 可分解为一个调和形式与一个 $d$ 的像之和.

**推论**. $\mathcal H_d^p(M) \simeq H_{\text{dR}}^p(M)$.

关于这个理论, Futaki 教授推荐 F. Warner 的微分几何书.

### 解析指标

Hodge 理论与算子的[解析指标](解析指标.md)有关.

## 复流形上全纯向量丛的 Hodge 理论

设 $E\to M$ 为[全纯向量丛](全纯向量丛.md), 则 $E$-值 $(p,q)$-形式上有算子 $\bar\partial_E\colon \Omega^{p,q}(E)\to \Omega^{p,q+1}(E)$, 满足 $\bar\partial_E^2=0$. 见 [Dolbeault 上同调](Dolbeault上同调.md).

定义 $\Omega^{p,q}(E)$ 上的 $\bar\partial$-Laplace 算子
$$
\triangle_{\bar\partial }= \bar\partial \bar\partial ^* + \bar\partial  ^*\bar\partial.
$$
$\triangle_{\bar\partial }\alpha = 0$ 等价于 $\bar\partial \alpha = 0$ 且 $\bar\partial ^* \alpha = 0$.

**定理**. (Hodge--Kodaira) 考虑正交投影 $H_{\bar\partial }\colon \Omega^{p,q}(E)\to \mathcal H^{p,q}_{\bar\partial }(E)$, 存在 Green 算子 $G_{\bar\partial }\colon \Omega^{p,q}(E)\to \Omega^{p,q}(E)$ 满足

- $G_{\bar\partial }H_{\bar\partial }=H_{\bar\partial }G_{\bar\partial }=0$;
- $\bar\partial G_{\bar\partial } = G_{\bar\partial }\bar\partial$;
- $H_{\bar\partial }+ \triangle_{\bar\partial }G_{\bar\partial }=\operatorname{id}_{\Omega^{p,q}(E)}$.

**推论**. $\bar\partial$-闭形式可分解为一个 $\bar\partial$-调和形式与一个 $\bar\partial$ 的像的和.

**推论**. $\mathcal H_{\bar\partial }^{p,q}(E)\simeq H^{p,q}_{\bar\partial }(E)$.

## 复射影簇的 Hodge 理论

设 $X$ 为复射影流形, 即 $\mathbb CP^n$ 的闭子流形 (参见[代数簇](代数簇.md)), 那么 $X$ 继承 $\mathbb CP^n$ 上的 Riemann 度量而成为 [Kähler 流形](Kähler流形.md). 此时 Hodge 定理给出
$$
H^r(X,\mathbb C) \simeq \bigoplus_{p+q=r}H^{p,q}(X).
$$
其中 [Dolbeault 上同调](Dolbeault上同调.md) $H^{p,q}(X)$ 等于[凝聚层上同调](凝聚层上同调.md)
$$
H^{p,q}(X)\simeq H^q(X,\Omega^p),
$$
$\Omega^p$ 为全纯 $p$-形式层.

Hodge 理论给出了[小平消失定理](小平消失定理.md)在代数几何上的应用.


相关概念: [Hodge 星算子](Hodge星算子.md)


[p-进 Hodge 理论](p-进Hodge理论.md)
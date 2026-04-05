---
title: "Kähler--Ricci 曲率"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Kähler--Ricci 曲率 (用 Futaki 老师的记号) 定义为
$$
R_{i\bar j} = g^{k \bar \ell} R_{i\bar\ell \bar j k} = {{R_i}^k}_{\bar j k} = - {R_{i\bar j k}}^k = {R^k}_{ki\bar j} \in C^\infty (\operatorname{End}(E)\otimes \wedge^2 M).
$$
相比之下, Riemann--Ricci 曲率为
$$
R_{ij} = {{R_i}^k}_{jk}.
$$

此时的 [Bianchi 恒等式](Bianchi恒等式.md)为
$$
{{R_i}^k}_{\bar j k} + {R_{i\bar j k}}^k + {{R_{ik}}^k}_{\bar j} = 0.
$$

$R_{i\bar j}$ 由 $g_{k\bar\ell}$ 及其导数表示:
$$
R_{i\bar j} = - g^{k\bar\ell} \Big(
\frac{\partial^2}{\partial z^i \partial \bar z^j}
- g^{p\bar q}\frac{\partial g_{k\bar q}}{\partial z^i}
\frac{\partial g_{p\bar \ell}}{\partial \bar z^j}
\Big)
= - \frac{\partial^2}{\partial z^i \partial \bar z^j}
\log\det (g_{k\bar\ell}).
$$

## 与陈类的关系

$$
\sqrt{-1} R_{i\bar j} dz^i \wedge d\bar z^j = \sqrt{-1}\operatorname{tr}R = 2\pi c_1(M).
$$

## Ricci 流

[Ricci 流](Ricci流.md)的方程为
$$
\frac{\partial g_{i\bar j}}{\partial  t} = - R_{i \bar j}.
$$

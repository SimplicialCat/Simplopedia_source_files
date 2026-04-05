---
title: "Serre 对偶"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

Serre 对偶是 [Poincaré--Verdier 对偶](Poincaré对偶.md)在[凝聚层上同调](凝聚层上同调.md)中的类比.

> 李归农在[知乎回答](https://www.zhihu.com/question/268043432/answer/333423706)中指出 Serre 对偶完全是[导出范畴](导出范畴.md)的性质.

> Wiki: According to Grothendieck's relative point of view, the theory of Jean-Pierre Serre was extended to a [紧合映射](propermorphism.md); Serre duality was recovered as the case of the morphism of a non-singular projective variety to a point.

## 初见

设 $X$ 是 $k$ 上的不可约光滑射影 $n$ 维代数簇, 则存在[可逆层](可逆层.md) $\omega_X$, 使得对任意局部自由有限秩层 $\mathcal F$,
$$
h^i(X,\mathcal F) = h^{n-i}(X,\omega_X\otimes \mathcal F^\vee).
$$
且有完美配对
$$
H^i(X,\mathcal F)\otimes H^{n-i}(X,\omega_X\otimes \mathcal F^\vee)\to H^n(X,\omega_X) = k.
$$
对于曲线 $C$ 有
$$
h^1(C,\mathscr L)=h^0(C,\omega_C\otimes\mathscr L^\vee),
$$
[Riemann--Roch 定理](Riemann--Roch定理.md)可表达为
$$
h^0(C,\mathscr L)-h^0(C,\omega_C\otimes\mathscr L^\vee)=\deg\mathscr L - p_a(C) +1.
$$


**定理** 设 $X$ 是射影概形, Cohen--Macauley, 则存在 $\omega_X$ (dualizing), 使得
$$
H^i(X,F)^* \simeq \operatorname{Ext}_{\mathcal O_X}^{n-i}(F,\omega_X).
$$
对于光滑的射影概形, $\omega_X$ 可定义为[典范丛](典范丛.md) $\wedge^n \Omega^1_{X/k}$.

设 $\mathcal E$ 局部自由有限秩, 则
$$
H^i(X,\mathcal E)^* \simeq \operatorname{Ext}_{\mathcal O_X}^{n-i} (\mathcal E,\omega_X) \simeq \operatorname{Ext}_{\mathcal O_X}^{n-i}(\mathcal O_X,\mathcal E^*\otimes \omega_X) \simeq H^{n-i}(X,\mathcal E^*\otimes\omega_X).
$$
对于[复向量丛](复向量丛.md), 考虑 [Dolbeault 上同调](Dolbeault消解.md) $A^{0,\bullet}\mathcal E$,
$$
H^i(\mathcal E) = H^i\Gamma (A^{0,*},d'').
$$
$$
\Gamma(A^{0,i})' = K_c^{n,n-i}(\mathcal E^*)
$$
$\Omega^n\otimes\mathcal E^*$ 被 $K^{n,*}_{\text{c}}$ (紧支集分布 ?) 消解.

## 一般结论

Grothendieck 的做法来源于对[直像](前推.md) $f_*$ 的右伴随的探索 (它的左伴随是拉回).

对于 $n$ 维光滑射影概形 $X$,
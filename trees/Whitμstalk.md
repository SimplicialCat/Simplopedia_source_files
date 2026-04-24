---
title: The Whittaker Functional Is a Shifted Microstalk
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

### 2.1 微局部层论

设 $Y$ 为实解析流形, $F\colon Y\to \mathbb{R}$ 为光滑函数. 定义[消失圈](临近圈.md)函子
$$
\phi_F  = (\Gamma_{F\geq 0}(-))_{F=0} \colon \mathsf{Sh}(Y) \to \mathsf{Sh}(F=0),
$$
其中 $\Gamma_{F\geq 0}$ 表示 $!$-限制, $(-)_{F=0}$ 为 $*$-限制.
进一步, 用 $\phi_{F,y_0}$ 表示再 $*$-限制到一点 $y_0$.

设 $Y$ 为复解析流形, $f\colon Y\to\mathbb{C}$ 为全纯函数, $\Lambda\subset T^*Y$ 为次解析子流形, 则在 $\mathsf{Sh}_\Lambda (Y)$ 上, 复的 (经典的) 消失圈与上面定义的作为实流形的消失圈同构.



### 2.2 限制到吸引区, 再取消失圈

设 $Y$ 为复解析流形, $\Lambda \subset T^*Y$ 为次解析闭锥形 Lagrange 奇异支集条件.

一般而言, 沿闭嵌入拉回再取[消失圈](临近圈.md), 不能解读为一步取消失圈.

**例**. 考虑 $\mathbb A^2$ 上的抛物线 $y=x^2$, 常值层推前为 $k_{y=x^2}$. 记 $i$ 为 $y=0$ 的嵌入映射. 那么
$$
i^! k_{y=x^2}
$$
是 $0$ 处的[摩天大楼层](摩天大楼层.md), 从而有非零的消失圈
$$
\phi_{x,0} i^! k_{y=x^2} \not\simeq 0.
$$
另一方面, $\phi_{x,0}k_{y=x^2} \simeq 0$.

选取实值光滑函数 $F\colon Y\to\mathbb{R}$ 满足

- $F$ 在 $\{Y >0\}$ 上等于 $\operatorname{Re}f$,
- $F$ 在 $\{Y\leq 0\} \setminus y_0$ 上小于 $0$.



**定理 2.2.2**. 设 $\mathcal F\in\mathsf{Sh}_{\Lambda}(Y)$ 满足 $\mathbb{C}^\times$-单值条件, 其奇异支集在次解析闭锥形 Lagrange 子流形 $\Lambda$ 中, 则
$$
\phi_{f,y_0} i^! \mathcal F \simeq \phi_{F,y_0} \mathcal F.
$$
---
title: "A-hat 类"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


A-hat 类是如下 [Dirac 算子](Dirac算子.md)的指标:
$$
c\circ\nabla\colon\Gamma(S^+)\to \Gamma(S^-),
$$
其中 $S=S^+\oplus S^-$ 为[自旋流形](自旋流形.md) $X$ 上的[旋量丛](旋量丛.md), $c$ 为 [Clifford 代数](Clifford代数.md)到外代数的象征映射, $\nabla$ 为旋量丛上的协变导数.

A-hat 类自然地在 $SO_n$-[主丛](主丛.md)的[指数映射 (Lie 群)](指数映射.md)的 Jacobi 行列式中出现. 这个 Jacobi 行列式依赖于底流形的曲率, 可逐纤维地计算; 这里会出现 $j$-函数
$$
j(X)=\frac{\sinh (X/2)}{X/2}.
$$

在近复流形上, A-hat 类与 [Todd 类](Todd类.md)只相差 $e^{c_1/2}$.

## 与曲率的关系

设 $M$ 是 $2n$ 维紧可定向 Riemann 流形, $R$ 为[曲率形式](曲率形式.md), 则
$$
\widehat{A}(M)=\det \left(\frac{R/2}{\sinh R/2}\right)^{1/2}.
$$
(有的定义将这里的 $R$ 替换为 $R/(2\pi i)$.) 它是一个闭形式, 且不依赖于 Riemann 度量的选取.

## 乘性序列

A-hat 类来自以 $\displaystyle \frac{\frac{1}{2}\sqrt{z}}{\operatorname{sinh}(\frac{1}{2}z)}$ 为特征幂级数的[乘性序列](乘性序列.md).
---
title: "Todd 类"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Todd 类是一种[乘性序列](乘性序列.md), 其特征幂级数为
$$
Q(x) =\frac{x}{1-e^x} = 1+\frac{x}{2}+\frac{x^2}{12}+\cdots.
$$
对于 $X$ 上的复向量丛 $E,F$, $\operatorname{td}(E\oplus F) = \operatorname{td}(E)\operatorname{td}(F)$.

由 [Hirzebruch--Riemann--Roch 定理](Hirzebruch--Riemann--Roch定理.md), [Dolbeault 上同调](Dolbeault算子.md)的[解析指标](解析指标.md)等于 Todd 类 (Todd class 或 Todd genus).

## 例

### 线丛

线丛的 Todd 类
$$
\operatorname{td}(L) = \frac{c_1(L)}{1- \exp (-c_1(L))}.
$$

### 代数曲线

对于代数曲线 $X$, 其 Todd 类为 $\operatorname{Td}(X)= 1+ c_1(TX)$.

### 代数簇

对于代数簇 $X$, 定义 $\operatorname{Td}(X)=\operatorname{td}(T_X)$, 其中 $T_X$ 为 $X$ 的[切丛](切层.md).

## 与 A-hat 类的关系

在近复流形 $M$ 上, Todd 类与 [A-hat 类](A-hat类.md)相差 $e^{c_1/2}$.

## 与 Thom 类以及陈特征的关系

[nLab](https://ncatlab.org/nlab/show/Todd+class)

[有理 Todd 类是 Thom 类的陈特征](https://ncatlab.org/nlab/show/rational+Todd+class+is+Chern+character+of+Thom+class).
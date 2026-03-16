---
title: "Hermite 向量丛"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---


## 定义

Hermite 向量丛是带有 Hermite 结构
$$
h\in \Gamma(\overline{E}^*\otimes E^*)
$$
的[复向量丛](复向量丛.md). 换言之, 在每个点 $p$ 处, $h$ 是一个映射 (参见[Hermite 向量空间](Hermite向量空间.md))
$$
\overline{E_p}\times E_p \to \mathbb{C},
$$
也即 $E_p$ 上的 Hermite 内积.

对于 $E$ 是复流形上的[全纯向量丛](全纯向量丛.md)的情形, 设 $e_1,\cdots,e_r$ 为 $E$ 上的**全纯标架** (holomorphic frame), 则
$$
h_{\bar i j}:= h(\overline{e_i},e_j)
$$

[全纯(余)切丛](全纯切丛.md)上的 Hermite 结构称为 **Hermite 度量**.

### 来自 Riemann 结构的 Hermite 结构

设 $g$ 是复流形 $X$ (的实切丛) 上的 Riemann 度量. 若 $g$ 与复结构相容 (也即乘以 $i$ 是等距同构), 则 $g$ 确定了 $X$ 上的 Hermite 结构. 此时[基本形式](基本形式.md) $\omega$ 为 $\omega = g(I-,-)$. 反过来 $g$ 也被复结构和基本形式完全确定: $g=\omega(-,I-)$.

基本形式为闭形式的 Hermite 结构称为 [Kähler 流形](Kähler结构.md).

## 例

$\mathbb P^1(\mathbb{C})$ 上存在 Hermite 度量: 在 $U_0$ (坐标函数为 $s$) 上 $\frac{1}{1+|s|^2}$, $U_1$ (坐标函数为 $t$) 上 $\frac{1}{1+|t|^2}$; 进一步, $\mathcal O_{\mathbb P^1}(k)$ 上存在 Hermite 度量  $\frac{1}{(1+|s|^2)^k}$.

### [Fubini--Study 度量](Fubini--Study度量.md)

$\mathbb P^m(\mathbb{C})$ 上有 Hermite 度量
$$
\frac{\partial^2}{\partial \overline{t_\lambda^i}\partial t_\lambda^j}\log(|t_\lambda^0|^2+\cdots+1+\cdots+|t_\lambda^m|)^2.
$$
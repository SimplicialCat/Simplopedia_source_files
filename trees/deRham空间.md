---
title: de Rham 空间
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

$X$ 的 de Rham 空间是将 $X$ 上 "[无穷接近的点](无穷接近的点.md)等同起来" 得到的空间.

de Rham 空间是无穷小道路群胚的逆范畴化, 而带平坦联络的向量丛等同于无穷小道路群胚上的等变向量丛, 这解释了 [D-模](D-模.md)为何是带平坦联络的向量丛的推广.

## 定义

### 函子式

以[点函子](点函子.md)表达, 概形 $X$ 的 **de Rham 空间** 是如下函子 $X_{\mathrm{dR}}\colon \mathsf{Ring} \to \mathsf{Set}$,
$$
X_{\text{dR}}(R) := X(R/I),
$$
其中 $I$ 是 $R$ 的幂零根 (nilpotent radical).

### 对角线形式邻域的商

$X_{\text{dR}}$ 也可表示为 $X$ 的商. 定义 $X_{\text{inf}}\to X\times X$ 为对角线的[形式邻域](形式邻域.md), 则
$$
X_{\text{dR}} = \operatorname{coeq}(X_{\text{inf}}\rightrightarrows X).
$$

## 性质

### D-模

$$
\mathsf {QCoh}(X_{\text{dR}})\simeq D\mathsf {-Mod}(X).
$$
---
title: "Clifford 代数"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

设 $B$ 是线性空间 $V$ 上的对称双线性型. Clifford 代数 $\text{Cl}(V,B)$ 是 $V$ 在关系
$$v^2=B(v,v)$$
之下自由生成的结合代数. 也有人使用 $v^2= - B(v,v)$, 例如 Lawson & Michelsohn.

换言之, 对任意结合代数 $A$ 以及线性映射 $f\colon V\to A$, 若 $f(v)^2 = B(v,v)$, 则 $f$ 唯一地延拓为代数同态 $\text{Cl}(V,B)\to A$.

由极化过程, 关系 $v^2=B(v,v)$ 等同于
$$\{v,w\} = 2B(v,w),$$
其中 $\{{-},{-}\}$ 表示反交换子.

## 性质

Clifford 代数的构造有函子性: 保持双线性型的映射 $(V,B)\to (V',B')$ 诱导代数同态 $\text{Cl}(V,B)\to \text{Cl}(V',B')$. 这给出了嵌入 $\text{O}(V,B)\hookrightarrow \operatorname{Aut}\text{Cl}(V,B)$.
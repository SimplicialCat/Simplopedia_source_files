---
title: 教程 : 一阶语言与一阶逻辑
taxon: 教程
author: [SimplicialCat](SimplicialCat.md)
---

数学语言是由什么构成的?

观察如下一句话:

- 对任意自然数 $n$ 与任意整数 $x,y,z$, 若 $n \geq 3$, 则 $x^n + y^n$ 不等于 $z^n$,

或写成符号形式,

- $\forall n,x,y,z\in\mathbb{Z}\,(n\geq 3)\Rightarrow \neg (x^n + y^n = z^n)$.

这句话含有如下成分.

- **变量** $n,x,y,z$, 它们都有特定的**类型**, 记为 $n:\mathbb{N}$, $x,y,z:\mathbb{Z}$;
- **常量** $3 : \mathbb{N}$;
- **函数** $x^n : (\mathbb{Z}\times\mathbb{N})\to\mathbb{Z}$ (幂), $+ : (\mathbb{Z}\times\mathbb{Z})\to\mathbb{Z}$ (加法);
- **关系** ${\geq} : (\mathbb{N}\times\mathbb{N})\to\mathsf{Prop}$;
- **等式** ${=} : (\mathbb{Z}\times\mathbb{Z})\to\mathsf{Prop}$;
- **逻辑运算** ${\neg} : \mathsf{Prop}\to\mathsf{Prop}$ (非), ${\Rightarrow} : \mathsf{Prop}\times\mathsf{Prop}\to\mathsf{Prop}$ (蕴涵);
- **量词** $\forall : (A \to \mathsf{Prop}) \to \mathsf{Prop}$ (全称量词).


... (todo, 或许不需要教程了, 直接看[一阶语言](一阶语言.md))
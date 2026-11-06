---
title: 由带状范畴染色的标架缠结
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

由范畴 $\mathcal C$ 染色的[标架缠结](缠结.md)范畴 $\mathcal T (\mathcal C)$ 是 $\mathcal C$ [自由](自由-遗忘伴随.md)生成的[带状范畴](带状范畴.md). 当 $\mathcal C$ 本身为[带状范畴](带状范畴.md)时, 有结构函子 $\mathcal T(\mathcal C) \to \mathcal C$.

当然, 无染色的标架[缠结](缠结.md)范畴本身可视为 $\mathcal C = 1$ 的特殊情形.

## 定义

设 $\mathcal C$ 为[带状范畴](带状范畴.md), 定义由 $\mathcal C$ 染色的[缠结](缠结.md)范畴 $\mathcal T(\mathcal C)$ 如下:

- 其对象为 $(A,\varepsilon) := ((A_1,\varepsilon_1),\cdots,(A_n,\varepsilon_n))$, $A_i\in\mathcal C$, $\varepsilon_i \in \{\pm 1\}$,
- 态射 $(A,\varepsilon)\to (B,\varepsilon')$ 为由 $\mathcal C$ 的态射染色的[标架缠结](缠结.md), 缠结端点处标架的方向符合 $\varepsilon,\varepsilon'$ 的符号.

范畴 $\mathcal T(\mathcal C)$ 带有直观的[带状范畴](带状范畴.md)结构:

- 幺半结构即为并置,
- 辫结构即为交换两股线的缠结,
- 带状结构中的扭即为扭转缠结,
- [对偶](对偶(范畴论).md)是反转正负号 $\varepsilon$.

## 性质

### 生成元

和[缠结](缠结.md)范畴类似, 染色缠结范畴由基本缠结生成.
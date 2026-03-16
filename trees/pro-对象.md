---
title: pro-对象
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

范畴 $\mathcal C$ 的 pro-对象是其对象的形式[余滤极限](余滤极限.md).

## 定义

范畴 $\mathcal C$ 的 pro-对象的范畴
$$
\mathsf{Pro}(\mathcal C) \hookrightarrow \mathsf{Fun}(\mathcal C,\mathsf{Set})^{\mathrm{op}}
$$
是[可表函子](可表函子.md)在 $\mathsf{Fun}(\mathcal C,\mathsf{Set})^{\mathrm{op}}$ 中的[余滤极限](余滤极限.md)构成的全子范畴.

## 例

- [pro-有限集](pro-有限集.md)
- [pro-有限群](pro-有限群.md)

## 性质

### 态射的计算

由[米田引理](米田引理.md), 对于 $X\in\mathsf{Pro}(\mathcal C)$ (视为函子 $\mathcal C\to\mathsf{Set}$) 与 $c\in\mathcal C$,
$$
\operatorname{Hom}_{\mathsf{Pro}(\mathcal C)}(X,\mathbf{y}(c))\simeq X(c).
$$
因此我们可以谈论 "$X$ 到 $c$ 的态射", 也即 $X(c)$ 的元素.

由定义和 $\operatorname{Hom}$ 函子保持极限的性质, 可直接得到 pro-对象之间的态射的如下计算.

**命题**. 设 $X,Y\in\mathsf{Pro}(\mathcal C)$ 对应函子 $X,Y\colon \mathcal C\to\mathsf{Set}$.
$$
\operatorname{Hom}_{\mathsf{Pro}(\mathcal C)}(X,Y) \simeq \operatorname{lim}_{Y \to d}\operatorname{colim}_{X\to c} \operatorname{Hom}(c,d).
$$
其中, $X\to c$ 表示的是 $X$ 到对象 $c\in\mathcal C$ 的 "态射", 也即 $X(c)$ 的元素.

具体证明见[预层](预层意象.md)页面 "态射的计算" 小节.

### 自由余滤完备化

范畴 $\mathcal C$ 的 pro-对象的范畴 $\mathsf{Pro}(\mathcal C)$ 可视为向 $\mathcal C$ 中自由地添加余滤极限的结果. 这体现为如下的结论.

**命题**. 设 $\mathcal C$ 为范畴, $\mathcal D$ 是具有余滤极限的范畴, 有[全忠实嵌入](全忠实函子.md) $i\colon \mathcal C\to\mathcal D$, 且 $i$ 的像落在[余紧对象](紧对象.md)的子范畴中. 那么 $i$ 可沿 $\mathcal C\to\mathsf{Pro}(\mathcal C)$ [右 Kan 扩张](Kan扩张.md)成为全忠实嵌入 $i\colon \mathsf{Pro}(\mathcal C) \to \mathcal D$; 对于 pro-对象 $X\colon \mathcal C\to\mathsf{Set}$,
$$
i(X) = \operatorname{lim}_{X\to c} i(c).
$$

_证明_.
设 $X,Y\in\mathsf{Pro}(\mathcal C)$,
$$
\begin{aligned}
\operatorname{Hom}_{\mathsf{Pro}(\mathcal C)}(X,Y)
&\simeq
\operatorname{lim}_{Y\to d}\operatorname{colim}_{X\to c}\operatorname{Hom}_{\mathcal C}(c,d)\\
&\simeq
\operatorname{lim}_{Y\to d}\operatorname{colim}_{X\to c}\operatorname{Hom}_{\mathcal D}(i(c),i(d))\\
&\simeq^*
\operatorname{lim}_{Y\to d}\operatorname{Hom}_{\mathcal D}(\operatorname{lim}_{X\to c}i(c),i(d))\\
&\simeq \operatorname{Hom}_{\mathcal D}(\operatorname{lim}_{X\to c}i(c),\operatorname{lim}_{Y\to d}i(d))\\
&\simeq\operatorname{Hom}_{\mathcal D}(i(X),i(Y)).
\end{aligned}
$$
其中标记为 $\simeq^*$ 的一步使用了 $i(d)$ 的余紧性. $\square$

上述命题的一个重要应用是将 [pro-有限集](pro-有限集.md)与 [pro-有限群](pro-有限群.md)视为紧 Hausdorff 空间, 因为有限离散空间是紧 Hausdorff 空间范畴 $\mathsf{CHaus}$ 中的余紧对象.
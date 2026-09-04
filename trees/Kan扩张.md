---
title: Kan 扩张
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


## 定义


对于函子 $f\colon \mathcal C \to \mathcal D$ 以及范畴 $\mathcal E$, 有拉回函子
$$
f^*\colon \mathsf {Fun}(\mathcal D,\mathcal E)\to \mathsf {Fun}(\mathcal C,\mathcal E).
$$
左右 Kan 扩张
$$
\operatorname{LKE}_f,\operatorname{RKE}_f
\colon \mathsf {Fun}(\mathcal C,\mathcal E)\to \mathsf {Fun}(\mathcal D,\mathcal E)
$$
即是 $f^*$ 的左右伴随.

## 性质

### 计算式
左右 Kan 扩张具有用余极限和极限的具体计算式:
$$
\operatorname{LKE}_f (F)(d) = \operatorname{colim}_{f(c) \to d} F(c),
$$
$$
\operatorname{RKE}_f (F)(d) = \operatorname{lim}_{d\to f(c)} F(c).
$$

这两条计算式也可以用[余端](余端.md)与[端](端.md)表述为
$$
\operatorname{LKE}_f(F)(d) = \int_{c\in \mathcal C}\operatorname{Hom}(f(c),d)\otimes F(c),
$$
$$
\operatorname{RKE}_f(F)(d) = \int_{c\in \mathcal C}^*[\operatorname{Hom}(d,f(c)),F(c)].
$$
其中 $\otimes,[-,-]$ 分别表示[生象](生象.md)在 $\mathcal D$ 的对象上的[张量积](张量积.md)与[幂](幂.md).

## 例

### 极限

对于指标范畴 $\mathcal I$, 沿 $\mathcal I\to 1$ 的左右 Kan 扩张 $\mathsf {Fun}(\mathcal I,\mathcal C)\to\mathcal C$ 分别为余极限和极限:
$$
\operatorname{LKE} (X) = \operatorname{colim}_{i} X(i),
$$
$$
\operatorname{RKE} (X) = \operatorname{lim}_{i} X(i).
$$


### 几何实现 (米田扩张)

[预层范畴](预层意象.md)是自由[余完备化](余完备化.md), 换言之, 任意到余完备范畴 $\mathcal D$ 的函子 $F\colon \mathcal C\to\mathcal D$ 都可扩张到预层范畴 $\widehat {\mathcal C}$, 这正是沿[米田嵌入](米田嵌入.md)的左 Kan 扩张.
该左 Kan 扩张有时记为张量积
$$
F \otimes - \colon \widehat {\mathcal C} \to \mathsf{Set}.
$$
这也可理解为[代函子](代函子.md) $1 \to \mathcal C$ 与 $\mathcal C\to 1$ 的复合.

例如, $|{-}|\colon \Delta\to\mathsf {Top}$ 沿[米田嵌入](米田嵌入.md) $\mathbf{y}\colon \Delta\to\mathsf {sSet}$ 的左 Kan 扩张 $\mathsf {sSet}\to\mathsf {Top}$ 为单纯集的[几何实现](几何实现.md):
$$
|X| := \operatorname{colim}_{\Delta^n \to X} |\Delta^n|,
$$
其中 $\Delta^n = \mathbf{y}([n])$.

### 预层范畴之间的伴随

[预层范畴之间的伴随](预层范畴之间的伴随.md)
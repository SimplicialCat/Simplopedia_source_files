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

## 例

| 左           | 右            |
| ----------- | ------------ |
| 张量积 $\otimes$   | Hom          |
| 余极限       | 极限          |
| 几何实现 (realization) | 全体 (totalization) |

### 极限

对于指标范畴 $\mathcal I$, 沿 $\mathcal I\to 1$ 的左右 Kan 扩张 $\mathsf {Fun}(\mathcal I,\mathcal C)\to\mathcal C$ 分别为余极限和极限:
$$
\operatorname{LKE} (X) = \operatorname{colim}_{i} X(i),
$$
$$
\operatorname{RKE} (X) = \operatorname{lim}_{i} X(i).
$$


### 几何实现

$|{-}|\colon \Delta\to\mathsf {Top}$ 沿[米田嵌入](米田嵌入.md) $\mathbf{y}\colon \Delta\to\mathsf {sSet}$ 的左 Kan 扩张 $\mathsf {sSet}\to\mathsf {Top}$ 为单纯集的[几何实现](几何实现.md):
$$
|X| := \operatorname{colim}_{\Delta^n \to X} |\Delta^n|,
$$
其中 $\Delta^n = \mathbf{y}([n])$.

### 预层范畴之间的伴随

[预层范畴之间的伴随](预层范畴之间的伴随.md)
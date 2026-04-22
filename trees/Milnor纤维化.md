---
title: Milnor 纤维化
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念

Milnor 纤维化是刻画代数簇奇点 (局部上不是流形的点) 局部的拓扑信息的工具.

孤立奇点的附近长得像某个低一维子流形的锥, 称为 **Milnor 扭结**.

有些奇异球面可构造为 Milnor 扭结.

## 定义

### 球面版本

设 $V$ 是由多项式 $f\colon \mathbb{C}^n\to\mathbb{C}$ 定义的复超曲面, 且 $0\in V$ 为孤立奇点. 对于充分小的正数 $\varepsilon$, 记 $S_\varepsilon$ 为球面 $\{z\in\mathbb{C}^n : |z|=\varepsilon\}$, $K = V \cap S_\varepsilon$, 定义 **Milnor 纤维化**为
$$
\phi\colon S_\varepsilon \setminus K \to S^1,\,z\mapsto \frac{f(z)}{|f(z)|}.
$$

### 开球版本

设 $f,V$ 如前, $B_\varepsilon$ 为开球 $\{z\in\mathbb{C}^n : |z|<\varepsilon\}$, $D_\eta^*$ 为去心圆盘 $\{z\in\mathbb{C} : 0<|z|<\eta\}$. 映射
$$
f\colon B_\varepsilon \cap f^{-1}(D_\eta^*) \to D_\eta^*
$$
有时也称作 **Milnor 纤维化**.


## 性质

球面版本的 Milnor 纤维化是 $S^1$ 上的光滑[纤维丛](纤维丛.md), 每个纤维是 $2n-2$ 维光滑流形, 同伦型为 $\mu$ 个 $S^{n-1}$ 的一点并, 其中 $\mu$ 称为 Milnor 数.

开球版本的 Milnor 纤维化是 $D_\eta^*$ 上的光滑纤维丛, 其纤维也是 $2n-2$ 维光滑流形.

如下命题说明两个版本的 Milnor 纤维至少是同伦等价的 (几乎是同胚的, 只相差边界的开闭).

**命题**. $\phi \colon  \overline{S_\varepsilon \setminus f^{-1}(D_\eta)} \to S^1$
与
$f\colon B_\varepsilon\cap f^{-1}(S_\eta) \to S_\eta$ 是同构的纤维丛.

*证明概要*. 构造一个向量场的[流](向量场的流.md). 这个向量场切于 $\operatorname{Arg}f$ 的水平面 (从而其流保持 $f$ 的辐角不变), 使得 $|z|$ 与 $|f(z)|$ 同时增加.

## 例

考虑带一个奇点的复曲线
$$
V=\{(x,y)\in\mathbb{C}^2\mid y^2 = x^3\},
$$
容易看到, 它在奇点 $p=(0,0)$ 附近长得像三叶结 $K$ 的锥 $\operatorname{Cone}(K)$. [^1]

[^1]: 准确地说, 记 $D_\varepsilon = \{|(x,y)|\leq\varepsilon\}$, 当 $\varepsilon$ 充分小时, 三元组
$(D_\varepsilon,D_\varepsilon \cap V,p)$ 同构于 $(\operatorname{Cone}(S^3),\operatorname{Cone}(K),*)$.

下图是 $V$ 在单位球中的部分 (先投影到 $S^3$ 再球极投影到 $\mathbb{R}^3$, 颜色表示在 $\mathbb{C}^2$ 中的模长).

<img src="/assets/singularity-x3y2.svg" alt="Milnor 纤维化" width="240" style="display:block; margin:auto;">

下图是 $t=0.15$ 时的 Milnor 纤维, 它是带边界的光滑曲面.

<div style="display: flex; justify-content: center; gap: 12px; flex-wrap: wrap;">
  <img src="/assets/milnor-fiber-1.svg" alt="Milnor 纤维 (俯视图)" style="max-width: 240px; height: auto; object-fit: contain;">
  <img src="/assets/milnor-fiber-2.svg" alt="Milnor 纤维 (侧视图)" style="max-width: 200px; height: auto; object-fit: contain;">
</div>

下图是球面版本的 Milnor 纤维 (球极投影到 $\mathbb{R}^3$).

<div style="display: flex; justify-content: center; gap: 12px; flex-wrap: wrap;">
  <img src="/assets/milnor-fiber-3.gif" alt="球面版本 Milnor 纤维 (俯视图)" style="max-width: 200px; height: auto; object-fit: contain;">
  <img src="/assets/milnor-fiber-4.gif" alt="球面版本 Milnor 纤维 (侧视图)" style="max-width: 200px; height: auto; object-fit: contain;">
</div>
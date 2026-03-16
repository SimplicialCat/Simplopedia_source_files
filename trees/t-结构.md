---
title: t-结构
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---



## 定义

设 $\mathcal C$ 为[三角范畴](三角范畴.md)或[稳定无穷范畴](稳定无穷范畴.md), 其上的一个 t-结构是一对子范畴 $(\mathcal C_{\geq 0},\mathcal C_{\leq 0})$, 记 $\mathcal C_{\geq n}=\mathcal C_{\geq 0}[n]$, $\mathcal C_{\leq n}=\mathcal C_{\leq 0}[n]$, 满足
- 对任意 $X\in\mathcal C_{\geq 0}$, $Y\in\mathcal C_{\leq -1}$, $\operatorname{Hom}(X,Y)=0$.
- $\mathcal C_{\geq 1}\subset\mathcal C_{\geq 0}$, $\mathcal C_{\leq -1}\subset\mathcal C_{\leq 0}$.
- 对任意 $X\in\mathcal C$ 存在[纤维列](纤维列.md) $X'\to X\to X''$, $X'\in\mathcal C_{\geq 0}$, $X''\in\mathcal C_{\leq -1}$.

$\mathcal C_{\geq 0}$ 的对象又称连合 (connective) 对象.

注意另一种记号 "上同调记号", $\mathcal C^{\geq n}$, 对应此处的 $\mathcal C_{\leq -n}$.

[稳定无穷范畴](稳定∞-范畴.md)上的 t-结构等同于其[链复形范畴的同伦范畴](链复形范畴的同伦范畴.md)上的 t-结构.

t-结构的**心** (heart) 是 $\mathcal C_{\leq 0}\cap\mathcal C_{\geq 0}$.

t-结构之间的正合函子是保持两个子范畴 $\mathcal C_{\geq 0},\mathcal C_{\leq 0}$ 的函子.
## 性质

对于 $m<n$, 容易证明
$$
\mathcal C_{\leq m} \cap \mathcal C_{\geq n} \simeq \{0\}.
$$
在[稳定无穷范畴](稳定无穷范畴.md)的 t-结构中, 对于 $X\in\mathcal C_{\geq 0}$ 与 $Y\in\mathcal C_{\leq n}$, $\operatorname{Hom}(X,Y)$ 为 $n$-类型. 这是因为
$$
\Omega \operatorname{Hom}(X,Y)\simeq \operatorname{Hom}(X,\Omega Y).
$$
特别地, 对于 $X\in\mathcal C_{\geq 0}$ 与 $Y\in\mathcal C_{\leq 0}$, $\operatorname{Hom}(X,Y)$ 为集合 ($0$-类型).

由此可知 t-结构的心为 $1$-范畴. 事实上, 它是 [Abel 范畴](Abel范畴.md), 其中的短正合列正是 $\mathcal C$ 中的纤维列.

注意 t-结构的心不能反过来决定 t-结构. 稳定无穷范畴一般也不等价于其上 t-结构的心的[导出范畴](导出范畴.md). 不是所有的 t-结构都来自导出范畴. 例如[谱](谱.md)的范畴不同于 $\mathsf {Ab}$ 的导出范畴 (否则稳定同伦论就没有意义了).

### 截断

嵌入 $\mathcal C_{\leq n}\to \mathcal C$ 有左伴随 $\tau_{\leq n}$, 嵌入 $\mathcal C_{\geq n}\to\mathcal C$ 有右伴随 $\tau_{\geq n}$.

$X\in\mathcal C_{\geq 0}$ 当且仅当 $\operatorname{Hom}(X,Y)\simeq\operatorname{Hom}(\tau_{\leq -1}X,Y)\{0\}$ 对任意 $Y\in\mathcal C_{\leq -1}$ 成立.

$X\in\mathcal C_{\leq 0}$ 当且仅当 $\operatorname{Hom}(Y,X)\simeq\operatorname{Hom}(Y,\tau_{\geq 1}X)\{0\}$ 对任意 $Y\in\mathcal C_{\geq 1}$ 成立.

$\tau_{\leq m}\tau_{\leq n}\simeq\tau_{\leq\operatorname{min}(m,n)}$.

$\tau_{\geq m}\tau_{\geq n}\simeq\tau_{\leq\operatorname{max}(m,n)}$.

由 $\mathcal C$ 到 $\mathcal C_{\leq m}\cap\mathcal C_{\geq n}$ 的两种截断方式是等价的.

对任意 $n$, $\mathcal C_{\leq n}\cap\mathcal C_{\geq n}\simeq \mathcal C^{\heartsuit}$. 一个对象截断到这个范畴中的像又称为它的第 $n$ 阶同调, 对于所有的 $n$ 这些同调形成长正合列.

注意所有同调为 $0$ 不能推出这个对象为 $0$, 这个现象在许多场合是有趣的, 如无穷维表示论, 无限型代数几何.

### (余) 极限封闭性

$\mathcal C_{\geq 0}$ 关于余极限封闭, $\mathcal C_{\leq 0}$ 关于极限封闭.

### 扩张封闭性

设 $X'\to X\to X''$ 为纤维列,

- 若 $X',X''\in\mathcal C_{\geq 0}$, 则 $X\in\mathcal C_{\geq 0}$.
- 若 $X\in\mathcal C_{\geq 0}$, $X''\in\mathcal C_{\geq 1}$, 则 $X'\in\mathcal C_{\geq 0}$.
- 若 $X\in\mathcal C_{\geq 0}$, $X'\in\mathcal C_{\geq -1}$, 则 $X''\in\mathcal C_{\geq 0}$.

(后两条可通过第一条旋转三角形得到.)

### 分离性

称 t-结构右分离 (因为给我讲这个概念的人使用上同调记号) 是指 $\mathcal C_{\leq-\infty}=\bigcap_n\mathcal C_{\leq n}\simeq\{0\}$, 左分离是指 $\mathcal C_{\geq \infty}=\bigcap_n\mathcal C_{\geq n}\simeq\{0\}$.

### 完备性与完备化

t-结构的完备化为
$$
\widehat {\mathcal C} =\operatorname{lim} (\cdots \overset{\tau_{\leq 2}}{\to}\mathcal C_{\leq 2}\overset{\tau_{\leq 1}}{\to}\mathcal C_{\leq 1}\overset{\tau_{\leq 0}}{\to}\mathcal C_{\leq 0}\overset{\tau_{\leq -1}}{\to}\cdots).
$$
注意此图的右边是不重要的, 可从任意一处截断只保留其左边. 这个极限的一个对象是一个 [Postnikov 塔](Postnikov塔.md). 由定义有自然的函子 $\mathcal C\to\widehat {\mathcal C}$, 当这个函子为同构时, 称 $\mathcal C$ 左完备.

左完备 t-结构是左分离的, 反之不一定.

## 例

### 谱范畴

无穷范畴的[稳定化](稳定化.md)上有典范的 t-结构:
- $\operatorname{Sp}(\mathcal C)_{\geq 0}$ 是 $\Sigma^{\infty}$ 的像在扩张和余极限之下生成的子范畴.
- $\operatorname{Sp}(\mathcal C)_{\leq -1}$ 是 $\Omega^{\infty}$ 为 $0$ 的子范畴.

[谱](谱.md)范畴的心与 $\mathsf {Ab}$ 的同构由 [Eilenberg–MacLane 谱](Eilenberg–MacLane谱.md)给出. 此时同调是谱的同伦群.


[偏屈 t-结构](偏屈t-结构.md)
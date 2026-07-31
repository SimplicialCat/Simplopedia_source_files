---
title: 几何 (带结构的意象)
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

本页介绍 Lurie 的 [DAG V](LurieDAGV.md) 描绘的 "几何" 图景. 加入了一些个人的见解.

几何学的各个分支研究的[经典概形](概形.md), [Deligne–Mumford 叠](叠.md), 流形, 复解析流形, [导出概形](导出概形.md)等等不同几何对象, 都可以描述为某种带结构的[意象](意象.md) $(\mathcal X,\mathcal O_{\mathcal X})$, 类比于[局部环化空间](局部环化空间.md). 从[范畴逻辑](范畴逻辑.md)的角度, 这里的结构 $\mathcal O_{\mathcal X}$ 可以理解为一种[本质代数结构](本质代数理论.md)加上一些 "局部性" (见后文). 同时, 这些结构可用[分类意象](分类意象.md)描述: 一个结构就是一个意象态射 $\mathcal X \to \mathcal K$. 每种结构就是一种**几何**.

## 结构层

### 意象上的层

所谓 "带结构的空间" 就是一个意象带有其上的一个带结构的层. (这里, 意象 $\mathcal X$ 上的层就是指范畴 $\mathcal X$ 的对象.)

设 $\mathcal X$ 为[意象](意象.md), $\mathcal C$ 为范畴, 我们定义 $\mathcal X$ 上的 $\mathcal C$-值层为保持极限的函子
$$
\mathcal X^{\mathrm{op}} \to \mathcal C.
$$
记其构成的范畴为 $\mathsf{Sh}_{\mathcal C}(\mathcal X)$.
该定义囊括了几乎所有几何分支中**结构层** (structure sheaves) 的概念, 如拓扑空间上的环层, Deligne–Mumford 叠上的拟凝聚层, 光滑流形上的光滑函数层, 等等等等.

上述的意象上的层的概念与[景上的层](景上的层.md)的概念是相容的, 即一个景上的层等同于其表现的意象上的层 ([DAG5](LurieDAGV.md) 1.1.12).

当 $\mathcal C$ 为可表现范畴时还有
$$
\mathsf{Sh}_{\mathcal C}(\mathcal X) \simeq \mathcal C\otimes\mathcal X.
$$

### 环层

为了引出几何的概念, 先考虑环层, 即 $\mathcal C = \mathsf{Ring}$. 大家关心的例子基本上都是由此稍稍改动得来. 我们知道意象 $\mathcal X$ 上的环层也就是环的理论在范畴 $\mathcal X$ 中的模型, 也就是环的[语法范畴](语法范畴.md)到 $\mathcal X$ 的保持[有限极限](有限极限.md)的函子. 有另一种不用逻辑术语的方法表述这件事, 那就是使用环的范畴等于有限表现环的范畴的 [ind-对象](ind-对象.md)的范畴 $\mathsf{Ring} =\mathsf{Ind}(\mathsf{Ring}_{\mathrm{fp}})$ 即[自由滤余完备化](余完备化.md).

设小范畴 $\mathcal G$ 具有[有限极限](有限极限.md), $\mathcal C = \mathsf{Ind}(\mathcal G^{\mathrm{op}}) = \mathsf{Pro}(\mathcal G)^{\mathrm{op}}$. 则有
$$
\begin{aligned}
    \mathsf{Fun}^{\mathrm{fin.~lim.}}(\mathcal G,\mathcal X) &\simeq \mathsf{Fun}^{\mathrm{lim}}(\mathsf{Pro}(\mathcal G),\mathcal X)\\
    &\simeq\mathsf{Fun}^{\mathrm{R}}(\mathcal C^{\mathrm{op}},\mathcal X)\\
    &\simeq\mathsf{Fun}^{\mathrm{R}}(\mathcal X^{\mathrm{op}},\mathcal C)\\
    &\simeq\mathsf{Fun}^{\mathrm{lim}}(\mathcal X^{\mathrm{op}},\mathcal C)=\mathsf{Sh}_{\mathcal C}(\mathcal X).
\end{aligned}
$$
这里使用了[伴随函子定理](伴随函子定理.md)的一种推广, 只要求一边为可表现范畴 (见 [HTT](LurieHTT.md) 5.5.2.9 及之后的注).

### 可容许结构与几何的定义

为了囊括[局部环化空间](局部环化空间.md)的概念, 我们需要范畴 $\mathcal C$ 或者其生成元 $\mathcal G$ 具有更多的结构以表达局部性. 人们发现所需的结构是 Grothendieck 拓扑, 以及如下的**可容许结构**:

**定义**. 一个**几何**是一个具有[有限极限](有限极限.md)的[幂等完备](幂等完备范畴.md)小范畴 $\mathcal G$, 配备如下的**可容许结构** (admissiblility structure):

- 一族**可容许态射** (admissible morphisms), 构成子范畴 $\mathcal G^{\mathrm{ad}}\subset\mathcal G$ (包含 $\mathcal G$ 的所有对象);
- $\mathcal G^{\mathrm{ad}}$ 上的一个 [Grothendieck 拓扑](Grothendieck拓扑.md);

满足如下条件.

- 可容许态射关于[拉回](拉回.md)和[收缩](收缩.md)封闭;
- 若复合态射 $gf$ 与 $g$ 可容许, 则 $f$ 可容许.

两个几何之间的变换 $\mathcal G'\to \mathcal G$ 是保持可容许态射以及 Grothendieck 拓扑的函子.

上述定义可理解为用景 (与景的态射) [表现](数学对象的表现.md)意象 (与意象之间的态射). 当然, 这种表现是有冗余的, 也即不同的景可以表现同一个意象.

在环层的例子中, $\mathcal G = \mathsf{Aff}_{\mathrm{ft}}$ 是有限型仿射概形的范畴. 我们知道 $\mathcal G$ 上的 Zariski Grothendieck 拓扑给出了[局部环](局部环.md)的[分类意象](分类意象.md) (见 [Monique Hakim](MoniqueHakimToposAnneles.md)).
我们将看到一般的几何也可用分类意象来描述.

**定义** (意象上的 $\mathcal G$-结构). 设 $\mathcal G$ 为几何, $\mathcal X$ 为意象. 定义 $\mathcal X$ 上的 $\mathcal G$-结构为保持有限极限的函子 $\mathcal G\to\mathcal X$, 满足对 $\mathcal G$ 中任意一族可容许态射构成的覆盖, 其在 $\mathcal X$ 中也构成覆盖 ([满射](意象中的满射.md)).

这基本上是[景的态射](景的态射.md) $\mathcal G\to\mathcal X$, 它将诱导意象的态射 $\mathcal X \to\mathsf{Sh}(\mathcal G)$ (注意 $\mathsf{Sh}(\mathcal X) = \mathcal X$). 在我们最熟悉的例子中, $\mathsf{Sh}(\mathcal G)$ 是局部环的分类意象, 意象的态射 $\mathcal X \to\mathsf{Sh}(\mathcal G)$ 等同于 $\mathcal X$ 上的局部环.

记 $\mathcal X$ 上的 $\mathcal G$-结构的范畴为 $\mathsf{Str}_{\mathcal G}(\mathcal X)$.

### 分解系统

局部环之间的同态 $A\to B$ 不仅要是环同态, 还需要如下的额外性质: $A$ 中的不可逆元在 $B$ 中仍不可逆. 这种环同态称为**局部**的. 这有点像是[保守函子](保守函子.md)的性质.

交换环同态 $A\to B$ 总是可以分解为
$$
A \to A[S^{-1}] \to B,
$$
其中 $S = \{a\in A\mid f(a)\in B^\times\}$, 且 $A[S^{-1}]\to B$ 为局部同态.
事实上, 这构成了交换环范畴上的一个[分解系统](正交分解系.md).


类似地, $\mathsf{Str}_{\mathcal G}(\mathcal X)$ 上也有一个[分解系统](正交分解系.md), 其右边分量为局部同态的类:

**定义** ($\mathcal G$-结构的局部同态). 设 $\mathcal O,\mathcal O'\colon \mathcal G\to\mathcal X$ 为 $\mathcal X$ 上的 $\mathcal G$-结构, 有自然变换 $\alpha\colon \mathcal O\to\mathcal O'$. 若对 $\mathcal G$ 中任意可容许态射 $U\to V$, 自然变换 $\alpha$ 给出的方块
$$
\begin{array}{ccc}
\mathcal O(U) & \rightarrow & \mathcal O(V) \\
\downarrow &  & \downarrow \\
\mathcal O'(U) & \rightarrow & \mathcal O'(V)
\end{array}
$$
都是拉回方块, 则称 $\alpha$ 为**局部同态**.

注意, 范畴 $\mathsf{Str}_{\mathcal G}(\mathcal X)$ 本身只取决于 $\mathcal G$ 及其上的 Grothendieck 拓扑, 但局部同态的概念依赖于可容许结构.

**定理**. 设 $\mathcal G$ 为任意几何, 对于意象 $\mathcal X$, 范畴 $\mathsf{Str}_{\mathcal G}(\mathcal X)$ 上有[分解系统](正交分解系.md) $(L_{\mathcal X},R_{\mathcal X})$, 使得 $R_{\mathcal X}$ 为局部同态的类.

*证明*.
首先考虑 $\mathcal X = \mathsf{Ani}$ 的特例. 注意到
$$
\mathsf{Fun}^{\mathrm{fin.~lim.}}
(\mathcal G, \mathsf{Ani}) \simeq \mathsf{Pro}(\mathcal G)^{\mathrm{op}},
$$


### 分类意象

设 $\mathcal K$ 为意象. 定义 $\mathcal K$ 上的一个**几何结构**为如下资料: 对任意一个意象 $\mathcal X$, 函子性地指定 $\operatorname{Hom}(\mathcal X,\mathcal K)$ 的一个[分解系统](正交分解系.md) $(L_{\mathcal X},R_{\mathcal X})$.
函子性是指对意象态射 $\mathcal Y\to \mathcal X$, 函子 $\mathsf{Fun}(\mathcal X,\mathcal K) \to \mathsf{Fun}(\mathcal Y,\mathcal K)$ 将 $L_{\mathcal X}$ 映射到 $L_{\mathcal Y}$, $R_{\mathcal X}$ 映射到 $R_{\mathcal Y}$.

定义 $\operatorname{Str}_{\mathcal K}^{\mathrm{loc}}(\mathcal X)$ 为 $\operatorname{Hom}_{\mathsf{Topos}}(\mathcal X,\mathcal K)$ 的对象及 $R_{\mathcal X}$ 中的态射构成的范畴.

每种几何 $\mathcal G$ 都表现一个意象 $\mathcal K := \mathsf{Sh}(\mathcal G)$, 称为其[分类意象](分类意象.md). 此时 $\mathcal K$ 上的几何结构所需的分解系统 $(L_{\mathcal X},R_{\mathcal X})$ 正是前述的 $\mathsf{Str}_{\mathcal G}(\mathcal X)$ 上的分解系统.

**命题**.
$$
\mathsf{Str}_{\mathcal G}^{\mathrm{loc}}(\mathcal X) \simeq \mathsf{Str}_{\mathcal K}^{\mathrm{loc}}(\mathcal X).
$$

上述概念关于 $\mathcal X$ 都是函子性的. 这可以通过考虑万有纤维范畴来说明, 但此处略去. 总之, 我们可以将所有意象 $\mathcal X$ 上的 $\mathcal G$-结构 (或 $\mathcal K$-结构) 放在一起, 定义 "带 $\mathcal G$-结构 (或带 $\mathcal K$-结构) 意象的范畴"
$$
\mathsf{Topos}_{\mathcal G} \simeq \mathsf{Topos}_{\mathcal K}.
$$

**例**. 单点对应的意象 $\mathsf{Ani}$ 是平凡结构的分类意象: $\mathsf{Topos}_{\mathsf{Ani}} = \mathsf{Topos}$.

**例**. 任何一个意象 $\mathcal K$ 都带有平凡的几何结构, 此时 $\mathsf{Topos}_{\mathcal K}$ 即是 $(\infty,2)$-范畴 $\mathsf{Topos}$ 的切片范畴 $\mathsf{Topos}_{/\mathcal K}$, 其中对象为 $\mathcal K$ 上的相对意象 $\mathcal X\to\mathcal K$, 态射为交换图
$$
\begin{array}{ccc}
\mathcal X & \overset{f}{\rightarrow} & \mathcal Y \\
 & \searrow & \downarrow \\
 &  & \mathcal K,
\end{array}
$$
带有 $\mathcal K$-结构的态射 $f^*\mathcal O_{\mathcal Y} \to \mathcal O_{\mathcal X}$ (注意这个态射不要求为同构). 我们最熟悉的例子是
$$
\mathcal K = \mathsf{Sh}(\mathsf{Aff}_{\mathrm{ft}},\mathrm{Zar}),
$$
即局部环的分类意象, 意象 $\mathcal X$ 上的 $\mathcal K$-结构等同于 $\mathcal X$ 上的局部环.

## 概形论

### 相对谱

设 $A$ 为交换环, 其**谱** $(\operatorname{Spec}A,\mathcal O_{\operatorname{Spec}A})$ 是具有如下泛性质的局部环化空间: 任意局部环化空间 $(X,\mathcal O_X)$ 到 $(\operatorname{Spec}A,\mathcal O_{\operatorname{Spec}A})$ 的态射等同于环同态 $A \to \Gamma(X,\mathcal O_X)$.
我们可将后者视为环化空间的态射 $(X,\mathcal O_X)\to (*,A)$. 换言之, 谱这一操作是 "遗忘函子"
$$
\mathsf{LocRingSp} \to \mathsf{RingSp}
$$
的右伴随.

类似地, 对于几何的变换 $\mathcal G' \to \mathcal G$ (意象的态射 $\mathsf{Sh}(\mathcal G) \to \mathsf{Sh}(\mathcal G')$), 其诱导的函子
$$
\mathsf{Topos}_{\mathcal G} \to \mathsf{Topos}_{\mathcal G'}
$$
有右伴随
$$
\operatorname{Spec}_{\mathcal G}^{\mathcal G'}\colon \mathsf{Topos}_{\mathcal G'} \to \mathsf{Topos}_{\mathcal G},
$$
称为**相对谱**.



## 光滑性

### 预几何

上面说的 "几何" 都是所谓 "导出" 几何, 为了表达由 "经典" 几何过渡到 "导出" 几何的过程还需要**预几何** (pregeometry) 的概念. 预几何与最终的几何之间的区别在于[截断度](截断性.md)从 $0$ 到 $\infty$, 例如经典[代数几何](代数几何.md)的截断度为 $0$, [导出代数几何](导出代数几何.md)的截断度为 $\infty$.
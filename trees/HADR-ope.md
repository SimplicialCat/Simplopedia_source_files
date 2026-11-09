---
title: HADR - 算畴
tag: 讲稿
author: [SimplicialCat](SimplicialCat.md)
---

## 对称算畴

### 引子: 代数模式 $\mathrm{Assoc}$

前面介绍的[代数模式](代数模式.md)的态射 $\gamma\colon \Delta \to \Gamma$ (另见 [Segal 函子 $\gamma$](Segal函子γ.md)) 未能通过左 Kan 扩张给出结合代数的交换化, 因为左 Kan 扩张不保持 Segal 条件. 事实上, 我们可以将 $\Delta$ 替换为 (或者说是**补全**为) $\Gamma$ 上的另一个代数模式 $\mathrm{Assoc} \to \Gamma$, 不改变其 Segal 对象, 同时又能通过左 Kan 扩张直接给出结合代数的交换化.

定义代数模式 $\mathrm{Assoc}$ 如下:

- 范畴 $\mathrm{Assoc}$ 的对象为 $\langle 0 \rangle, \langle 1 \rangle, \langle 2 \rangle, \cdots$, 态射 $\langle n \rangle \to \langle m \rangle$ 对每个 $i\in\{1,\cdots, n\}$ 赋予互不相交的子集 $S_i\subset \{1,\cdots,m\}$ 以及 $S_i$ 上的一个[全序](全序集.md) (注意这是 $\mathrm{Assoc}$ 与 $\Gamma$ 的区别所在).
- 活性映射, 惰性映射与 $\Gamma$ 的定义相同, 即惰性映射为每个元素对应一个单元子集, 活性映射为所有像之并等于全集.
- 基本对象为 $\langle 1 \rangle$.

由定义很明显有代数模式的态射 $u\colon \mathrm{Assoc} \to \Gamma$ (甚至每个对象 $\langle n \rangle$ 在两种模式中所含的基本对象的范畴都相同, 都是 $n$ 个对象的离散范畴).

另外还有一个函子 $\Delta \to \mathrm{Assoc}$:

- 将 $[n]\in\Delta$ 对应到 $\langle n \rangle \in \mathrm{Assoc}$,
- 单纯形映射 $[n] \to [m]$ 把 $[n]$ 的每个基本箭头 $0\to 1, 1\to 2,\cdots, (n-1)\to n$ 对应到 $[m]$ 的连续若干个 (也可能是零个) 箭头的复合; 这些箭头当然带有继承自 $[m]$ 的全序), 从而给出 $\mathrm{Assoc}$ 中的态射 $\langle n \rangle \to \langle m \rangle$.

这样我们可以看到 $\Delta$ 与 $\mathrm{Assoc}$ 的区别: $\Delta$ 中的态射是保序映射, 而 $\mathrm{Assoc}$ 的态射不必保序 (毕竟对象上本身没有序), 而是要在每个元素打到的子集上手动指定一个序.

尽管如此, 代数模式 $\mathrm{Assoc}$ 的 Segal 对象还是等同于[结合代数](结合代数.md). 直观上, 给定结合代数 $X$ 作为 Segal 对象 $X\colon \Delta^{\mathrm{op}} \to \mathcal C$, 要得到 Segal 对象 $X\colon \mathrm{Assoc}^{\mathrm{op}}\to\mathcal C$, 即对每个态射 $\langle n \rangle \to \langle m \rangle$ 指定 $X^m \to X^n$, 只需要将 $X^m$ 重组为 $\prod_{i=1}^n X^{S_i}$, 排列每个 $S_i$, 然后将若干个 $X^{S_i}\to X$ 拼起来就可以了.

沿 $u\colon \mathrm{Assoc} \to \Gamma$ 的左 Kan 扩张给出

$$
u_! A = \operatorname{colim}_{\langle 1\rangle\leadsto\langle m \rangle} A^m.
$$
(这里左 Kan 扩张公式中的指标范畴可以只取活性映射.) 注意到指标范畴的对象 $\langle 1\rangle\leadsto\langle m \rangle$ 上有[对称群](对称群.md)的[作用](群作用.md), 我们看到任意 $m$ 个元素的不同顺序的乘法在 $u_! A$ 中都等同起来了.

### Lurie 的算畴 (对称算畴)

上面介绍的 $\mathrm{Assoc}$ 是 [Lurie HA](LurieHA.md) 定义的[算畴](算畴.md)的一例. 其实 Lurie 的每个算畴都可视为代数模式, 并且是 $\Gamma$ 上某种特殊的代数模式.

在我们使用的约定中 (参见[代数模式](代数模式.md); 注意我们与 [Lurie](LurieHA.md) 相差一个[反范畴](反范畴.md)), 一个**算畴**是一个函子
$$
p\colon \mathcal O \to \Gamma,
$$
记 $p^{-1}(\langle n\rangle)$ 为 $\mathcal O_{\langle n \rangle}$, 满足以下条件:

- (惰性提升) $\Gamma$ 中每个惰性映射 $\langle n\rangle \rightarrowtail \langle m \rangle$ 都有沿 $p$ 的水平 (Cartesian) 提升, 且给出反向的函子 $\mathcal O_{\langle m \rangle} \to \mathcal O_{\langle n \rangle}$; 合起来这给出 $\Gamma_{\mathrm{int}}$ 上的[拉回纤维化](纤维范畴.md);
- (Segal 条件) 由惰性映射 $\rho_i\colon \langle 1\rangle \rightarrowtail \langle n\rangle$ (将 $\{1\}$ 唯一的元素对应到单元子集 $\{i\}\subset \{1,\cdots,n\}$) 给出的态射 $\mathcal O_{\langle n \rangle} \to \prod_{i=1}^n \mathcal O_{\langle 1 \rangle}$ 是等价;
- 对于 $X\in\mathcal O_{\langle k\rangle}$, $Y\in\mathcal O_{\langle \ell\rangle}$ 以及 $\Gamma$ 中任意态射 $f\colon \langle k\rangle \to \langle \ell \rangle$,
  $$
    \operatorname{Hom}^f(X,Y) \simeq \prod_{i=1}^{k}\operatorname{Hom}^{f\rho_i}(X_i,Y),
  $$
  其中 $X_i$ 是 $X$ 根据第二条 (Segal 条件) 分解出的第 $i$ 分量.

我们构造 $\mathcal O$ 上的一个代数模式结构:

- 基本对象的范畴取 $\mathcal O_{\langle 1\rangle}$;
- 惰性映射就是定义中的惰性提升;
- 活性映射就是居于 $\Gamma$ 中的活性映射之上的映射.

上述结构称为 $\Gamma$ 上的[**弱 Segal 纤维化**](弱Segal纤维化.md).
其实, 弱 Segal 纤维化不必以 $\Gamma$ 为底, 而是可以推广到任意代数模式上.

**注**.
- [Lurie HA](LurieHA.md) 中的 $\mathcal O^{\otimes} \to \mathrm{N}(\mathrm{Fin}_*)$ 在本讲义中对应于 $\mathcal O \to \Gamma$, 注意协变性的约定相反.
- Lurie 的 fibration of $\infty$-operads 不是一个模型无关的概念, 在模型无关语言中就是**算畴的态射**.
- Lurie 的 coCartesian fibration of $\infty$-operads 是算畴之间的 Segal 纤维化, 在[直化](直化.md)后也就是 $\mathsf{Cat}$-值 Segal 对象.

### 对称算畴的基本例子

**例**. 记 $\mathsf{Triv} := \Gamma_{\mathrm{int}} \to \Gamma$, 称之为平凡算畴. 平凡算畴的代数就是没有任何结构的对象.


**例**. 记 $\mathbb E_0 \to \Gamma$ 为 $\Gamma$ 中 "将每个元素对应到一个至多一元子集" 的映射构成的宽子范畴, $\mathbb E_0$-代数就是[带基点对象](带基点对象.md).

**例**. $\Gamma$ 上的 Segal 纤维化 $\mathcal C \to \Gamma$, 对应于 Segal 对象 $\Gamma^{\mathrm{op}} \to \mathsf{Cat}$, 即[对称幺半范畴](对称幺半范畴.md) (其底层范畴为 $\mathcal C_{\langle 1\rangle}$); 它也构成对称算畴.

## 弱 Segal 纤维化

[代数模式](代数模式.md)之间的[弱 Segal 纤维化](弱Segal纤维化.md)是满足如下条件的态射 $p\colon \mathcal P \to \mathcal O$:

- $\mathcal O$ 中的惰性映射存在水平提升 (换言之, 有函子 $\mathcal O_{\mathrm{int}}^{\mathrm{op}} \to \mathsf{Cat}$, $N\mapsto \mathcal P_N$);
- 对任意 $N\in\mathcal O$, 函子 $\mathcal P_N \to \operatorname{lim}_{E\rightarrowtail N}\mathcal P_{E}$ 为等价;
- 给定 $X \in \mathcal P_N$, $Y\in\mathcal P_M$ 以及 $\mathcal O$ 中的态射 $f\colon N\to M$,
  $$
     \operatorname{Hom}^f(X,Y) \simeq \operatorname{lim}_{g\colon E\rightarrowtail N}\operatorname{Hom}^{fg}(g^*X,Y).
  $$

弱 Segal 纤维化之间的态射是保持惰性映射的水平提升的态射.

记代数模式 $\mathcal O$ 上的弱 Segal 纤维化的范畴为 $\mathsf{WSegFib}_{\mathcal O}$.

**命题**. 对于弱 Segal 纤维化 $\mathcal P \to\mathcal O$, 有等价
$$
\mathsf{WSegFib}_{\mathcal P} \simeq (\mathsf{WSegFib}_{\mathcal O})_{/P}.
$$

**命题**. 算畴就是 $\Gamma$ 上的弱 Segal 纤维化:
$$
\mathsf{Operad}:=\mathsf{WSegFib}_{\Gamma}.
$$
后文中的 "算畴" 往往可以指更一般的底模式上的弱 Segal 纤维化 (有时要加一点条件, 比如单色), 不过我们还是讲算畴, 因为算畴比较常用, 而且这个名字起得比较好.

**推论**. 算畴之间的态射都是代数模式之间的[弱 Segal 纤维化](弱Segal纤维化.md);
$$
\mathsf{Operad}_{/\mathcal O} \simeq \mathsf{WSegFib}_{\mathcal O}.
$$

这是一种奇妙的[相对](相对.md)现象.

### 例子: 非对称算畴

弱 Segal 纤维化的概念将我们的目光从 $\Gamma$ 上移到一般底模式上, 我们看到 "非对称算畴" 与算畴具有类似的地位: 它就是将算畴的底模式改为 $\Delta$ 得到的概念. (与逻辑上的地位不符的是, 它在 [Lurie HA](LurieHA.md) 中只占据了数个小节的内容.)

**定义** ([Lurie HA](LurieHA.md) 4.1.3.2). 称 $\Delta$ 上的[弱 Segal 纤维化](弱Segal纤维化.md)为**非对称算畴**, 又称**平面算畴** (planar operad).

直观上, 一个算畴给出一族无序 $n$ 元运算, 而一个非对称算畴给出一族有序 $n$ 元运算.

**例**. 记 $\Delta_{\leq n} \hookrightarrow \Delta$ 为对象 $[0],[1],\cdots,[n]$ 构成的全子范畴, 则 $\Delta_{\leq n}$ 继承 $\Delta$ 的代数模式结构, 构成一个非对称算畴; 称该模式为 [$\mathbb A_n$](An-代数.md).

## 算畴之间的态射, 代数

我们给算畴 (弱 Segal 纤维化) 之间的态射起一个新名字, 叫做一个算畴在另一个算畴中的**代数**.

**定义** ([Lurie HA](LurieHA.md), 2.1.3.1, 推广版本). 设 $\mathcal P\to\mathcal O$, $\mathcal Q\to\mathcal O$ 为[代数模式](代数模式.md)的[弱 Segal 纤维化](弱Segal纤维化.md), 定义
$$
\mathsf{Alg}_{\mathcal Q / \mathcal O} (\mathcal P) := \operatorname{Hom}_{\mathsf{WSegFib}_{\mathcal O}}(\mathcal Q,\mathcal P).
$$

上述记号有一些常用的特例, 值得特殊的记号.

- ([Lurie HA](LurieHA.md), 2.1.2.7) 当 $\mathcal O = \Gamma$ 时, 记
  $$
    \mathsf{Alg}_{\mathcal Q}(\mathcal P) := \operatorname{Hom}_{\mathsf{Operad}}(\mathcal Q,\mathcal P) = \operatorname{Hom}_{\mathsf{WSegFib}_{\Gamma}}(\mathcal Q,\mathcal P).
  $$
- 当 $\mathcal Q = \mathcal O$ 时, 记
  $$
    \mathsf{Alg}_{/ \mathcal O} (\mathcal P) := \mathsf{Alg}_{\mathcal O / \mathcal O}(\mathcal P) = \operatorname{Hom}_{\mathsf{WSegFib}_{\mathcal O}}(\mathcal O,\mathcal P).
  $$
- 当 $\mathcal Q = \mathcal O = \Gamma$ 时, 记
  $$
    \mathsf{CAlg}(\mathcal P) := \mathsf{Alg}_{\Gamma /\Gamma}(\mathcal P) = \operatorname{Hom}_{\mathsf{Operad}}(\Gamma,\mathcal P).
  $$

### 例子: 算畴在对称幺半范畴中的代数

**定义**. 设 $\mathcal O\to\Gamma$ 为算畴, $\mathcal C\in\mathsf{Seg}_{\Gamma}(\mathsf{Cat})$ 为[对称幺半范畴](对称幺半范畴.md). 定义 $\mathcal C$ 中的 $\mathcal O$-代数的范畴为
$$
\mathsf{Alg}_{\mathcal O}(\mathcal C) := \mathsf{Alg}_{\mathcal O / \Gamma}(\mathcal C) = \operatorname{Hom}_{\mathsf{WSegFib}_{\Gamma}}(\mathcal O,\mathcal C).
$$

## 算畴的操作

### 余积

对称算畴 $\mathcal C \to \Gamma$, $\mathcal D \to \Gamma$ 的余积为
$$
\mathcal C \times\mathcal D \to \Gamma\times\Gamma\overset{\times}{\to}\Gamma.
$$
其中 $\times\colon \Gamma\times\Gamma\to\Gamma$ 是 $\Gamma$ 中的范畴论积 $\langle n \rangle \times \langle m \rangle = \langle n + m \rangle$.



### 对称幺半包络

代数模式 $\mathcal O$ 上的 Segal 纤维化在弱 Segal 纤维化中构成[自反子范畴](自反子范畴.md), 其含入函子的左伴随称为 $\mathcal O$-**幺半包络** (monoidal envelope):
$$
\operatorname{Env}_{\mathcal O}\colon \mathsf{WSegFib}_{\mathcal O}
\,\begin{array}{cc}\to\\ \bot \\ \hookleftarrow\end{array} \mathsf{SegFib}_{\mathcal O}.
$$

设 $\mathcal O$ 是[可扩张代数模式](可扩张代数模式.md), $p\colon \mathcal C \to \mathcal O$ 是[弱 Segal 纤维化](弱Segal纤维化.md). 其 $\mathcal O$-幺半包络可显式计算为
$$
\operatorname{Env}_{\mathcal O}(\mathcal C) := \mathcal C \times_{\mathcal O}\operatorname{Act}(\mathcal O) = \{(c\in\mathcal C,\alpha\colon o\leadsto p(c))\}.
$$
它构成一个 $\mathcal O$-幺半范畴, 也即 Segal 纤维化 $\operatorname{Env}_{\mathcal O}(\mathcal C)\to \mathcal O$, 对应的函子 $\mathcal O^{\mathrm{op}} \to \mathsf{Cat}$ 为
$$
o\mapsto \{o\leadsto p(c)\}.
$$

特别地, 取 $\mathcal O = \Gamma$, 我们就得到: 对任意对称算畴 $\mathcal C$, 其**对称幺半包络** $\operatorname{Env}_{\Gamma}(\mathcal C)$ 是一个对称幺半范畴 $\Gamma^{\mathrm{op}}\to\mathsf{Cat}$,
$$
\langle n\rangle\mapsto \{\langle n \rangle \leadsto p(c)\},
$$
其底层范畴为 $\{\langle 1 \rangle \leadsto p(c)\}$.

### 张量积

回忆范畴 [$\Gamma$](Segal范畴Γ.md) 带有一个张量积 $\otimes\colon \Gamma\times\Gamma \to \Gamma$,
$$
\langle n\rangle\otimes \langle m\rangle = \langle nm\rangle.
$$
(但它既不是范畴论积也不是余积.)

为了定义对称算畴 $\mathcal O \to \Gamma$, $\mathcal P \to \Gamma$ 的张量积, 考虑复合函子
$$
\mathcal O \times\mathcal P \to \Gamma\times\Gamma\overset{\otimes}{\to}\Gamma.
$$
注意这还不是算畴 ($\Gamma$ 上的弱 Segal 纤维化), 例如其在 $\langle 2\rangle$ 上的纤维为
$$
\mathcal O_{\langle 1\rangle}\times\mathcal P_{\langle 2\rangle} + \mathcal O_{\langle 2\rangle}\times\mathcal P_{\langle 1\rangle},
$$
不等于 $\langle 1\rangle$ 上的纤维 $\mathcal O_{\langle 1\rangle}\times\mathcal P_{\langle 1\rangle}$ 的平方.

算畴的张量积 $\mathcal O \otimes \mathcal P\to\Gamma$ 就是将上述函子[自由](自由-遗忘伴随.md)地变为算畴所得的结果. 换言之, 对任意算畴 $\mathcal Q \to \Gamma$, 算畴的态射 $\mathcal O\otimes\mathcal P\to\mathcal Q$ 等同于交换图
$$
\begin{array}{ccc}
\mathcal O\times\mathcal P & \rightarrow & \mathcal Q \\
\downarrow &  & \downarrow \\
\Gamma\times\Gamma & \rightarrow & \Gamma.
\end{array}
$$
[Lurie](LurieHA.md) 称这个交换图为算畴的**双函子** (bifunctor);
$$
\mathsf{Alg}_{\mathcal O\otimes\mathcal P}(\mathcal Q)\simeq\mathsf{BiFun}(\mathcal O,\mathcal P;\mathcal Q).
$$

**注**. 我们可将 $\mathcal O\times\mathcal P \to\Gamma\times\Gamma$ 视为算畴的**外张量积** (external tensor product).

**命题**. $(\mathsf{Operad},\otimes)$ 是可表现对称幺半范畴; $\otimes$ 的单位为 $\mathsf{Triv}$.

显式写出算畴的张量积是困难的; 一般我们只使用它的万有性质
$$
\mathsf{Alg}_{\mathcal O\otimes \mathcal P}(\mathcal C)\simeq\mathsf{Alg}_{\mathcal O}(\mathsf{Alg}_{\mathcal P}(\mathcal C)).
$$
为了让上式右端有意义, 我们至少需要一个弱 Segal 纤维化 $\mathsf{Alg}_{\mathcal P}(\mathcal C)\to\mathcal O$. 见下节.

## 代数范畴是范畴中的代数

设有弱 Segal 纤维化 $\mathcal C\to\mathcal O\otimes\mathcal P$. 我们要构造一个弱 Segal 纤维化
$$
\mathsf{Alg}_{\mathcal P / (\mathcal O\otimes\mathcal P)}(\mathcal C)^{\otimes} \to \mathcal O.
$$
指定如下万有性质:
对任意范畴 $\mathcal K$, 函子 $\mathcal K \to \mathsf{Alg}_{\mathcal P / (\mathcal O\otimes\mathcal P)}(\mathcal C)^{\otimes}$ 等同于交换图
$$
\begin{array}
  {ccc}
\mathcal K\times\mathcal P &\to & \mathcal C \\
 \downarrow & \swarrow  &  \\
\mathcal O\otimes\mathcal P.\!\! & &
\end{array}
$$

特别地,
$$
\mathsf{Alg}_{\mathcal O}
$$

**命题** ([Lurie HA](LurieHA.md), 3.2.4.3).
- 若 $\mathcal C\to (\mathcal O\otimes \mathcal P)$ 为 Segal 纤维化, 则 $\mathsf{Alg}_{\mathcal P / (\mathcal O\otimes \mathcal P)}(\mathcal C)^{\otimes} \to \mathcal O$ 为 Segal 纤维化.

这也可以表述为

- 若 $\mathcal C$ 为 $(\mathcal O\otimes \mathcal P)$-幺半范畴, 则 $\mathsf{Alg}_{\mathcal P / (\mathcal O\otimes \mathcal P)}(\mathcal C)$ 为 $\mathcal O$-幺半范畴.
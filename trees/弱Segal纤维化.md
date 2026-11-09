---
title: 弱 Segal 纤维化 (代数体)
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 观念



## 定义

### 直接定义

[代数模式](代数模式.md)之间的**弱 Segal 纤维化**是满足如下条件的态射 $p\colon \mathcal P \to \mathcal O$:

- $\mathcal O$ 中的惰性映射存在水平提升 (换言之, 有函子 $\mathcal O_{\mathrm{int}}^{\mathrm{op}} \to \mathsf{Cat}$, $N\mapsto \mathcal P_N$);
- 对任意 $N\in\mathcal O$, 函子 $\mathcal P_N \to \operatorname{lim}_{E\rightarrowtail N}\mathcal P_{E}$ 为等价;
- 给定 $X \in \mathcal P_N$, $Y\in\mathcal P_M$ 以及 $\mathcal O$ 中的态射 $f\colon N\to M$,
  $$
     \operatorname{Hom}^f(X,Y) \simeq \operatorname{lim}_{g\colon E\rightarrowtail N}\operatorname{Hom}^{fg}(g^*X,Y).
  $$

弱 Segal 纤维化之间的态射是保持惰性映射的水平提升的态射.

### 通过分层树的代数模式

对称算畴作为 $\Gamma$ 上的弱 Segal 纤维化, 又可以理解为[多重范畴](多重范畴.md), 即用[树](树.md)探测的结构, 也即代数模式 [$\Omega$](树.md) 的 Segal 对象.

更一般地, [Blom–Loubaton–Ruit](BlomLoubatonRuitAlgd.md) 证明代数模式 $\mathcal O$ 上的弱 Segal 纤维化等同于 $\mathcal O$-[分层树](分层树.md)构成的[代数模式](代数模式.md) $\Omega [\mathcal O]$ 的完备 Segal 对象 (意思是其底层 Segal 生象为[完备 Segal 生象](范畴对象.md)):
$$
\mathsf{WSegFib}_{\mathcal O} \simeq \mathsf{CSeg}(\Omega [\mathcal O]).
$$

直观上,
- 算畴即多重范畴, 是 "允许 $n$ 个对象到一个对象的态射" 的范畴, 故多重范畴被[树](树.md) ([分层树](分层树.md)) 探测;
- 弱 Segal 纤维化是把算畴中的自然数 $n$ 推广为一般模式 $\mathcal O$ 的对象所得的概念, 故 $\mathcal O$ 上的弱 Segal 纤维化被 $\mathcal O$-[分层树](分层树.md)探测.

## 性质

### 相对观点

弱 Segal 纤维化的理论有个有趣的自相似性: 对于弱 Segal 纤维化 $\mathcal P \to\mathcal O$, 有等价
$$
\mathsf{WSegFib}_{\mathcal P} \simeq (\mathsf{WSegFib}_{\mathcal O})_{/P}.
$$
这就是说, 对于 $\mathcal O$ 上另一个弱 Segal 纤维化 $\mathcal Q\to \mathcal O$, 保持惰性提升的态射 $\mathcal Q\to\mathcal P$ 自动是 $\mathcal P$ 上的弱 Segal 纤维化.
这是一个典型的[相对观点](相对.md)的例子. 例如

- [Lurie HA](LurieHA.md) 定义的[算畴](算畴.md)就是 $\Gamma$ 上的弱 Segal 纤维化,
- 非对称算畴就是 $\Delta$ 上的弱 Segal 纤维化.

因此由相对观点, (非对称) 算畴之间的态射也是这些算畴之间的弱 Segal 纤维化.

### 与 Segal 纤维化的关系

代数模式 $\mathcal O$ 上的 **Segal 纤维化**是其 $\mathsf{Cat}$-值 Segal 对象 $\mathcal O^{\mathrm{op}} \to \mathsf{Cat}$ 对应的 $\mathcal O$ 上的[拉回纤维化](纤维范畴.md).

Segal 纤维化的全体
$\mathsf{SegFib}_{\mathcal O}$
是弱 Segal 纤维化的全体
$\mathsf{WSegFib}_{\mathcal O}$
的[自反子范畴](自反子范畴.md):
$$
(\operatorname{Env}_{\mathcal O} \dashv U)\colon \mathsf{WSegFib}_{\mathcal O}\rightleftarrows\mathsf{SegFib}_{\mathcal O}.
$$

对于弱 Segal 纤维化 $p\colon \mathcal P \to \mathcal O$, 其反射称为 $\mathcal P$ 的 $\mathcal O$-**幺半包络** (monoidal envelope):
$$
\operatorname{Env}_{\mathcal O}(\mathcal P) := \mathcal P \times_{\mathcal O}\operatorname{Act}(\mathcal O) = \{(x\in\mathcal P,\alpha\colon o\leadsto p(x))\},
$$
其带有到 $\mathcal O$ 的 Segal 纤维化 $\operatorname{Env}_{\mathcal O} (\mathcal P) \to \mathcal O$, $(x\in\mathcal P,\alpha\colon o\leadsto p(x)) \mapsto o$.

注意 $\operatorname{Env}_{\mathcal O} (\mathcal P)$
一个直观: $\Gamma$ 上的弱 Segal 纤维化是[多重范畴](多重范畴.md), 有多个对象到一个对象的态射, 但不一定有张量积; 其 $\Gamma$-幺半包络 (即对称幺半包络) 就是由所有形式记号 $x_1 \otimes \cdots\otimes x_n$ 构成的范畴, 满足态射 $x_1 \otimes \cdots\otimes x_n \to y$ 等同于原来多重范畴中的多重态射 $(x_1,\cdots,x_n) \to y$.

### 与松函子的关系

设 $\mathcal C \to \Gamma$, $\mathcal D \to \Gamma$ 为 Segal 纤维化, 对应两个[对称幺半范畴](对称幺半范畴.md). 将它们[遗忘](自由-遗忘伴随.md)为弱 Segal 纤维化, 则弱 Segal 纤维化的态射 $\mathcal C \to \mathcal D$ 等同于 $\mathcal C$ 到 $\mathcal D$ 的 [(余) 松对称幺半函子](松幺半函子.md).

更一般地, 对于代数模式 $\mathcal O$, 设 $\mathcal C,\mathcal D$ 为 $\mathcal O$-幺半范畴, 则其作为弱 Segal 纤维化的态射等同于 (余) 松 $\mathcal O$-幺半函子.

另见[松态射](松态射.md).
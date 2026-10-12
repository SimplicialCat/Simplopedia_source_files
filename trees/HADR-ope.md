---
title: HADR - 算畴
tag: 讲稿
author: [SimplicialCat](SimplicialCat.md)
---

## 代数模式 $\mathrm{Assoc}$

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

## Lurie 的算畴

上面介绍的 $\mathrm{Assoc}$ 是 [Lurie HA](LurieHA.md) 定义的[算畴](算畴.md)的一例. 其实 Lurie 的每个算畴都可视为代数模式.

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

上述结构的底不必为 $\Gamma$, 而是可以推广到任意代数模式上.

称为**弱 Segal 纤维化**.
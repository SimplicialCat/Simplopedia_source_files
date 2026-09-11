---
title: Descartes 自然变换
tag: 百科
subject: [范畴论](范畴论.md)
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

Descartes 自然变换是指每个自然性方块都是[拉回](拉回.md)的自然变换.

## 例

### 多项式函子

[多项式函子](多项式函子.md)之间的 Descartes 自然变换有如下形状: 考虑交换图
$$
\begin{CD}
I @<{s}<< E @>{p}>> B @>{t}>> J \\
@| @VfVV @VVgV @| \\
I @<<{s'}< E' @>>{p'}> B' @>>{t'}> J,
\end{CD}
$$
其中方块
$$
\begin{CD}
E @>{p}>> B \\
@VfVV @VVgV \\
E' @>>{p'}> B'
\end{CD}
$$
是拉回, 则有自然变换
$$
\begin{aligned}
t_!p_*s^* &= t'_!g_!p_*f^*(s')^*\\
&= t'_! g_! g^* p'_* (s')^* \,(\star)\\
&\to t'_!p'_*(s')^*,
\end{aligned}
$$
其中 $(\star)$ 是 [Beck–Chevalley 基变换](基变换.md).

直观上, $p\colon E\to B$ 的纤维是多项式的 "次数", 而 $B$ 中有多项式的每个 "系数". [多项式函子](多项式函子.md)之间的 Descartes 自然变换就是变系数而不变次数的变换.

**例**. 对任意态射 $f\colon A\to B$, 乘法函子之间的自然变换 $A\times X \to B\times X$ 是 Descartes 自然变换. 这来自如下交换图.
$$
\begin{CD}
1 @<<< A @= A @>>> 1 \\
@| @VfVV @VVfV @| \\
1 @<<< B @= B @>>> 1
\end{CD}
$$
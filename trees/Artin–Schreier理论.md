---
title: Artin–Schreier 理论
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

设 $X$ 为 $\mathbb F_p$-[概形](概形.md), 则有 $X$ 的[平展意象](平展意象.md)中的 Abel 群的正合列
$$
0\to \mathbb{Z}/p\to \mathbb A^1 \overset{\mathrm{Frob}-1}{\to} \mathbb A^1\to 0,
$$
其中 $\mathrm{Frob}$ 为 [Frobenius 态射](Frobenius态射.md).
它给出 ([平展](平展上同调.md)) [上同调](上同调.md)的长正合列
$$
\begin{aligned}
    0 &\to \mathbb{Z}/p\to \mathcal O(X) \overset{\mathrm{Frob}-1}{\to} \mathcal O(X) \\
    &\to H^1(X,\mathbb{Z}/p) \to H^1(X,\mathbb A^1) \overset{\mathrm{Frob}-1}{\to} H^1(X,\mathbb A^1)\\
    &\to\cdots.
\end{aligned}
$$

对应于 $a\in\mathcal O(X)$ 的 $\mathbb{Z}/p$-[主丛](主丛.md)为拉回
$$
\begin{array}
    {ccc}
    ? & \to & \mathbb A^1\\
    \downarrow & & \downarrow \mathclap{\hspace{2.5em}\scriptsize \operatorname{Frob} - 1}\\
    X & \underset{a}{\to} & \mathbb A^1,
\end{array}
$$
即
$$
\begin{aligned}
    X' &= \{(x,t)\in X\times\mathbb A^1\mid t^p-t= a(x)\}
    \\&=\underline{\operatorname{Spec}}_X (\mathcal O_X [t]/(t^p-t-a)).
\end{aligned}
$$

## 例

设 $X=\operatorname{Spec} A$, $A$ 为 $\mathbb F_p$-代数. 此时 $H^1(X,\mathbb A^1)=0$, 故 $X$ 上的所有 $\mathbb{Z}/p$-[主丛](主丛.md)均形如 $\operatorname{Spec} A[t]/(t^p-t-a)$, 而这个主丛平凡当且仅当 $a$ 形如 $b^p-b\,(b\in A)$.
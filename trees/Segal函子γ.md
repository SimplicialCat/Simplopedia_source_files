---
title: Segal 函子 γ
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

### 直接定义

Segal 函子 $\gamma\colon \Delta \to \Gamma$ 是[单纯形范畴](单纯形范畴.md) $\Delta$ 到 [Segal 范畴 $\Gamma$](Segal范畴Γ.md) 的一个函子,

- $\gamma([n]) = \underline{n} = \{*,1,\cdots,n\}$,
- 对于态射 $\varphi\colon [n] \to [m]$, $\gamma(\varphi)\colon \underline{n} \to \underline{m}$ 为态射
$$
i\mapsto (\varphi(i-1),\varphi(i)].
$$
其中 $(a,b]$ 表示整数的左开右闭区间 $\{x\in \mathbb{Z}\mid a < x \leq b\}$.

### 通过 $S^1$

将[单纯集](单纯集.md) $\Delta^1$ 两端粘到一起, 定义
$$
S^1 := \operatorname{coeq}(\Delta^0 \rightrightarrows \Delta^1).
$$
其分量为
$$
(S^1)_m = \operatorname{Hom}_{\mathsf{sSet}}(\Delta^m,S^1) \simeq \underline{m}.
$$
可验证函子 $S^1\colon \Delta^{\mathrm{op}} \to \mathsf{Fin}_{*/}$ 在取反范畴后正是前面定义的函子
$$
\gamma := (S^1)^{\mathrm{op}} \colon \Delta \to (\mathsf{Fin}_{*/})^{\mathrm{op}} = \Gamma.
$$

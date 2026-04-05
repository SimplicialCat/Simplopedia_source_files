---
title: "Gauss 互反律"
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


**定理** (Gauss 互反律). 设 $p,q$ 为奇素数, 则
$$
\Big(\frac{p}{q}\Big)\Big(\frac{q}{p}\Big)=(-1)^{\frac{p-1}{2}\frac{q-1}{2}}.
$$
其中 $\Big(\dfrac{p}{q}\Big)$ 是 Legendre 符号.

**证明**. 记 $q^*=(-1)^{\frac{q-1}{2}}q$, 则 Gauss 互反律可表述为
$$
\Big(\frac{q^*}{p}\Big)=\Big(\frac{p}{q}\Big).
$$
Legendre 符号给出 [Dirichlet 特征](Dirichlet特征.md) $\chi_q\colon (\mathbb{Z}/q)^\times\to\{\pm 1\}$.

考虑二次域 $K_q=\mathbb{Q}(\sqrt{q^*})$. 熟知 $\operatorname{Gal}(K_q/\mathbb{Q})$ 是由 $\sigma\colon \sqrt{q^*}\mapsto -\sqrt{q^*}$ 生成的二阶群.

考虑 [Frobenius 态射](Frobenius态射.md) $\mathrm{Frob}_p\in\operatorname{Gal}(K_q/\mathbb{Q})$, 具体定义暂略, 只需明白当 $p$ 在 $K_p$ 上分裂 (split) 时 $\mathrm{Frob}_p$ 是恒等, 而当 $p$ 在 $K_q$ 上不动 (inert) 时 $\mathrm{Frob}_p$ 是 $\sigma$. 另外, 存在唯一的满同态 $\epsilon_q\colon \operatorname{Gal}(K_q/\mathbb{Q})\to\{\pm 1\}$; 由定义 $p$ 在 $K_q$ 上分裂当且仅当 $q^*$ 是模 $p$ 的平方数, 即
$$
\epsilon_q(\mathrm{Frob}_p)=\Big(\frac{q^*}{p}\Big).
$$

考虑分圆扩张 $\mathbb{Q}(\zeta_q)$, 熟知 $\operatorname{Gal}(\mathbb{Q}(\zeta_q)/\mathbb{Q})\simeq (\mathbb{Z}/q)^\times$, 其中 $a\in (\mathbb{Z}/q)^\times$ 对应 $\mathbb{Q}(\zeta_q)$ 的自同构 $\zeta_q\mapsto \zeta_q^a$.

分圆扩张也有一个 Frobenius 元素 $\mathrm{Frob}_p\in\operatorname{Gal}(\mathbb{Q}(\zeta_q)/\mathbb{Q})$, 满足 $\mathrm{Frob}_p(\zeta_q)=\zeta_q^p$. 故它对应于 $p\in (\mathbb{Z}/q)^\times$.

注意到存在嵌入
$$
K_q \hookrightarrow \mathbb{Q}(\zeta_q),
$$
诱导 Galois 群的满同态 $\operatorname{Gal}(\mathbb{Q}(\zeta_q)/\mathbb{Q})\twoheadrightarrow\operatorname{Gal}(K_q/\mathbb{Q})$, 且关联两者的 Frobenius 元素. 这个同态是 $(\mathbb{Z}/q)^\times$ 到 $\{\pm 1\}$ 的满同态, 而 $\chi_q$ 也是 $(\mathbb{Z}/q)^\times$ 到 $\{\pm 1\}$ 的满同态, 故两者相等. 分别考虑 $p\in (\mathbb{Z}/q)^\times$ 在这两个同态下的像, 得到
$$
\epsilon_q(\mathrm{Frob}_p)=\chi_q(p\operatorname{mod}q).
$$


---
证明的关键: 二次域的 Frobenius 元素与 $p$ 的分裂有关; Galois 群的同态保持 Frobenius 元素.
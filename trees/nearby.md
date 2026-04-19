---
title: Nearby Cycles
tag: Note
author: [SimplicialCat](SimplicialCat.md)
---

This note mainly follows [Prof. Zheng's MCM talk](ZhengNearby.md).

## The Milnor fibration

Let $f\colon (\mathbb{C}^{n+1},0) \to (\mathbb{C},0)$ be a germ of holomorphic function having an isolated critical point at $0$.

**Theorem** (Milnor 1967). For $0<\eta \ll \varepsilon \ll 1$,
$$
f\colon B_\varepsilon\cap f^{-1}(D_\eta) \to D_\eta
$$
induces a fibration over $D_\eta \setminus \{0\}$, where $B_\varepsilon$ and $D_\eta$ are respectively the ball and the disk centered at $0$.

This is called the [milnor fibration](Milnor纤维化.md) (see there for more motivation).

The fiber $M_t = f^{-1}(t) \cap B_\varepsilon$ is homotopy equivalent to a bouquet of $\mu$ $S^n$'s, where $\mu$ is the Milnor number
$$
\mu = \dim_\mathbb{C} \mathbb{C}\{z_0,\cdots,z_n\}/(\partial_1 f,\cdots,\partial_n f).
$$

**Examples**.

- $f(x,y) = x^3 - y^2$. The Milnor fiber $M_t$ is a punctured torus (its boundary being a trefoil knot), homotopy equivalent to $S^1 \vee S^1$. The Milnor number is $\dim_\mathbb{C} \{x,y\}/(3x^2,2y) = 2$.

Let $\Phi^i$ denote the reduced cohomology of the fiber $M_t$, acted on by a monodromy operator $T\in\operatorname{Aut}(\Phi^i)$ as $t$ turns around $0$.

**Conjecture** (Milnor). The eigenvalues of $T$ are roots of unity.

## Nearby cycles over one-dimensional bases

Let $S$ be the spectrum of a (strictly local) [Henselian](Hensel环.md) [DVR](离散赋值环.md). It will be the analog of a disk.
More precisely, there is a dictionary between complex analytic and étale settings:

|Complex analytic|Etale|
|-|-|
|disk $D_\eta$|base $S$|
|center $0\in D_\eta$|closed point $s\in S$|
|punctured disk $D_\eta\setminus\{0\}$|generic point $\eta\in S$|
|parameter $t\in D\setminus\{0\}$|separable closure $\bar\eta$|
|fundamental group $\pi_1(D\setminus\{0\},t)$|inertia group $\operatorname{Gal}(\bar\eta / \eta)$|
|local systems on $D_\eta\setminus\{0\}$|sheaves on $\eta_{\text{\'et}}$|

### The complex analytic setting

In the complex analytic setting, following [Dimca](DimcaShvTop.md), we have a analytic function $f\colon X\to\mathbb{C}$. Denote $X_t = f^{-1}(t)$. Consider the pullback diagram

[](nearby-1.typ#:block)

where $T = f^{-1}(D_\varepsilon)$ is a tube near $X_0$, and $f$ now denotes the Milnor fibration. The sheaf of **nearby cycles** of $F\in D^b(X)$ is defined by
$$
\psi_f F := i^* \, R(j\hat\pi)_* \, (j\hat\pi)^* F \in D^b(X_0).
$$

We remark that $E$ can be regarded as the universal/canonical fiber of the Milnor fibration, and the map $j\hat\pi$ is a canonical model (i.e. independent of the choice of a specific fiber) for the inclusion of a fiber $X_t$ into the tube $T$.

There is a monodromy "deck transformation" $h\colon E\to E$ coming from the action of the generator of $\mathbb{Z} = \pi_1(D_\varepsilon^*)$.

The following proposition explains the name of nearby cycles.

**Proposition**. For $x\in X_0$, the cohomology of the sheaf of nearby cycles
$$
\mathcal H^k(\psi_f F)_x \simeq H^k(F_x,F)
$$
recovers the cohomology of the local Milnor fiber $F_x = B_\epsilon (x) \cap X_t$ ($0<|t|\ll \varepsilon$), the monodromy morphisms matching as well.

**Example**. Let $F=\mathbb{C}_X$; then $\dim H^n(F_x,F)=\mu$ is the Milnor number.

Consider the unit of the adjunction
$$
F \to R(j\hat\pi)_* \, (j\hat\pi)^* F
$$
giving the comparison morphism
$$
i^* F \to \psi_f F.
$$
Define the sheaf of **vanishing cycles** $\varphi_f F \in D^b(X_0)$ to be the third term in the fiber / cofiber sequence
$$
i^*F \to \psi_f F \to \varphi_f F
$$
with an induced monodromy operator.


### The étale setting

In the étale setting, we consider a morphism of schemes $X\to S$ and the base-change diagram

[](nearby-2.typ#:block)

Let $\Lambda = \mathbb{Z}/m\mathbb{Z}$ for $m$ invertible on $S$. We work with sheaves of $\Lambda$-modules on étale topoi.

Following [Zheng](ZhengNearby.md), for $K\in D(X_\eta)$ define
$$
R\Psi K = i^* \, Rj_* (K|_{X_{\bar\eta}}) \in D(X_s).
$$

For $K\in D(X)$, define $\Phi K\in D(X_s)$ by the fiber / cofiber sequence
$$
K|_{X_s} \to R\Psi (K|_{X_\eta}) \to \Phi K.
$$

For a geometric point $x\to X_s$ we have a fiber / cofiber sequence
$$
K_x \to (R\Psi K)_x \to (\Phi K)_x.
$$

## Nearby cycles over general bases

### Oriented products of topoi

This part follows [Zheng](ZhengNearby.md) which cites [ILO](ILOTravauxGabber.md), Exposé XI by Illusie.

Given morphisms of [topoi](意象.md)
$f\colon X\to S$ and $g\colon Y\to S$, the **oriented product** (also called the [**lax pullback**](松拉回.md)) is a topos $X\operatorname{\overset{\leftarrow}{\times}}_SY$ together with a diagram

[](oriented-product.typ#:block)

universal for these data.

**Definition**. The **vanishing topos** of an $S$-scheme $X\to S$ is the oriented product $X \operatorname{\overset{\leftarrow}{\times}}_S S$, where we regard schemes as topoi by the construction of étale topoi.

A [site](景.md) presentation of the oriented product $X\operatorname{\overset{\leftarrow}{\times}}_SY$ is as follows.

- The objects are commutative diagrams

[](nearby-site-pre-ori-prod.typ#:block)

- The following are declared covering families:
  - coverings of $U$,
  - coverings of $V$,
  - and the following kind of morphisms.

[](nearby-covering.typ#:block)

An important way to think of this topos is by considering its points. Before doing this, let me recall the geometric picture.
The [**Henselization**](Hensel化.md) of a scheme at a (geometric) point $s\to S$, denoted $S_{(s)}$, is the limit of all étale neighborhoods of $s$, a small neighborhood whose étale topos is a [local topos](局部意象.md), meaning that the global section is isomorphic to just a stalk.

**Theorem** ([SGA4](SGA4.md) VIII.7.9). The category $\operatorname{Hom}_{\mathsf{Topos}}(\mathrm{pt},X_{\text{\'et}})$ of points of the étale topos of a scheme $X$ is equivalent to the category of geometric points of $X$ and specializations.

From the above theorem, the points of $X \operatorname{\overset{\leftarrow}{\times}}_S S$ can be regarded as triples $(x,t,\mathrm{sp})$, where

- $x\to X$ is a geometric point of $X$,
- $t\to S$ is a geometric point of $S$,
- and $\mathrm{sp}\colon t \to S_{(f(x))}$ is a specialization, which is equivalent to an $S$-morphism $S_{(t)}\to S_{(f(x))}$ ([SGA4](SGA4.md) VIII.7.4).

**Example** ([ILO](ILOTravauxGabber.md) XI.1.12). When $f\colon X\to Y$ is a closed subscheme, $X \operatorname{\overset{\leftarrow}{\times}}_Y Y$ plays the role of a **tubular neighborhood** of $X$ in $Y$.

The **Milnor fiber** at this point is defined as
$$
X_{(x)} \times_{S_{(f(x))}} t,
$$
and the **Milnor tube** is
$$
X_{(x)} \times_{S_{f(x)}} S_{(t)}.
$$

**Definition**. Given an $S$-scheme $f\colon X\to S$, the geometric morphism $\Psi_f \colon X\to X\operatorname{\overset{\leftarrow}{\times}}_S S$ is determined by the diagram

[](nearby-vanishing-ori-univ.typ#:block)

and the universal property of oriented products.

We then define $\Phi_f K$ by the following fiber / cofiber sequence in $D(X \operatorname{\overset{\leftarrow}{\times}}_S S)$:
$$
p^*K \to R\Psi_f K \to \Phi_f K.
$$

**Example**. For $S$ the spectrum of a strictly local DVR,
$$
X \operatorname{\overset{\leftarrow}{\times}}_S S = X_\eta \cup (X_s \times\eta) \cup X_s.
$$
Then the restriction of $R\Psi_f K$ on the three shreds are respectively
$$
K|_{X_\eta}, \,R\Psi(K|_{X_\eta}),\,K|_{X_s}.
$$

**Proposition**. The functor $R\Psi$ recovers cohomologies of the Milnor tube:
$$
(R\Psi F)_{(x,t)} \simeq R\Gamma(X_{(x)}\times_{S_{f(x)}}S_{(t)},F).
$$
Moreover, $R\Psi F$ is equipped with a Galois action.
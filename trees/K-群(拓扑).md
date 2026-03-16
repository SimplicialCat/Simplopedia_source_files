---
title: "K-群 (拓扑)"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---

---
alias: 相对 K-群
---

K-群是[拓扑 K-理论](拓扑K-理论.md)的研究对象.

## 定义

拓扑空间 $X$ 上的[复向量丛](复向量丛.md)的同构类 $V(X)$ 在 Whitney 和下构成交换半群, 而 $K(X)$ 可定义为其群化.

由向量丛的拉回, $X\mapsto K(X)$ 是拓扑空间范畴到 Abel 群范畴的反变函子.

注意到 $K(\mathrm{pt})\simeq\mathbb Z$, 而平凡投影 $p\colon X\to \mathrm{pt}$ 诱导了同态 $p^*\colon K(\mathrm{pt})\to K(X)$. 若选定 $X$ 的基点 $j\colon \mathrm{pt}\to X$, 则 $p^*$ 为 $j^*\colon K(X)\to K(\mathrm{pt})$ 的截面, 即有直和分解
$$
K(X)\simeq \widetilde{K}(X)\oplus\mathbb Z.
$$
其中 $\widetilde{K}(X)$ 称为[约化 K-群 (拓扑)](约化K-群.md). (更多定义见此页面.)

另见 [Grothendieck 群](Grothendieck群.md).

### 等价定义: 向量丛的复形

考虑 $X$ 上向量丛的链复形, 定义复形的**支集** (support) 为不正合的点的集合. 我们只考虑**紧支集**的复形.

定义 $X$ 上向量丛复形 $E$ 到 $F$ 的同伦为 $X\times I$ 上的复形 $G$, 使得 $G$ 限制在 $X\times 0$ 和 $X\times 1$ 上分别是 $E$ 和 $F$.

复形的同伦类 $C(X)$ 构成半群, 其中正合 (支集为空) 的复形构成子半群 $C_\varphi (X)$; 定义 $K(X)$ 为商半群 $C(X)/C_\varphi(X)$. 虽然由定义它只是半群, 但事实上它是群.

## 性质

$K(X)$ 只与 $X$ 的伦型有关.

## 相对 K-群

对于满足同伦扩张性质的空间对 $(X,A)$, 定义[相对](相对.md) [相对 K-群 (拓扑)](K-群.md)
$$
K(X,A):= \widetilde{K}(X/A).
$$
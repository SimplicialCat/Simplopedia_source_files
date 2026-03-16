---
title: Sp
taxon: 百科
subject: [稳定同伦论](稳定同伦论.md)
author: [SimplicialCat](SimplicialCat.md)
---

[谱](谱.md)的范畴 $\mathsf{Sp}$ 是最基本的[稳定 $\infty$-范畴](稳定无穷范畴.md), 是[生象](生象.md)的范畴 [$\mathsf{Ani}$](Ani.md) 的[稳定化](稳定化.md)
$$
\mathsf{Sp} := \lim\Big(\cdots\overset{\Omega}{\longrightarrow} \mathsf{Ani}_*
\overset{\Omega}{\longrightarrow} \mathsf{Ani}_*\Big)
\in \mathsf{Cat}_{\infty}.
$$
其构造思路大致是: 从带基点[生象](生象.md)范畴 [$\mathsf{Ani}_*$](Ani_pt.md) 开始, 强行让[纬悬](纬悬.md) $\Sigma$ 变得可逆, 得到一个新的范畴.

## 性质

$\mathsf{Sp}$ 上有[压缩积](压缩积.md) $\wedge$ 与映射谱 $[-,-]$ 给出的[闭](闭范畴.md)[对称幺半](对称幺半∞-范畴.md)结构. 有[对称幺半函子](对称幺半∞-范畴.md)
$$
(\mathsf{Set},\times) \to (\mathsf{Ani},\times) \overset{(-)_+}{\to} (\mathsf{Ani}_{*/},\wedge) \overset{\Sigma_{\infty}}{\to} (\mathsf{Sp},\wedge).
$$
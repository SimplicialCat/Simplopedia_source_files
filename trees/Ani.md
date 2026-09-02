---
title: 生象的范畴
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

生象的范畴 $\mathsf{Ani}$ 是最基本的 [$\infty$-意象](∞-意象.md).

## 性质

$\mathsf{Ani}$ 是一个点在[余极限](余极限.md)下自由生成的范畴.

### 带基点对象

$\mathsf{Ani}$ 的终对象 $*$ 下的[仰范畴](仰范畴.md)称为**带基点生象**的范畴 [$\mathsf{Ani}_*$](Ani_pt.md).

### 识别

如何证明一个范畴 $\mathcal C$ 等价于 $\mathsf{Ani}$?

**命题**. 设范畴 $\mathcal C$ 余完备, 有函子 $f\colon \mathcal C \to \mathsf{Ani}$ 以及对象 $*\in \mathcal C$ 满足
$$
f(*)=*,\quad f\simeq\operatorname{Hom}(*,-),
$$
则 $f$ 为等价, 且其逆为
$$
\mathsf{Ani}\to\mathcal C,\quad X\mapsto\operatorname{colim}_X *.
$$

*证明*. 由[伴随函子定理](伴随函子定理.md),
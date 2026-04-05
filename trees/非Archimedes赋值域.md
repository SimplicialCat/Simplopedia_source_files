---
title: 非 Archimedes 赋值域
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

**非 Archimedes 赋值域**是域 $K$ 配备函数 $v\colon K\to\mathbb{R}\cap\{\infty \}$, 满足

- $v(x)=\infty \Leftrightarrow x=0$;
- $v(xy)=v(x)+v(y)$;
- $v(x+y)\geq\operatorname{min}(v(x),v(y))$.

## 例

$(\mathbb{Q},v_p)$ 为非 Archimedes 赋值域, 其中 $v_p$ 是有理数标准分解中 $p$ 的指数.

对任意域 $F$, $(F(t),v)$ 为非 Archimedes 赋值域, 其中对于 $f\in F[t]\setminus\{0\}$, $v(f)$ 是 $f$ 的不可约分解中含有的 $t$ 的次数.

对任意域 $F$, $(F((t)),v)$ 为非 Archimedes 赋值域, 其中对于 $f\in F[t](t.md)\setminus\{0\}$, $v(f)=\deg f$, $v(0)=\infty$, 而 $v(f/g)=v(f)-v(g)$.
## 相关概念

[赋值环](赋值环.md)

[离散赋值环](离散赋值环.md)
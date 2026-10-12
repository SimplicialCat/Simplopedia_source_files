---
title: 单子 (计算机科学)
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

## 定义

在[计算机科学](计算机科学.md)中, 一个[单子](单子.md)包含

- 类型构造器 `m`,
- 函数 `return :: a → m a`,
- 函数 `>>= :: m a → (a → m b) → m b` (又叫 `bind`);

满足如下条件,

- 左单位律 `(return x) >>= f = f x`,
- 右单位律 `ma >>= return = ma`,
- 结合律 `(ma >>= f) >>= g  =  ma >>= (\x -> f x >>= g)`.

等价地, 单子中的 `>>=` 也可以换成如下的 `>=>`,

- `>=> :: (a → m b) → (b → m c) → (a → m c)`,

满足

- 左单位律 `return >=> f = f`,
- 右单位律 `f >=> return = f`,
- 结合律 `(f >=> g) >=> h  = f >=> (g >=> h)`.

## 例

### 列表单子

[列表](列表.md)单子的定义是

- `return x = [x]` (一个元素构成一个列表),
- `xs >>= f = concat (map f xs)` (一个列表每项分别作用后拼接).

### 可能单子

可能单子的定义是

- `return x = Just x` (一个元素本身是一个可能元素),
- `m >>= f = case m of { Nothing → Nothing; Just x → f x }` (若没有元素则输出无, 若有一个元素则继续计算).

### 状态单子

状态单子的定义是

- `return x = \s -> (x, s)` (不修改状态, 直接输出),
- `st >>= f = \s -> let (x, s') = st s in f x s'` (执行当前计算获取新状态, 再将其传给下一个计算).

其中

- `st :: s → (a, s)`,
- `f :: a → s → (b, s)`.

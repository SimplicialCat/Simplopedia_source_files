---
title: "Haskell"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Haskell 是一种[函数式编程](函数式编程.md)语言.

## 下载与配置

下载
https://www.haskell.org/downloads/


## 例

`:t (2+)
`(2+) :: Num a => a -> a

`take 5 [1,4..]
`[1,4,7,10,13]

`f x y = x + y
`:t f
`f :: Num a => a -> a -> a

`f x = x < 3
`:t f
`f :: (Ord a, Num a) => a -> Bool

`g = (<3)
`:t g
`g :: (Ord a, Num a) => a -> Bool

`f x y = (x == y)
`:t f
`f :: Eq a => a -> a -> Bool


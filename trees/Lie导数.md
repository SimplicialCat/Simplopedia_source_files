---
title: "Lie 导数"
taxon: 百科
author: [SimplicialCat](SimplicialCat.md)
---


## 性质

$$
\iota_{[X,Y]} = \mathcal L_X \iota_Y - \iota_Y \mathcal L_X
$$
证明. 对于 $1$ 形式 $\omega$,
$$
(\mathcal L_X\iota_Y - \iota_Y\mathcal L_X)(\omega)=X\omega(Y)-\iota_Y(\iota_X d + d \iota_X)(\omega)=X\omega(Y)-d\omega(X,Y)-Y\omega(X),
$$
$$
\iota_{[X,Y]}(\omega)=\omega([X,Y]),
$$
结论成立. 注意到两边都是导子, 故结论对所有形式成立.
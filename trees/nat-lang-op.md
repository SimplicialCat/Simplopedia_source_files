---
title: 自然语言作为语法算畴上的代数
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

自然语言的语法告诉我们各种词性的词如何结合. 这些信息可以用一个 (有色, 非对称) [算畴](算畴.md) $\mathcal O$ 记录. 这个算畴由如下资料构成:

- 若干颜色, 每个颜色对应一种词性, 如
  - $\textit{n}$ (名词),
  - $\textit{adj}$ (形容词),
  - $\textit{adv}$ (副词),
  - $\textit{v}$ (动词),
  - $\textit{s}$ (完整句子);
- 若干运算, 每个运算有若干输入颜色和一个输出颜色, 对应一种将语法成分结合为更大语法成分的方法, 如
  - $f_{\textit{adj}}\colon (\textit{adj},\textit{n})\to \textit{n}$ (形容词修饰名词),
  - $f_{\textit{adv}}\colon (\textit{adv},\textit{v})\to \textit{v}$ (副词修饰动词),
  - $f_{\textit{s}}\colon (\textit{n},\textit{v})\to \textit{s}$ (主谓句);

当然上述例子非常粗略 (名词还应分为名词短语, 代词等等; 动词还应分为及物动词, 不及物动词, 助动词, 双宾动词, 系动词等等; 另外还有许多功能词性和运算), 只是为了使读者明白大意.

一种自然语言大致可视为算畴 $\mathcal O$ 的一个代数 $A$:

- 对每种颜色 $c$ 有一个集合 $A_c$, 即词性 $c$ 的词的集合;
- 对每种运算 $f\in\mathcal O (c_1,\cdots,c_n ; c)$ 有一个映射 $A_f \colon A_{c_1}\times\cdots\times A_{c_n} \to A_c$, 表示这种语言中若干语法成分结合成为一种词性 $c$ 的更大的语法成分.

这一看法蕴涵的假设是每种自然语言的语法都是由同一个算畴描述的. 不同语言的语法在外观上的区别仅仅来源于将语法成分对应到字符串时的顺序选取.
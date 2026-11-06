---
title: Plus Principle
tag: 笔记
author: [SimplicialCat](SimplicialCat.md)
---

**注**. 如下内容来自 AI 生成的回答, 我正在整理.

> 下文给出一个具体构造及其完整证明路线. 它所声称的结论涉及一般 Grothendieck ∞-意象 中的 Plus Principle, 故在正式引用为已确立结果前, 仍应进行独立的数学审查. 文中明确写出使用的标准外部定理及其用途. 

## 摘要

令 $P=\{+,o,-\}$ 带有由 $\{+,o\}$ 与 $\{-,o\}$ 生成的拓扑, 并置 $X=P^{\mathbb N}$. 我们在普通的生象值层 ∞-意象 $\mathcal X=\operatorname{Shv}(X;\mathsf{Ani})$ 中定义一个带点对象 $F$. 它是由有限楔和组成的序列余极限; 每个过渡映射仅将一个分量替换为广义 Whitehead 积. 我们论证

$$
\tau_{\leq1}F\simeq1,\  \Sigma F\simeq1,\  F\not\simeq1.
$$

非平凡性由一个全局环路检测：其在有限阶段的像是每个变量只出现一次的迭代交换子. 利用自然的 James–Hopf 长度投影, 可在模 $2$ 同调中检测一个非交换字的非零系数; 紧开基上的滤余极限连续性保证这个环路进入望远镜后仍不消失. 

## 1. 记号与问题

$\mathsf{Ani}$ 表示生象的 ∞-范畴, $1$ 表示终对象; 在带点对象范畴中, $\vee,\wedge,\Sigma,\Omega$ 分别表示楔和、smash product、约化纬悬与圈对象. 带点映射 $S^0\to A$ 等价于 $A$ 的一个全局点. 由于全局截面函子是右伴随, 它保持有限极限; 特别地, $\Gamma_X\Omega Z\simeq\Omega\Gamma_XZ$, 故 $\pi_0\Gamma_X\Omega Z\cong\pi_1\Gamma_XZ$. 

Plus Principle 在此采用如下表述：若一个带点对象 $A$ 满足

$$
\tau_{\leq1}A\simeq1,\  \Sigma A\simeq1,
$$

是否必有 $A\simeq1$？第一个条件是**内部单连通**, 第二个条件是**纬悬可缩**. 我们将直接构造一个满足前两个条件但具有非零全局环路的对象. 

我们始终工作于普通的 $\mathsf{Ani}$-值层范畴 $\operatorname{Shv}(-;\mathsf{Ani})$, 不在定义或构造余极限后进行超完备化. 

## 2. 基本层与有限坐标计算

考虑拓扑空间
$$
P=\{+,o,-\},\ 
\operatorname{Open}(P)=\{\varnothing,\{o\},\{o,+\},\{o,-\},P\}.
$$

记 $U_+=\{o,+\}$、$U_-=\{o,-\}$. 那么 $P$ 上的生象值层等价于图表

$$
E_+\longrightarrow E_o\longleftarrow E_-,
$$

且全局截面由拉回计算：

$$
\Gamma_PE\simeq E_+\times_{E_o}E_-.
$$

特别地, 有限积 $P^m$ 上的层可由各点最小开邻域所构成的有限图表描述, 其有限极限、余极限、纬悬和压缩积均逐点计算. 

定义带点层

$$
L=\bigl(*\longrightarrow S^1\longleftarrow *\bigr),
$$

箭头取基点映射. 每个点值都连通, 所以 $L$ 内部连通; 另一方面

$$
\Gamma_PL\simeq *\times_{S^1}*\simeq\Omega S^1 = \mathbb Z.
$$

固定代表 $1\in\mathbb Z$ 的带点映射
$$
\alpha:\operatorname{const}S^0\to L.
$$


置
$$
X=P^{\mathbb N},\ 
\mathcal X=\operatorname{Shv}(X;\mathsf{Ani}),
$$

并沿第 $i$ 个坐标投影 $P^{\mathbb{N}} \to P$ 拉回 $L$ 与 $\alpha$, 分别记为 $L_i$ 和 $\alpha_i:\operatorname{const}S^0\to L_i$. 

### 引理 2.1（有限坐标不改变全局截面）

设 $J\subset\mathbb N$ 有限, $p_J:X\to P^J$ 为坐标投影, $E$ 为 $P^J$ 上的生象值层, 则

$$
\Gamma_X(p_J^*E)\simeq\Gamma_{P^J}E.
$$

**证明.** 我们证明更一般的命题. 设 $f:Y\to Z$ 为开映射, 且 $f$ 的每条纤维不可约
(等价地, 对任意开集 $B,C\subseteq Y$ 有 $f(B\cap C)=fB\cap fC$). 则对 $Z$ 上任意层 $E$
与开集 $U\subseteq Y$ 有

$$
(f^*E)(U)\simeq E(fU);
$$

若 $f$ 还是满射, 则 $\Gamma_Yf^*E\simeq\Gamma_ZE$.

事实上, 因 $f$ 开, 故逆像预层为

$$
(f^{\mathrm{pre},*}E)(U)=\operatorname*{colim}_{fU\subseteq V}E(V)\simeq E(fU).
$$

再设 $U=\bigcup_\alpha U_\alpha$ 为开覆盖. 由假设, $f$ 保持开集的有限交, 于是预层 $E$ 的层条件和 $E\circ f$ 的层条件等价; 当 $E$ 是层时 $E\circ f$ 也是层.

现取 $f=p_J$. 坐标投影是开映射, 且 $p_J^{-1}(z)\cong P^{\mathbb N\setminus J}$. 由于 $o$ 属于 $P$ 的每个非空开集, 纤维的每个非空开集都含有全 $o$ 点, 故纤维内任意两个非空开集相交. 结论得证.

**说明.** 上述一般事实还给出 $(p_J)_*p_J^*\simeq\mathrm{id}$, 即 $p_J^*$ 全忠实, 几何态射
$\mathcal X\to\operatorname{Shv}(P^J;\mathsf{Ani})$ 连通. 不可约性不能减弱为连通性: 若纤维取 $S^1$,
常值预层在 $S^1$ 上有不连通的开集, 因而不是层, 层化不再平凡.

### 引理 2.2（独立坐标上的球面生成元）

设 $i_1,\ldots,i_m$ 两两不同, 并令

$$
D=L_{i_1}\wedge\cdots\wedge L_{i_m},
$$
下图展示了 $m=2$ 的情形:
$$
D=
\begin{pmatrix}
* & \rightarrow & * & \leftarrow & * \\
\downarrow &  & \downarrow &  & \downarrow \\
* & \rightarrow & S^2 & \leftarrow & * \\
\uparrow &  & \uparrow &  & \uparrow \\
* & \rightarrow & * & \leftarrow & *
\end{pmatrix}.
$$
注意由极限的 Fubini 原理, 图表 $D$ 的极限可写为 $m$ 重极限 $\Omega^m S^m$. 由引理 2.1, $\Gamma_X$ 可在 $P^m$ 上计算. 那么
$$
\Gamma_XD\simeq\Omega^mS^m,\ 
\Gamma_X\Omega\Sigma D\simeq\Omega^{m+1}S^{m+1}.
$$

再令
$$
\beta=\alpha_{i_1}\wedge\cdots\wedge\alpha_{i_m}:S^0\to D.
$$
容易看到 $\beta$ 在 $\pi_0\Gamma_XD = \mathbb Z$ 中对应 $\pm1$; 其经单位 $D\to\Omega\Sigma D$ 的像也对应整数生成元. 

(以上核查完毕.)

---


## 3. Whitehead 映射与望远镜

对带点对象 $U,V$, 其纬悬—圈单位诱导两条映射

$$
U,V\longrightarrow\Omega(\Sigma U\vee\Sigma V).
$$

取这两条映射的 Samelson 交换子并作伴随, 定义广义 [Whitehead 映射](Whitehead乘积.md)

$$
\omega_{U,V}:\Sigma(U\wedge V)\longrightarrow\Sigma U\vee\Sigma V.
$$

### 引理 3.1（纬悬消去）

对于任意带点 $U,V$, 有 $\Sigma\omega_{U,V}\simeq0$. 

*证明.* 令 $j:\Sigma U\vee\Sigma V\to\Sigma U\times\Sigma V$ 为规范映射. 两条来自不同乘积分量的圈生象映射互相交换, 所以 $j\omega_{U,V}\simeq0$. 另一方面, 规范映射 $\Sigma j$ 有左逆：利用纬悬的 pinch map 以及到两个因子的投影, 可由 $\Sigma(\Sigma U\times\Sigma V)$ 构造到 $\Sigma^2U\vee\Sigma^2V$ 的回缩. 因此 $\Sigma\omega_{U,V}\simeq0$. $\square$

对 $k\geq1$ 定义

$$
\boxed{W_k=\bigvee_{i=1}^k\Sigma L_i.}
$$

给出 $g_k:W_k\to W_{k+1}$. 唯一地写

$$
k=2^n+j-1,\  1\leq j\leq2^n,
$$

其中 $n\geq0$. 对每个 $i\ne j$, $g_k$ 在第 $i$ 个楔和分量上是进入目标同名分量的规范包含. 对第 $j$ 个分量, 定义其限制为

$$
\Sigma L_j
\xrightarrow{\ \Sigma(\mathrm{id}\wedge\alpha_{k+1})\ }
\Sigma(L_j\wedge L_{k+1})
\xrightarrow{\ \omega_{L_j,L_{k+1}}\ }
\Sigma L_j\vee\Sigma L_{k+1}
\longrightarrow W_{k+1}.
$$

这里第一个箭头使用 $\Sigma L_j\simeq\Sigma(L_j\wedge S^0)$. 最后定义**Whitehead 积望远镜**

$$
\boxed{F=\operatorname*{colim}_{k\geq1}(W_k,g_k)\in\mathcal X_*.}
$$

定义只使用纬悬、有限楔和、smash product、Whitehead 映射和序列余极限. 

### 引理 3.2（整轮纬悬为零）

对每个 $m=2^n$, 复合 $G_m=g_{2m-1}\circ\cdots\circ g_m:W_m\to W_{2m}$ 满足 $\Sigma G_m\simeq0$. 

*证明.* 在 $k=m+j-1$ 时恰好处理第 $j$ 个旧分量, 并引入第 $m+j$ 个新分量. 整轮结束后, $G_m$ 在第 $j$ 个分量上的限制正是

$$
\Sigma L_j\to\Sigma(L_j\wedge L_{m+j})
\xrightarrow{\omega}\Sigma L_j\vee\Sigma L_{m+j}\to W_{2m}.
$$

其纬悬由引理 3.1 为零. 有限楔和的映射由各分量决定, 故 $\Sigma G_m\simeq0$. $\square$

## 4. 连通性与纬悬

### 命题 4.1

$$
\tau_{\leq1}F\simeq1,\  \Sigma F\simeq1.
$$

*证明.* 每个 $W_k$ 仅依赖有限坐标; 在 $P^k$ 的各个点, 它是若干 $S^2$ 的楔和（也可能是点）. 所以 $W_k$ 内部单连通, 即 $\tau_{\leq1}W_k\simeq1$. 截断保持余极限, 故

$$
\tau_{\leq1}F\simeq\operatorname*{colim}_k\tau_{\leq1}W_k\simeq1.
$$

由共尾性, $F$ 亦是沿 $W_1\to W_2\to W_4\to W_8\to\cdots$ 的余极限. 纬悬与余极限交换, 而此子列的各个纬悬过渡映射由引理 3.2 零伦. 带点 ∞-范畴中, 过渡映射均零伦的序列的余极限为零对象：例如映入任意带点对象后得到一列过渡映射零伦的逆系统, 其同伦极限可缩. 因而 $\Sigma F\simeq1$. $\square$

## 5. 多线性 Samelson 词的非平凡性

对于某个 $m\geq1$, 取两两不同的 $i_1,\ldots,i_m$ 并置

$$
M_s=L_{i_s},\quad
A=M_1\vee\cdots\vee M_m,\quad
D=M_1\wedge\cdots\wedge M_m.
$$

记 $b_s\in\pi_1\Gamma_X\Sigma A$ 为由 $\Sigma\alpha_{i_s}$ 给出的全局环路. 所谓**多线性迭代交换子**, 是对 $b_1,\ldots,b_m$ 作任意二叉括号运算 $[\ ,\ ]$ 得到的元素, 且每个 $b_s$ 恰出现一次. 

### 引理 5.1（多线性词检测）

任意这样的迭代交换子在 $\pi_1\Gamma_X\Sigma A$ 中均非单位元. 

*证明.* 对给定的括号表达式, 按其叶子从左到右的次序重新编号 $M_1,\ldots,M_m$; 这不影响论断. 由 $M_s\to A\xrightarrow\eta\Omega\Sigma A$ 递归取 Samelson 交换子, 得到

$$
\kappa:D\longrightarrow\Omega\Sigma A.
$$

在全局截面上, $\kappa$ 将 $\alpha_{i_1}\wedge\cdots\wedge\alpha_{i_m}$ 送到待检测的迭代交换子. 

**构造检测映射. ** 对带点连通对象 $A$, 标准自然 James 分裂给出

$$
\Sigma\Omega\Sigma A\simeq\bigvee_{r\geq1}\Sigma A^{\wedge r}.
\tag{5.1}
$$

取与 James 滤过兼容的标准分裂. 先投影到长度 $m$, 再利用压缩积对楔和的分配律, 投影到有序下标 $(1,2,\ldots,m)$ 对应的分量：

$$
\Sigma\Omega\Sigma A
\longrightarrow\Sigma A^{\wedge m}
\longrightarrow\Sigma D.
$$

其伴随为一个自然带点映射

$$
h:\Omega\Sigma A\longrightarrow\Omega\Sigma D.
$$

所需 James 分裂在 ∞-意象 中适用于带点连通对象; 此处也可先在有限生象 $P^m$ 的每个图表点应用普通生象的自然分裂, 再拉回到 $X$ [2,3]. 

**中央点上的同调计算.** 在 $P^m$ 的全 $o$ 点, 有

$$
A_o\simeq\bigvee_{s=1}^m S^1,\quad
D_o\simeq S^m,\quad
\Omega\Sigma A_o\simeq\Omega\Bigl(\bigvee_{s=1}^mS^2\Bigr).
$$

设 $x_s\in H_1(\Omega\Sigma A_o;\mathbb F_2)$ 为第 $s$ 个纬悬单位的同调类. Bott–Samelson 计算给出

$$
H_*(\Omega\Sigma A_o;\mathbb F_2)
\cong\mathbb F_2\langle x_1,\ldots,x_m\rangle.
$$

Samelson 括号在 Hurewicz 同态下成为分次 Pontryagin 交换子; 模 $2$ 时按 $[u,v]\mapsto uv+vu$ 展开. 因此 $\kappa_o:S^m\to\Omega\Sigma A_o$ 的底维同调类, 是具有指定二叉括号形式的非交换多项式. **有序字 $x_1x_2\cdots x_m$ 的系数恰为 $1$**：在每一处分叉都取左块随后接右块给出此字; 任何一次对调两个互不相交的块都不能再得到这个字. 

式 (5.1) 的标准长度投影在该维同调中提取长度 $m$ 的张量词, 随后有序分量投影提取上述系数. 因此复合

$$
q=(h\kappa)_o:S^m\longrightarrow\Omega S^{m+1}
$$

在 $H_m(-;\mathbb F_2)$ 上非零. 由于

$$
\pi_m\Omega S^{m+1}\cong\pi_{m+1}S^{m+1}\cong\mathbb Z,
$$

且底维 Hurewicz 映射为同构, $q$ 代表一个奇数 $d\in\mathbb Z$, 特别是 $d\ne0$. 

**回到全局截面.** $D$ 与 $\Omega\Sigma D$ 的有限图表都只在全 $o$ 点非平凡. 故两者之间的自然变换 $h\kappa$ 由中央点的映射 $q$ 决定; 逐坐标取拉回表明其全局截面映射对应于

$$
\Omega^m q:\Omega^mS^m\longrightarrow\Omega^{m+1}S^{m+1}.
$$

由引理 2.2, $\alpha_{i_1}\wedge\cdots\wedge\alpha_{i_m}$ 在 $\pi_0\Gamma_XD\cong\mathbb Z$ 中是生成元; 其在 $\pi_0\Gamma_X\Omega\Sigma D\cong\mathbb Z$ 中的像是 $\pm d\ne0$. 所以它先经 $\kappa$ 所得的元素也非零. 这个元素正是待检测的迭代交换子. $\square$

**说明.** 检测映射 $h$ 不要求为环路生象乘法同态; 它是带点映射, 足以在路径分支上区分所需元素与基点. 

## 6. 全局截面连续性与最后的非平凡性

### 引理 6.1（滤余极限连续性）

对 $\mathcal X=\operatorname{Shv}(P^{\mathbb N};\mathsf{Ani})$ 中任意滤图表 $(E_\lambda)$, 有

$$
\Gamma_X\!\left(\operatorname*{colim}_\lambda E_\lambda\right)
\simeq\operatorname*{colim}_\lambda\Gamma_XE_\lambda.
$$

*证明.* $X$ 的有限坐标柱状开集构成一个对有限交、有限并封闭的紧开基, 且 $X$ 本身为紧开集. 这使 $X$ 成为 coherent 拓扑空间. 对这种空间, 普通生象值层可在紧开集基上表述：$E(\varnothing)\simeq*$, 且任意紧开 $U,V$ 满足

$$
E(U\cup V)\simeq E(U)\times_{E(U\cap V)}E(V).
$$

由于生象中的滤余极限与有限同伦极限交换, 在紧开基上逐值取滤余极限仍满足上述层条件. 因此普通层范畴的滤余极限在紧开基上逐值计算. 特别地, 对紧开集 $X$ 取值便得到所需等价. 这也是 HTT 命题 6.5.4.4 证明中使用的连续性结论 [1]. $\square$

对每个 $k$, 由 $\Sigma\alpha_i:S^1\to\Sigma L_i$ 及楔和包含, 定义

$$
a_i^{(k)}\in\pi_1\Gamma_XW_k,\  1\leq i\leq k.
$$

根据 Whitehead 映射的定义, 若 $k=2^n+j-1$, 则 $(g_k)_*$ 满足

$$
a_j^{(k)}\longmapsto
[a_j^{(k+1)},a_{k+1}^{(k+1)}],
\ 
a_i^{(k)}\longmapsto a_i^{(k+1)}\quad(i\ne j).
\tag{6.1}
$$

令 $t_k\in\pi_1\Gamma_XW_k$ 是第一阶段 $a_1^{(1)}$ 在第 $k$ 阶段的像. 由 (6.1) 归纳可知, $t_k$ 是 $a_1^{(k)},\ldots,a_k^{(k)}$ 的多线性迭代交换子, 各字母恰好出现一次. 例如

$$
\begin{aligned}
t_1&=a_1,\\
t_2&=[a_1,a_2],\\
t_3&=[[a_1,a_3],a_2],\\
t_4&=[[a_1,a_3],[a_2,a_4]].
\end{aligned}
$$

（各式中的 $a_i$ 均指当前阶段的同名生成元. ）由引理 5.1, 

$$
\boxed{t_k\ne1\quad\text{对所有 }k\geq1.}
$$

引理 6.1 给出 $\Gamma_XF\simeq\operatorname*{colim}_k\Gamma_XW_k$. 又因为 $S^1$ 是生象范畴中的紧对象, $\pi_1$ 与滤余极限交换, 故

$$
\pi_1\Gamma_XF\cong
\operatorname*{colim}_k\pi_1\Gamma_XW_k.
$$

群的滤余极限中, 一个元素等于单位元, 当且仅当它在某个有限后续阶段已经成为单位元. 上式和 $t_k\ne1$ 表明 $a_1^{(1)}$ 的像在 $\pi_1\Gamma_XF$ 中非零. 因此

$$
\boxed{\pi_1\Gamma_XF\ne1,\  F\not\simeq1.}
$$

结合命题 4.1, 得到主结论. 

### 主定理（本文构造所声称的结论）

在普通层 ∞-意象

$$
\mathcal X=\operatorname{Shv}(P^{\mathbb N};\mathsf{Ani})
$$

中, 由第 3 节的过渡映射构成的带点望远镜

$$
F=\operatorname*{colim}_{k\geq1}
\left(\bigvee_{i=1}^{k}\Sigma L_i,g_k\right)
$$

满足

$$
\boxed{\tau_{\leq1}F\simeq1,\ \Sigma F\simeq1,\  F\not\simeq1.}
$$

若上述检测与连续性论证经独立审核成立, 该对象便给出 Plus Principle 在一般 Grothendieck ∞-意象 中的反例. $\blacksquare$

## 7. 依赖的标准事实与适用范围

这份证明使用的主要标准输入是：带点连通对象的**自然 James 分裂**、在楔和圆上的 **Bott–Samelson 张量代数同调计算**（包括 Samelson 积的 Hurewicz 交换子公式）, 以及 **coherent 拓扑空间的普通生象值层在紧开集上逐值计算滤余极限**. Whitehead 映射的纬悬消去、有限 Alexandrov 空间上的拉回和球面底维 Hurewicz 同构则为经典计算. 

上述余极限必须形成于普通 $\operatorname{Shv}(X;\mathsf{Ani})$, 而不能在取余极限的同时改为超完备层范畴：超完备化后的全局截面一般不保滤余极限. 无限三点生象乘积正是 Lurie 所给此种现象的标准例子 [1, Counterexample 6.5.4.5]. 

## 参考文献

1. Jacob Lurie, *Higher Topos Theory*, Princeton University Press, 2009, Proposition 6.5.4.4 and Counterexample 6.5.4.5. https://www.math.ias.edu/~lurie/papers/HTT.pdf
2. Sanath Devalapurkar and Peter Haine, “On the James and Hilton–Milnor splittings, and the metastable EHP sequence,” *Documenta Mathematica* **26** (2021), 1423–1464. https://ems.press/journals/dm/articles/8965773
3. Samuel Lavenir, “The Hilton–Milnor theorem in higher topoi,” *Bulletin of the London Mathematical Society* **57** (2025), 1468–1481, Proposition 5.1. https://doi.org/10.1112/blms.70041
4. Ulrik Buchholtz, Tom de Jong and Egbert Rijke, “Epimorphisms and Acyclic Types in Univalent Foundations,” *The Journal of Symbolic Logic* (2025), §4 (Plus Principle). https://doi.org/10.1017/jsl.2024.76

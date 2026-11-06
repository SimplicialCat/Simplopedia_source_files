---
title: 偏屈层课程小结
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---

学期进行到一半, 让 AI 帮忙用我熟悉的观点总结了一下课程内容.

以下内容由 AI 生成.

这门课的主线可以先压缩成一句话: 

> **在奇性空间上构造一个与 Verdier 对偶相容的 Abel 范畴 $\mathsf{Perv}(X)$; 其单对象是由局部系统作中间延拓得到的 $\mathrm{IC}$ 层; 随后用算术权重证明, 紧合映射推前的 $\mathrm{IC}$ 层自动分裂为半单偏屈层.**

因此, 课程的前半部分是在构造并研究 $\mathsf{Perv}(X)$, 后半部分则是在证明其中的**分解定理**. 下面按这条主线重新组织. 

## 一、六函子给出了奇性空间上的相对对偶理论

在 Betti 情形, 可以先考虑空间值层的 $\infty$-意象 $\operatorname{Shv}(X)$, 再稳定化并取 $\mathbb Q$-线性系数, 得到稳定 $\infty$-范畴

$$
\mathcal D(X):=\operatorname{Shv}\bigl(X;\operatorname{Mod}_{\mathbb Q}\bigr).
$$

有界可构造对象构成全子范畴 $D_c^b(X)$. 可构造性要求存在有限分层, 使限制到每一层后成为局部系统. 在合适的正则分层假设下, 也可以用出路 $\infty$-范畴理解它: 可构造层大致是

$$
\operatorname{Exit}_{\mathcal S}(X)\longrightarrow \operatorname{Mod}_{\mathbb Q}
$$

的函子, 再附加有界性等条件. 每一层上的局部系统记录层内单值化, 而不同层之间的态射记录特殊化信息. 

六函子则是在这些范畴之间建立统一的函子形式: 

$$
f^*\dashv f_*,\qquad f_!\dashv f^!,
$$

再加上内 $\operatorname{Hom}$ 与 $\otimes$. 其中 $f^*,f_*$ 是普通几何态射具有的拉回与推前; $f_!,f^!$ 是带支集条件的另一对推出与拉回. 开嵌入满足 $j^!=j^*$, 紧合映射满足 $f_!=f_*$. 

Verdier 对偶由对偶化对象

$$
\omega_X=p^!\mathbb Q
$$

定义: 

$$
\mathbb D_X(F)=\underline{\operatorname{Hom}}(F,\omega_X).
$$

它交换两套函子: 

$$
\mathbb D_Yf_!\simeq f_*\mathbb D_X,\qquad
\mathbb D_Xf^!\simeq f^*\mathbb D_Y.
$$

所以, 六函子同时表达了普通上同调、紧支上同调、茎与余茎.

Poincaré 对偶是这一形式在光滑紧合空间上的特例. 课程一开始的问题便是: 当 $X$ 有奇点时, 应当把什么对象放在常值层的位置, 才能恢复这种对偶性？

答案将是 $\mathrm{IC}_X$.

## 二、偏屈 $t$-结构是与 Verdier 对偶相容的粘合 $t$-结构

普通 $t$-结构的心是可构造层, 但它与 Verdier 对偶不相容. 例如在光滑的复 $d$ 维空间上, 

$$
\omega_X\simeq \mathbb Q_X[2d],
$$

所以

$$
\mathbb D_X(\mathbb Q_X)\simeq\mathbb Q_X[2d].
$$

常值层被对偶移动了 $2d$ 个上同调次数. 若希望局部系统与其对偶处于同一个心中, 自然的修正是考虑

$$
\mathcal L[d].
$$

这就是光滑空间上偏屈 $t$-结构的来源: 把普通 $t$-结构平移 $d$, 使 $\mathcal L[d]$ 位于心中. 此时

$$
\mathbb D_X(\mathcal L[d])
$$

仍具有相同的形式. 

有奇点时, 需要把各层上的这种平移 $t$-结构粘起来. 设

$$
j\colon U\hookrightarrow X,\qquad i\colon Z\hookrightarrow X
$$

分别是开嵌入与其补闭嵌入. 此时有开闭分解给出的再黏合结构: 

$$
j_!\dashv j^*=j^!\dashv j_*,\qquad
i^*\dashv i_*=i_!\dashv i^!.
$$

给定 $U$ 与 $Z$ 上的 $t$-结构, 粘合后的两侧定义为

$$
F\in{}^{p}D^{\leq0}(X)
\iff
j^*F\in{}^{p}D^{\leq0}(U),\quad
i^*F\in{}^{p}D^{\leq0}(Z),
$$

以及

$$
F\in{}^{p}D^{\geq0}(X)
\iff
j^*F\in{}^{p}D^{\geq0}(U),\quad
i^!F\in{}^{p}D^{\geq0}(Z).
$$

这里出现了茎 $i^*$ 与余茎 $i^!$ 两个条件. 它们分别控制对象在闭层上的“上同调支集”与“局部上同调支集”. 逐层迭代这个粘合过程, 就得到笔记中的条件: 

$$
H^r(i_\alpha^*F)=0\qquad(r>-\dim S_\alpha),
$$

$$
H^r(i_\alpha^!F)=0\qquad(r<-\dim S_\alpha).
$$

这种对称安排使 Verdier 对偶交换 $\leq0$ 与 $\geq0$ 的条件, 从而保持整个偏屈 $t$-结构. 因此

$$
\mathbb D_X\bigl(\mathsf{Perv}(X)\bigr)
=\mathsf{Perv}(X).
$$

所以, 偏屈 $t$-结构的核心性质是: **它由分层维数规范化, 并且在开闭分解下粘合, 同时被 Verdier 对偶保持.**

## 三、$\mathrm{IC}$ 是边界上没有多余子对象和商对象的延拓

有了偏屈心, 就可以解释 $j_!$ 与 $j_*$ 之间的比较映射为何重要. 

对开嵌入 $j\colon U\hookrightarrow X$, 有自然变换

$$
j_!\longrightarrow j_*.
$$

经过偏屈截断后, 得到心中的函子

$$
{}^{p}j_!,\ {}^{p}j_*\colon
\mathsf{Perv}(U)\longrightarrow\mathsf{Perv}(X),
$$

以及自然变换 ${}^{p}j_!\to{}^{p}j_*$. 中间延拓定义为它在 Abel 范畴 $\mathsf{Perv}(X)$ 中的像: 

$$
j_{!*}(F):=
\operatorname{im}\bigl({}^{p}j_!F\to{}^{p}j_*F\bigr).
$$

其中: 

- ${}^{p}j_!F$ 是偏小的延拓, 容易带有支在边界上的商对象; 
- ${}^{p}j_*F$ 是偏大的延拓, 容易带有支在边界上的子对象; 
- $j_{!*}F$ 去掉这两类边界贡献. 

它的内蕴刻画正是笔记中的唯一性命题: $j_{!*}F$ 限制回 $U$ 得到 $F$, 并且没有非平凡的、支在 $X\setminus U$ 上的子对象或商对象. 

于是, 对光滑稠密开集 $U\subset X$, 定义

$$
\mathrm{IC}_X:=j_{!*}\bigl(\mathbb Q_U[\dim X]\bigr).
$$

由刻画可直接得到

$$
\mathbb D_X\mathrm{IC}_X\simeq\mathrm{IC}_X.
$$

结曲线的例子展示了这一构造的效果: 正规化 $\nu\colon\widetilde C\to C$ 给出

$$
\mathrm{IC}_C\simeq\nu_*\mathbb Q_{\widetilde C}[1],
$$

它消除了普通常值层在结点处产生的额外一维上同调, 使相交上同调恢复 Poincaré 对偶. 

不过, 笔记第 1 讲中“**一般的 $X$ 的 IC 层是奇点消解的常值层的推前**”需要修正. 对任意奇点消解 $\pi\colon\widetilde X\to X$, 通常只有

$$
\mathrm{IC}_X
\quad\text{是}\quad
\pi_*\mathrm{IC}_{\widetilde X}
$$

**的一个直和项**, 一般不与其相等. 你后面写下的吹起例子恰好说明了这一点: 多出来的例外除子会贡献另外的直和项. 这个“多出来什么、为何仍然分裂”的问题, 正是分解定理处理的内容. 

## 四、偏屈心的单对象完全由局部系统控制

中间延拓还解释了偏屈层的分类定理. 

若 $Z\subset X$ 是不可约闭子簇, $V\subset Z$ 是光滑稠密开集, $\mathcal L$ 是 $V$ 上的不可约局部系统, 那么沿 $V\hookrightarrow Z$ 作中间延拓, 再推前到 $X$, 得到

$$
\mathrm{IC}_Z(\mathcal L).
$$

单偏屈层恰好都是这种对象. 换言之, 单对象由两项资料决定: 

1. 一个不可约闭子簇 $Z$; 
2. 其光滑开集上的一个不可约局部系统, 即基本群的一个不可约表示. 

而 $\mathsf{Perv}(X)$ 中每个对象都有有限长度, 所以任意偏屈层都可以经过有限次扩张, 由这些 $\mathrm{IC}_Z(\mathcal L)$ 构成. 

这说明偏屈心同时具有两种描述: 

- **几何描述**: $D_c^b(X)$ 中满足茎、余茎振幅条件的对象; 
- **Abel 范畴描述**: 由局部系统的中间延拓生成的有限长度范畴. 

课程前半部分的终点, 就是建立了这两种描述之间的联系. 

## 五、半小性控制振幅, 分解定理进一步给出分裂

接下来研究 $f_*,f_!,f^*,f^!$ 对偏屈 $t$-结构的作用. 

一般纤维维数只能给出振幅估计: 纤维至多为 $d$ 维时, 上述函子最多把偏屈对象移动 $d$ 个次数. 半小性则对“大纤维只能出现在余维足够大的闭集上”作出限制: 

$$
\dim\{y\mid \dim f^{-1}(y)\geq r\}
\leq \dim X-2r.
$$

这个 $2r$ 正好抵消推前产生的偏屈振幅. 因此, 对光滑 $X$ 上的半小映射 $f$, 

$$
f_*\mathrm{IC}_X
$$

仍是偏屈层, 而不只是一个具有有限偏屈振幅的复形. 

但 BBDG 分解定理更强. 对任意紧合映射 $f$, 它断言

$$
f_*\mathrm{IC}_X
\simeq
\bigoplus_r
{}^{p}H^r(f_*\mathrm{IC}_X)[-r],
$$

并且每个 ${}^{p}H^r(f_*\mathrm{IC}_X)$ 都是半单偏屈层. 

用稳定 $\infty$-范畴的语言说, 这里有两个独立结论: 

1. **相对于偏屈 $t$-结构的形式性**: 对象等价于其各偏屈上同调对象的移位直和; 
2. **半单性**: 这些偏屈上同调对象本身分解为单偏屈层的直和. 

若 $f$ 还是半小的, 则所有非零偏屈次数都不出现, 于是 $f_*\mathrm{IC}_X$ 直接是半单偏屈层, 因而分解为若干 $\mathrm{IC}_Z(\mathcal L)$. 

光滑射影映射的情形是这一结论的预演. Hard Lefschetz 给出

$$
\eta^r\colon H^{-r}(K)\xrightarrow{\sim}H^r(K),
$$

Deligne 分裂判据再利用这种左右对称性证明 $K$ 分裂为普通上同调对象的直和. 一般紧合映射没有这样直接的相对 Hard Lefschetz 输入, 课程随后改用算术权重完成证明. 

## 六、权重理论提供使分裂必然发生的正交性

转到有限域后, 关键在于 $X_0$ 比其几何基变换 $X=X_0\times_{\mathbb F_q}\overline{\mathbb F}_q$ 多带一层算术结构. 平展基本群序列

$$
\pi_1^{\mathrm{\acute et}}(X)
\longrightarrow
\pi_1^{\mathrm{\acute et}}(X_0)
\longrightarrow
\operatorname{Gal}(\overline{\mathbb F}_q/\mathbb F_q)
$$

把几何单值化与算术 Frobenius 作用区分开来. 权重正是由 Frobenius 在茎上的特征值定义的. 

Tate 扭则记录循环 Galois 特征. 用意象论的语言, 它是从 $\operatorname{Spec}\mathbb F_q$ 拉回一个秩一局部系统, 再与原层作张量积. 按笔记的约定, $E(1)$ 的权为 $-2$; 上同调移位也会改变权, 所以“权”与普通上同调次数是两套不同的指标. 

混合层允许有一个逐次纯的滤过. 纯对象则同时受到茎与余茎条件的限制, 后者通过对偶条件表达. Weil II 提供的关键输入包括: 

- 六函子对权重的估计与保持性质; 
- 紧合推前保持纯性; 
- 纯偏屈层的半单性; 
- 不同权重之间的同态消失. 

若 $K=f_*\mathrm{IC}_X$ 纯权 $w$, 则其各偏屈上同调对象满足

$$
{}^{p}H^r(K)
\quad\text{纯权 }w+r.
$$

于是, 不同偏屈次数对应不同权重. 笔记最后的两条正交性说明: 

- 权重相差至少 $1$ 时, 几何对象之间没有 Frobenius 不变的同态; 
- 权重相差至少 $2$ 时, 算术导出范畴中的相应同态也消失. 

这些消失条件排除了不同偏屈上同调块之间的映射与扩张, 从而得到

$$
K\simeq\bigoplus_r{}^{p}H^r(K)[-r].
$$

同时, 纯偏屈层的半单性把每一块继续分解为 $\mathrm{IC}_Z(\mathcal L)$. 

所以后半课程的逻辑可以概括为: 

$$
\boxed{\text{Frobenius 权重}
\;\Longrightarrow\;
\text{不同权块之间的同态与扩张消失}
\;\Longrightarrow\;
\text{形式性与半单性}.}
$$

最后, 通过有限生成底概形上的展开、有限域特殊化以及 Betti–平展比较, 把结论传回复代数簇. 

## 七、整门课的总体结构

把七讲连起来, 就是下面这条链: 

$$
\begin{aligned}
&\text{奇性空间上的 Poincaré 对偶失效}\\
&\quad\leadsto\ \text{建立可构造导出范畴与六函子}\\
&\quad\leadsto\ \text{构造被 Verdier 对偶保持的偏屈 }t\text{-结构}\\
&\quad\leadsto\ \text{用中间延拓定义自对偶的 }\mathrm{IC}\text{ 层}\\
&\quad\leadsto\ \text{证明偏屈心有限长度并分类单对象}\\
&\quad\leadsto\ \text{研究推前的偏屈振幅与半小性}\\
&\quad\leadsto\ \text{用 Frobenius 权重证明 BBDG 分解与半单性}.
\end{aligned}
$$

其中最值得始终保留的三个现代观点是: **开闭分解给出再黏合; 偏屈 $t$-结构是逐层平移后再黏合得到的自对偶心; 分解定理则是权重正交性迫使稳定范畴中的对象按其偏屈上同调分裂.**
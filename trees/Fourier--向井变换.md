---
title: Fourier–Mukai 变换
tag: 百科
author: [SimplicialCat](SimplicialCat.md)
---


Fourier–Mukai (向井) 变换是某些层范畴 (如[凝聚层的导出范畴](凝聚层的导出范畴.md)) 之间的函子 $D(X)\to D(Y)$, 它是通过核对象 $K\in D(X\times Y)$ 构造的 "积分变换" ([拉-推](拉-推.md)).

许多基本的函子, 如[直像](直像.md)与[逆像](逆像.md), 都具有这种形式.

向井茂于 1981 年最早使用这种变换研究 [Abel 簇](Abel簇.md)与其对偶上的[凝聚层的导出范畴](凝聚层的导出范畴.md)的等价性, 这类似于 Fourier 变换建立了向量空间与其对偶空间上分布的同构.

## 定义

设 $X,Y$ 是光滑代数簇. 对于 $P \in D^b(X\times Y)$, 有函子 $\Phi_P\colon D^b(X)\to D^b(Y)$,
$$
\mathcal E \mapsto  p_*(P \otimes q^*\mathcal E).
$$
(省略了所有导出记号.)

投影映射是平坦的, 也即 $q^*$ 没有导出. 若 $P$ 局部自由, 则 $p_*$ 也没有导出.

## 例

### 恒等

对于对角线层 $\Delta\colon X\to X\times X$, $P=\mathcal O_\Delta$ 对应 $\operatorname{id}$.

$$
\begin{aligned}
	\Phi_{\mathcal O_\Delta}(\mathcal E) & \simeq p_*(\Delta_* \mathcal O_X \otimes q^*\mathcal E)\\
	& \simeq p_* \Delta_* (\Delta^* q^*\mathcal E \otimes\mathcal O_X).
\end{aligned}
$$
这里使用了[投影公式](投影公式.md),
$$
Rf_*(\mathcal F^\bullet) \otimes^L \mathcal E \simeq Rf_* (\mathcal F^\bullet \otimes^L Lf^*\mathcal E).
$$

### 前推与拉回

对于 $f\colon X\to Y$ 的 "图像" $\iota \colon X\to X\times Y$, $\Gamma_f := \iota_*\mathcal O_X$, 两个方向的 Fourier--向井变换分别是[直像](前推.md) $f_*$ 和[逆像](拉回.md) $f^*$.

### 一族连续变化的层

设 $P\in D^b(X\times Y)$ 在 $X$ 上凝聚平坦 (coherent flat). (想象 $Y$ 为参数, $P_x$ 是 $P_{x_0}$ 的形变)

(待补充)

### 小平--Spencer 映射

(待补充)
$$
T_{x_0}X \to \operatorname{Ext}^1(P_{x_0},P_{x_0})
$$
注意 $T_{x_0}X$ 同构于 $\operatorname{Ext}^1(k(x_0),k(x_0))$.

## 性质

**定理**. Fourier--向井变换有左右伴随, 且均为 Fourier--向井变换.

对 $P\in D^b(X\times Y)$, 定义 $P_L = P^\vee \otimes p^* \omega_Y[\dim Y]$ ($p\colon X\times Y\to Y$ 为投影), $P_R = P^\vee \otimes q^*\omega_X [\dim X] \in D^b(Y\times X)$. 参见 [Serre 对偶](Serre对偶.md).

**定理**. 两个 Fourier--向井变换的复合也是 Fourier--向井变换.

对 $P\in D^b(X\times Y)$, $Q\in D^b(Y\times Z)$, 定义 $R\in D^b(X\times Z)$ 如下.
$$
R = (\pi_{XZ})_* ((\pi_{XY})^*P \otimes (\pi_{YZ})^* Q).
$$
其中 $\pi_{XZ}$ 是 $X\times Y\times Z$ 到 $X\times Z$ 的投影, 等等.

如下是 Fourier--向井变换是全忠实函子的判定.

**定理** 设 $X,Y$ 是特征 $0$ 的代数闭域 $k$ 上的光滑[射影簇](射影簇.md), $P\in D^b(X\times Y)$. Fourier--向井变换 $\Phi$ 是全忠实函子当且仅当对任意闭点 $x,y\in X$,
$$
\operatorname{Hom}(\Phi_P(k(x)),\Phi_P(k(y))[i])=
\begin{cases}
k, & x=y,i=0\\
0, & x\neq y\text{ or }i<0 \text{ or }i>\dim X.
\end{cases}
$$


## K-理论版本

$\mathcal F^\bullet \in D^b(X)$ 对应 $X$ 的 [K-群 (拓扑)](K-群(拓扑).md)中的元素 $[\mathcal F^\bullet]:=\sum (-1)^i[\mathcal F^i] \in K(X)$.

**命题**. $[\mathcal F^\bullet] = \sum (-1)^i [\mathcal H^i (\mathcal F^\bullet)]$.

定义[紧支集直像](紧支集直像.md) $f_! \mathcal F := \sum (-1)^i [R^i f_*\mathcal F]$.

[K-理论](K-理论.md)版本的 Fourier--向井变换定义如下. 对 $e\in K(X\times Y)$,
$$
\Phi^K_e \colon f\mapsto p_!(e\otimes q^* f).
$$

## 上同调版本

对于 $f\colon X\to Y$, 有 $f_*\colon H^*(X;\mathbb{Q}) \to H^{*+2\dim Y - 2\dim X}(Y;\mathbb{Q})$, 满足[投影公式](投影公式.md)
$$
f_*(f^*\alpha \cdot \beta) = \alpha \cdot f_*\beta.
$$
定义 $\Phi^H\colon H^*(X;\mathbb{Q}) \to H^*(Y;\mathbb{Q})$,
$$
\Phi^H\colon \beta\mapsto p_*(\alpha \cdot q^* \beta).
$$

[陈特征](陈特征.md)是从 [K-群 (拓扑)](K-群(拓扑).md)到上同调的函子, 可联系 K-理论和上同调两个版本的 Fouier--向井变换. 两者的关系涉及 [Todd 类](Todd类.md): 设 $e\in K(X\times Y)$, 则
$$
\Phi^H_{v(e)} (\operatorname{ch}(f)\sqrt{\operatorname{td}X}) = \operatorname{ch}(\Phi^K_e(f)) \sqrt{\operatorname{td}Y}.
$$
其中 $v(e) = \operatorname{ch}(e)\sqrt{\operatorname{td}X} \in H^*(X;\mathbb{Q})$ 称为 Fourier--向井向量.

**证明**.
$$
\begin{array}
	{ccccccc}
	K(X) & \to & K(X\times Y) & \to & K(X\times Y) & \to & K(Y)\\
	\downarrow && \downarrow && \downarrow && \downarrow\\
	H^*(X) & \to & H^*(X\times Y) & \to & H^*(X\times Y) & \to & H^*(Y)
\end{array}
$$
中间方块交换是由于 [Grothendieck--Riemann--Roch 定理](Grothendieck--Riemann--Roch定理.md).


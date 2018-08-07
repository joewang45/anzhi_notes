# 0. 目录
[TOC]

# 1. 一般的张量

二维空间中的张量

![](..\picture\15.png)

三维空间中的张量

![](..\picture\10.png)

张量是数的更一般的概念：

- 零阶张量是标量
- 一阶张量是向量
- 二阶张量是（狭义上的）张量
- ...

二阶张量是最重要的张量，在连续体力学、相对论、电磁学和量子力学中有重要的应用。

张量的记法

- 加粗的大写拉丁字母 $\pmb{T}$
- 加粗的小写希腊字母 $\pmb{\sigma}$

## 1.1 张量是线性算子

我们可以将一阶张量定义为，将另一个一阶张量映射到零阶张量上的线性算子：
$$
\underbrace{\pmb{a} }_{一}
(\underbrace{\pmb{v} }_{一})
= \pmb{a}
\cdot\ 
\pmb{v} 
= \underbrace{\alpha}_{零}
$$
同样的，二阶张量可以定义为，将一个一阶张量映射到另一个一阶张量上的线性算子：
$$
\underbrace{\pmb{T}}_{二}
( \underbrace{\pmb{v}}_{一}) 
= \pmb{T}\cdot \pmb{v}
= \underbrace{\pmb{u}}_{一}
$$
如此，两个向量叉乘 $\pmb{a} \times \pmb{b}$ 中的 “$\pmb{a} \times$” 也可以理解为一个二阶张量算子。

之后我们也会看到，三阶张量可以将一阶张量映射到二阶张量上（$三 一 \mapsto 二$）

线性算子的性质让我们有了常见的运算性质：分配律和结合律。

## 1.2 Dyad 圈乘

两个向量之间，有：

- 点乘：$\pmb{a} \cdot \pmb{b}$   是一个 scalar
- 叉乘：$\pmb{a} \times \pmb{b}$ 是一个 vector
- 圈乘：$\pmb{a}\otimes \pmb{b}$ 是一个 dyad [^文献里有时候忽略 $$\otimes$$，而直接写成 $\pmb{a}\pmb{b}$]

定义 Dyad：
$$
(\pmb{a} \otimes \pmb{b})\pmb{c}
=\pmb{a}(\pmb{b}\cdot \pmb{c})
$$
这样一个东西满足张量为线性算子的定义，于是 Dyad 是一个张量。

可以用矩阵形式表达两个向量的圈乘，这满足它的定义：
$$
\pmb{a} \otimes \pmb{b} = 
[\pmb{a}][\pmb{b}]^T = 
\begin{pmatrix}
a_{1}b_{1} & a_{1}b_{2} & a_{1}b_{3} \\
a_{2}b_{1} & a_{2}b_{2} & a_{2}b_{3} \\
a_{3}b_{1} & a_{3}b_{2} & a_{3}b_{3} \\
\end{pmatrix}
$$
Dyad 的物理意义如下图：

![](..\picture\11.png)

显然，Dyad 不满足交换律：
$$
(\pmb{a} \otimes \pmb{b})\pmb{c} 
\neq
(\pmb{b} \otimes \pmb{a})\pmb{c} 
$$
有关 Dyad 的推论

- $(\pmb{a}\otimes\pmb{b})(\pmb{c}\otimes\pmb{d})=(\pmb{b}\cdot\pmb{c})(\pmb{a}\otimes\pmb{d})$
- $\pmb{a}(\pmb{b}\otimes\pmb{c}) = (\pmb{a}\cdot \pmb{b})\pmb{c}$
- 存疑：$\pmb{a}\cdot(\pmb{b}\otimes\pmb{c}) = (\pmb{a}\cdot \pmb{b})\pmb{c}$

和叉乘一样，圈乘对顺序十分严格。

投影张量：$(\pmb{e}\otimes\pmb{e})\pmb{u}=\pmb{e}(\pmb{e}\cdot\pmb{u})$，如此可以得到向量 $\pmb{u}$ 在任意方向上的投影向量。

## 1.3 Dyadics

Dyadics 是若干 Dyads 的线性组合，形如：
$$
 \alpha(\pmb{a}\otimes\pmb{b}) + \beta(\pmb{c}\otimes\pmb{d}) + \gamma(\pmb{e}\otimes\pmb{f}) + ...
$$
之后我们将证明，一个二阶张量总可以写成 Dyadics 的形式：
$$
\pmb{T} = \alpha(\pmb{a}\otimes\pmb{b}) + \beta(\pmb{c}\otimes\pmb{d}) + \gamma(\pmb{e}\otimes\pmb{f}) + ...
$$
形如 $\pmb{T} = \pmb{a} \otimes \pmb{b}$ 的二阶张量，被称作简单张量 simple tensor。

# 2. 笛卡尔坐标系中的张量

和向量一样，计算时我们总是需要引入坐标系的。

## 2.1 张量是 Dyadics

这里我们将在笛卡尔坐标系下证明，一个二阶张量总可以写成 Dyadics 的形式：
$$
\pmb{T} = \alpha(\pmb{a}\otimes\pmb{b}) + \beta(\pmb{c}\otimes\pmb{d}) + \gamma(\pmb{e}\otimes\pmb{f}) + ...
$$
对可以把向量 $\pmb{a}$ 变换成向量 $\pmb{b}$ 的张量 $\pmb{T}$ ，在笛卡尔坐标系下，有
$$
\begin{align}
\pmb{T}(\pmb{a}) & = \pmb{b} \\
\pmb{T}(a_i\pmb{e}_i) & = \pmb{b} \\
a_1 \underbrace{\pmb{T}(\pmb{e}_1)}_{\pmb{u}} +
a_2 \underbrace{\pmb{T}(\pmb{e}_2)}_{\pmb{v}} +
a_3 \underbrace{\pmb{T}(\pmb{e}_3)}_{\pmb{w}} 
& = \pmb{b}\\ 
a_1\pmb{u} + a_2\pmb{v} + a_3\pmb{w} & = \pmb{b} \\
(\pmb{a}\cdot \pmb{e}_1)\pmb{u} + 
(\pmb{a}\cdot \pmb{e}_2)\pmb{v} + 
(\pmb{a}\cdot \pmb{e}_3)\pmb{w} & = \pmb{b} \\
(\pmb{u}\otimes \pmb{e}_1)\pmb{a} + 
(\pmb{v}\otimes \pmb{e}_2)\pmb{a} + 
(\pmb{w}\otimes \pmb{e}_3)\pmb{a} & = \pmb{b} \\
(\pmb{u}\otimes \pmb{e}_1 + \pmb{v}\otimes \pmb{e}_2 + \pmb{w}\otimes \pmb{e}_3)\pmb{a} & = \pmb{b} 
\end{align}
$$
故，
$$
\pmb{T} =
\pmb{u}\otimes \pmb{e}_1 + \pmb{v}\otimes \pmb{e}_2 + \pmb{w}\otimes \pmb{e}_3
$$
Q.E.D

## 2.2 张量的分量形式

从上式可以接着推出张量在笛卡尔坐标系下的分量形式：
$$
\begin{align}
\pmb{T} 
%%%%%%%%%%%%%%%%%%%
& = &
& \pmb{u} \otimes \pmb{e}_1 
&+ 
& \pmb{v}\otimes \pmb{e}_2 
&+ 
& \pmb{w}\otimes \pmb{e}_3 \\
%%%%%%%%%%%%%%%%%%%
& = &
& (u_i\pmb{e}_i)\otimes\pmb{e}_1 
&+ 
&(v_i\pmb{e}_i)\otimes\pmb{e}_2
&+ 
&(w_i\pmb{e}_i)\otimes\pmb{e}_3 \\
%%%%%%%%%%%%%%%%%%%
\\
& = &
& u_1 \pmb{e}_1 \otimes \pmb{e}_1 
& +
& u_2 \pmb{e}_2 \otimes \pmb{e}_1 
& +
& u_3 \pmb{e}_3 \otimes \pmb{e}_1 \\
& &+ 
& v_1 \pmb{e}_1 \otimes \pmb{e}_2 
& +
& v_2 \pmb{e}_2 \otimes \pmb{e}_2 
& +
& v_3 \pmb{e}_3 \otimes \pmb{e}_2 \\
& &+ 
& w_1 \pmb{e}_1 \otimes \pmb{e}_3 
& +
& w_2 \pmb{e}_2 \otimes \pmb{e}_3 
& +
& w_3 \pmb{e}_3 \otimes \pmb{e}_3 \\
%%%%%%%%%%%%%%%%%%%
\\
& = & 
& T_{11} \pmb{e}_1 \otimes \pmb{e}_1 
& +
& T_{21} \pmb{e}_2 \otimes \pmb{e}_1 
& +
& T_{31} \pmb{e}_3 \otimes \pmb{e}_1 \\
& &+ 
& T_{12} \pmb{e}_1 \otimes \pmb{e}_2 
& +
& T_{22} \pmb{e}_2 \otimes \pmb{e}_2 
& +
& T_{32} \pmb{e}_3 \otimes \pmb{e}_2 \\
& &+ 
& T_{13} \pmb{e}_1 \otimes \pmb{e}_3 
& +
& T_{23} \pmb{e}_2 \otimes \pmb{e}_3 
& +
& T_{33} \pmb{e}_3 \otimes \pmb{e}_3 \\
%%%%%%%%%%%%%%%%%%%%%
\\
\pmb{T} & = & 
&T_{ij} \pmb{e}_i \otimes \pmb{e}_j
\end{align}
$$
一个三维空间中的二阶张量有九个分量。

张量可以写成 $3\times3$ 的矩阵形式，这满足它的定义。
$$
\pmb{T} = 
[\pmb{T}] = 
\begin{pmatrix}
T_{11} & T_{12} & T_{13} \\
T_{21} & T_{22} & T_{23} \\
T_{31} & T_{32} & T_{33} \\
\end{pmatrix}
$$
$\pmb{e}_i \otimes \pmb{e}_j$ 告诉我们，这个分量处于由 $\pmb{e}_i$ 为基构成的矩阵的第 $i$ 列，第 $j$ 行。

从推导中我们可以看出，实际上不需要是笛卡尔坐标系，任何坐标系的基又可以完成这一推导，只是分量会有所不同，有：
$$
\pmb{T} 
= T_{ij} \pmb{e}_i \otimes \pmb{e}_j 
= T_{ij}^g \pmb{g}_i \otimes \pmb{g}_j
$$
很容易可以从笛卡尔坐标系的正交性得出，张量在笛卡尔坐标系下的分量（算一算就明白）
$$
T_{ij}= \pmb{e}_i \pmb{T} \pmb{e}_j
$$
这个和向量在笛卡尔坐标系下的分量 $u_i=\pmb{u} \pmb{e}_i$ 存在形式上的统一。

## 2.3 高阶张量

参照二阶张量，高阶张量的一般形式有：

- 三阶张量 Triadics
  $$
  \underline{\underline{\underline{\pmb{T}}}}=T_{jik} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k
  $$

- 四阶张量 Tetradics
  $$
  \underline{\underline{\underline{\underline{\pmb{T}}}}}=T_{jikl} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k\otimes \pmb{e}_l
  $$


一个经典的高阶张量是 permutation tensor：
$$
\underline{\underline{\underline{\pmb{E}}}} 
= \varepsilon_{jik}\pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k
$$
显然，$n$ 阶张量在 $3$ 维空间中，有 $3^n$ 个分量

# 3. 张量的基本运算

## 3.1 单点缩并
### 3.1.1 张量和向量的单点缩并

单点缩并，称作 simple contraction。单点经常被省略。

对一个张量和一个向量，有：
$$
\begin{align}
\pmb{T}\pmb{a} 
& = T_{ij}\pmb{e}_i\otimes\pmb{e}_ja_k\pmb{e}_k
=T_{ij}a_k  \delta_{jk} \pmb{e}_i  \\
& = T_{ij}a_j\pmb{e}_i
\end{align}
$$
缩的意思，是指原来的总阶数（2+1=3）减少了。

Simple Contraction 是用于区别 Double Contraction 的概念。

缩并对应点乘的概念。

==使用二阶张量进行简单缩并时，总阶数总是会减少两阶。==

### 3.1.2 张量和张量的单点缩并

根据 $(\pmb{a}\otimes\pmb{b})(\pmb{c}\otimes\pmb{d})=(\pmb{b}\cdot\pmb{c})(\pmb{a}\otimes\pmb{d})$ ，有：
$$
\begin{align}
\pmb{A} \pmb{B} 
& =
A_{ij}\pmb{e}_i\otimes\pmb{e}_j 
B_{kl}\pmb{e}_k\otimes\pmb{e}_l 
= A_{ij}B_{kl} \delta_{jk} (\pmb{e}_i\otimes\pmb{e}_l) \\
\\
& = A_{ij}B_{jl} (\pmb{e}_i\otimes\pmb{e}_l)
\end{align}
$$
如果我们知道一个张量是由两个张量单点缩并而来，那么我们可以直接写出这个张量的分量形式：
$$
C_{ij} = A_{ik} B_{kj}
$$
张量的缩并也不满足交换律，但满足结合律和分配律。

所以多个张量的单点缩并总是可以两个两个来。

#### 张量的正整数幂

张量的 $n$ 次幂就是对一个张量做 $n$ 次单点缩并，可以使用递推定义：
$$
\begin{cases}
\pmb{T}^0 = \pmb{I} \\
\pmb{T}^n = \pmb{T}^{n-1}\pmb{T}
\end{cases}
$$

#### 张量的一般幂

张量的一般幂，就是张量的分式幂 fractional power。

包括正整数、正分数、负整数、负分数。

张量的根是对正定实张量而言的，即其特征值都是正数。

定义张量的幂需要从特征分解入手。

由特征分解的定义，有：
$$
\begin{align}
& \pmb{T} \hat{\pmb{n}} = \lambda \hat{\pmb{n}} \\
\\
\Rightarrow \quad & \pmb{T}^n \hat{\pmb{n}} = \lambda^n \hat{\pmb{n}}
\end{align}
$$
故，$\pmb{T}$ 和 $\pmb{T}^n$ 的特征向量是相同的，都是 $\hat{\pmb{n}}$。

它们是同轴的。

但是特征值却是不同的，一个是 $\lambda$，另一个是 $\lambda^n$ 。

由此，我们可以定义张量的实数 $m$ 次幂，有：
$$
\begin{align}
& \pmb{T} = \sum_{i=1}^3 \lambda_{(i)} \hat{\pmb{n}}_{(i)} \otimes \hat{\pmb{n}}_{(i)} \\
\Rightarrow \quad 
& \pmb{T}^m = \sum_{i=1}^3 \lambda_{(i)}^m \hat{\pmb{n}}_{(i)} \otimes \hat{\pmb{n}}_{(i)} \\
\end{align}
$$

### 3.1.3 高阶张量的单点缩并

张量的简单缩并的规则是很简单的，如下：
$$
\begin{align}
(\pmb{a} \otimes \pmb{b}) \pmb{c} 
& = (\pmb{b} \cdot \pmb{c}) \pmb{a} \\
(\pmb{a} \otimes \pmb{b})(\pmb{c} \otimes \pmb{d}) 
& = (\pmb{b} \cdot \pmb{c})(\pmb{a} \otimes \pmb{d}) \\
(\pmb{a} \otimes \pmb{b})(\pmb{c} \otimes \pmb{d} \otimes \pmb{e}) 
& = (\pmb{b} \cdot \pmb{c})(\pmb{a} \otimes \pmb{d}\otimes \pmb{e}) \\
(\pmb{a} \otimes \pmb{b}\otimes\pmb{c})(\pmb{d} \otimes \pmb{e} \otimes \pmb{f}) 
& = (\pmb{c} \cdot \pmb{d})(\pmb{a} \otimes \pmb{b} \otimes \pmb{e}\otimes \pmb{f}) \\
\end{align}
$$
简单来说就是相邻的两个向量点乘，剩下的仍然按照圈乘顺序排列。

于是，可以很容易的证明（算算便知）
$$
\pmb{A}(\pmb{B} \otimes \pmb{C})\pmb{D}
= (\pmb{A}\pmb{B}) \otimes (\pmb{C}\pmb{D})
$$

## 3.2 双点缩并

比起缩了两阶的单点缩并，双点缩并缩了四阶。

Dyad 的双点缩并：
$$
\begin{align}
(\pmb{a}\otimes\pmb{b}):(\pmb{c}\otimes\pmb{d})
& = (\pmb{a} \cdot \pmb{c})(\pmb{b} \cdot \pmb{d}) \\
\end{align}
$$
Triadics 的双点缩并：
$$
\begin{align}
(\pmb{a}\otimes\pmb{b}\otimes\pmb{c}):(\pmb{d}\otimes\pmb{e}\otimes\pmb{f})
& = (\pmb{b} \cdot \pmb{d}) (\pmb{c} \cdot \pmb{e}) \pmb{a}\otimes\pmb{f} \\
\end{align}
$$
Dyad 和 Triadics 的双点缩并：
$$
\begin{align}
(\pmb{a}\otimes\pmb{b}\otimes\pmb{c}):(\pmb{d}\otimes\pmb{e})
& = (\pmb{b} \cdot \pmb{d}) (\pmb{c} \cdot \pmb{e}) \pmb{a} \\
(\pmb{a}\otimes\pmb{b}):(\pmb{c}\otimes \pmb{d}\otimes\pmb{e}) 
& = (\pmb{a} \cdot \pmb{c}) (\pmb{b} \cdot \pmb{d}) \pmb{e} & not \ sure\ yet\\
\end{align}
$$
张量的双点缩并：
$$
\pmb{A} : \pmb{B} = A_{ij} B_{ij}
$$
引入张量的迹的概念之后，我们有：
$$
\pmb{A}:\pmb{B} = tr(\pmb{A}^T\pmb{B})=tr(\pmb{AB}^T)=tr(\pmb{B}^T\pmb{A})=tr(\pmb{BA}^T)
$$
两个向量的点乘可以转写为，单位张量与这两个向量的圈乘的双点缩并：
$$
\pmb{u} \cdot \pmb{v} = \pmb{I} : (\pmb{u} \otimes \pmb{v})
$$
两个向量的叉乘可以转写为，permutation tensor 与整个两个圈乘的双点缩并：
$$
\pmb{u} \times \pmb{v} 
= \underline{\underline{\underline{\pmb{E}}}}: 
(\pmb{u} \otimes \pmb{v})
$$
四阶张量的分量可以通过双点缩并得到，有：
$$
T_{jikl}
= (\pmb{e}_i \otimes \pmb{e}_j): 
\underline{\underline{\underline{\underline{\pmb{T}}}}}
:( \pmb{e}_k\otimes \pmb{e}_l)
$$

双点缩并是二阶张量的内积。

内积为零，意味着正交，于是：
$$
\pmb{A}:\pmb{B}=0 \Leftrightarrow \pmb{A} \bot \pmb{B}
$$
这个性质是用于张量空间中的。

一些推论：

- $ (\pmb{A} \otimes \pmb{B}):\pmb{C} = \pmb{A} (\pmb{B}:\pmb{C}) = (\pmb{B}:\pmb{C})\pmb{A}$
- $ \pmb{A} :(\pmb{B} \otimes \pmb{C}) = \pmb{C} (\pmb{A}:\pmb{B}) = (\pmb{A}:\pmb{B})\pmb{C}$
- $ (\pmb{A} \otimes \pmb{B}):(\pmb{C}\otimes \pmb{D}) = (\pmb{B} : \pmb{C}) (\pmb{A} \otimes \pmb{D}) =(\pmb{A} \otimes \pmb{D})  (\pmb{B}:\pmb{C})$

## 3.3 其他运算

**横双点缩并**

$$
\begin{align}
(\pmb{a}\otimes\pmb{b}) \cdot \cdot (\pmb{c}\otimes\pmb{d}) 
& = (\pmb{b} \cdot \pmb{c})(\pmb{a} \cdot \pmb{d}) \\
(\pmb{a}\otimes\pmb{b}\otimes\pmb{c})\cdot \cdot (\pmb{d}\otimes\pmb{e}\otimes\pmb{f})
& =  (\pmb{b} \cdot \pmb{e}) (\pmb{c} \cdot \pmb{d}) \pmb{a}\otimes\pmb{f} 
\end{align}
$$

**叉乘圈乘共存**

$$
(\pmb{a} \otimes \pmb{b}) \times (\pmb{c} \otimes \pmb{d}) 
= (\pmb{a} \otimes \pmb{d}) \otimes (\pmb{b} \times \pmb{c})
$$

**双叉乘/点乘**
$$
\begin{align}

(\pmb{a} \otimes \pmb{b}) ^{\times}_{\times} (\pmb{c} \otimes \pmb{d}) 
& = 
(\pmb{a} \times \pmb{c}) \otimes (\pmb{b} \times \pmb{d}) \\
(\pmb{a} \otimes \pmb{b}) ^{\times}_{\ .} (\pmb{c} \otimes \pmb{d}) 
& = 
(\pmb{a} \times \pmb{c}) (\pmb{b} \cdot \pmb{d}) \\
(\pmb{a} \otimes \pmb{b}) ^{\ .}_{\times} (\pmb{c} \otimes \pmb{d}) 
& = 
(\pmb{a} \cdot \pmb{c}) (\pmb{b} \times \pmb{d}) \\

\end{align}
$$

# 4. 张量的坐标系变换

张量的坐标系变换，是向量坐标系变换的推广。

## 4.1 基本变换规则

坐标系变换建立在基向量变换的基础上。

> 正交基向量 $\pmb{e}_1, \pmb{e}_2, \pmb{e}_3$ 和另一个正交基向量 $\pmb{e}_1', \pmb{e}_2', \pmb{e}_3'$ , 每个向量之间的关系可以通过他们的夹角来描述
> $$
> \begin{align}
> & \pmb{e}_i \cdot \pmb{e}_j' = Q_{ij} = cos(\pmb{e}_i, \pmb{e}_j' ) \\
> \Rightarrow \quad
> & \pmb{e}_i = Q_{ij} \pmb{e}_j' \\
> & \pmb{e}_i' = Q_{ji} \pmb{e}_j \\
> \end{align}
> $$
>

和向量的坐标系变换一样，张量的坐标系变换的表现，是矩阵中的分量的变化。

对张量 $\pmb{T} = T_{ij} \pmb{e}_i \otimes \pmb{e}_j = T_{pq}' \pmb{e}_p' \otimes \pmb{e}_q'$ ，有：
$$
\begin{align}
T_{ij} \pmb{e}_i \otimes \pmb{e}_j & = T_{pq}' \pmb{e}_p' \otimes \pmb{e}_q' \\
\\
& = T_{pq}' (Q_{ip}\pmb{e}_i) \otimes (Q_{jq}\pmb{e}_j) \\
\\
& = Q_{ip} Q_{jq} T_{pq}' \pmb{e}_i \otimes \pmb{e}_j \\
\\
\Rightarrow \quad T_{ij}
& = Q_{ip} Q_{jq} T_{pq}' \\
\\
[\pmb{T}] & = [\pmb{Q}][\pmb{T}'][\pmb{Q}^T]
\end{align}
$$
反过来就有：
$$
\begin{align}
T_{ij}'
& = Q_{pi} Q_{qj} T_{pq} \\
\\
[\pmb{T}'] 
& = [\pmb{Q}^T][\pmb{T}][\pmb{Q}]
\end{align}
$$

三阶张量的坐标系变换，有：
$$
T_{ijk}' = Q_{pi} Q_{qj} Q_{rk} T_{pqr}
$$
这个就很难用矩阵描述了。

### 例：摩尔变换 The Mohr Transformation

>在二维平面中存在张量 $\pmb{S}$ ，有：
>$$
>\begin{align}
>\pmb{S} 
>& = S_{11} \pmb{e}_1 \otimes \pmb{e}_1  + S_{12} \pmb{e}_1 \otimes \pmb{e}_2 \\
>\\
>& + S_{21} \pmb{e}_2 \otimes \pmb{e}_1  + S_{22} \pmb{e}_2 \otimes \pmb{e}_2 \\
>\\
>& = 
>\begin{pmatrix}
>S_{11} & S_{12} \\
>S_{21} & S_{22} \\
>\end{pmatrix}
>\end{align}
>$$
>
>通过旋转变换坐标系，旋转的角度为 $\theta$ ，变换矩阵有：
>$$
>Q_{ij} = \pmb{e}_i \cdot \pmb{e}_j'
>= 
>\begin{pmatrix}
> \pmb{e}_1 \cdot \pmb{e}_1' &  \pmb{e}_1 \cdot \pmb{e}_2' \\
> \pmb{e}_2 \cdot \pmb{e}_1' &  \pmb{e}_2 \cdot \pmb{e}_2' \\
>\end{pmatrix}
>= 
>\begin{pmatrix}
>cos\theta &  -sin\theta \\
> sin\theta &  cos\theta \\
>\end{pmatrix}
>$$
>于是，变换过的张量获得了新的分量，有：
>$$
>\begin{align}
>\pmb{S} 
>& = S_{11}' \pmb{e}_1' \otimes \pmb{e}_1'  + S_{12}' \pmb{e}_1' \otimes \pmb{e}_2' 
>+ S_{21}' \pmb{e}_2' \otimes \pmb{e}_1'  + S_{22}' \pmb{e}_2' \otimes \pmb{e}_2' \\
>\\
>& = (Q_{11}Q_{11}S_{11}+Q_{11}Q_{21}S_{12}+Q_{21}Q_{11}S_{21}+Q_{21}Q_{21}S_{22}) \pmb{e}_1' \otimes \pmb{e}_1' \\
>& \quad \  + ...\\
>\\
>& = (cos^2\theta S_{11} + cos\theta sin\theta S_{12} + sin\theta cos\theta S_{21} + cos^2\theta S_{22}) \pmb{e}_1' \otimes \pmb{e}_1'  \\ 
>& \quad \  + ...\\
>\\
>
>\Rightarrow [\pmb{S}']
>& = 
> [\pmb{Q}^T][\pmb{S}][\pmb{Q}]
>=
>\begin{pmatrix}
>cos\theta &  sin\theta \\
>-sin\theta &  cos\theta \\
>\end{pmatrix}
>
>\begin{pmatrix}
>S_{11} & S_{12} \\
>S_{21} & S_{22} \\
>\end{pmatrix}
>
>\begin{pmatrix}
>cos\theta &  -sin\theta \\
>sin\theta &  cos\theta \\
>\end{pmatrix}
>\end{align}
>$$
>当 $\pmb{S}$ 是一个对称张量的时候，我们只有三个独立分量，有：
>$$
>\begin{cases}
>S_{11}' = S_{11} cos^2 \theta + S_{22} sin^2\theta + S_{12} sin(2\theta) \\
>\\
>S_{22}' = S_{11} sin^2 \theta + S_{22} cos^2\theta - S_{12} sin(2\theta) \\
>\\
>S_{12}' = (S_{22}-S_{11})sin\theta cos\theta + S_{12} cos(2\theta) \\
>\end{cases}
>$$
>这个就是摩尔变换。

## 4.2 各向同性张量

An Isotropic Tensor

定义：无论坐标系如何旋转，其分量都不发生变化的张量，即
$$
T_{ij} = T_{ij}'  = Q_{pi} Q_{qj} T_{pq}
$$
使用某旋转张量 (proper orthogonal) 嗯对任一张量做变换，我们可以得到：

- 零阶张量都是各向同性的。

- 一阶张量都不是各向同性的。

- ==二阶张量中，只有球张量 $\alpha \pmb{I} = \alpha \delta_{ij}$ 是各向同性的。== 其他的二阶张量都是各向异性的。

- ==三阶张量中，只有张量 $\alpha \underline{\underline{\underline{E}}} = \alpha \varepsilon_{ijk} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k $ 是各向同性的。==

  - 三阶张量比较特殊的一点是，镜像的 orthogonal 张量 ($det(\pmb{Q}) = -1$) 会让它的分量正负交换
  - 偶数阶的张量则没有这个问题

- 有三个不同的基本四阶张量是各向同性的：
  $$
  \begin{align}
  \underline{\underline{\underline{\underline{I}}}} 
  & = \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_i \otimes \pmb{e}_j \\
  \\
  \tilde{\underline{\underline{\underline{\underline{I}}}}}
  & = \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_j \otimes \pmb{e}_i \\
  \\
  \pmb{I} \otimes \pmb{I} 
  & = \pmb{e}_i \otimes \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_j \\
  \end{align}
  $$
  ==四阶各向同性张量的一般形式为：==
  $$
  \alpha\pmb{I} \otimes \pmb{I} 
  + \beta \underline{\underline{\underline{\underline{I}}}} 
  + \gamma\tilde{\underline{\underline{\underline{\underline{I}}}}}
  $$
  


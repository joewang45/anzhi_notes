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

### 单位张量

笛卡尔坐标系下的单位张量，对对象向量不做变换的张量：
$$
\pmb{I} 
= \pmb{e}_1\otimes\pmb{e}_1 
+ \pmb{e}_2\otimes\pmb{e}_2 
+ \pmb{e}_3\otimes\pmb{e}_3
= \pmb{e}_i\otimes\pmb{e}_i
$$

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

张量可以写成 $3\times3$ 的矩阵形式。
$$
\pmb{T} = 
[\pmb{T}] = 
\begin{pmatrix}
T_{11} & T_{12} & T_{13} \\
T_{21} & T_{22} & T_{23} \\
T_{31} & T_{32} & T_{33} \\
\end{pmatrix}
$$
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


一个景点的高阶张量是 permutation tensor：
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
& = A_{ij}B_{jl} (\pmb{e}_i\otimes\pmb{e}_l)
\end{align}
$$
如果我们知道一个张量是由两个张量单点缩并而来，那么我们可以直接写出这个张量的分量形式：
$$
C_{ij} = A_{ik} B_{kj}
$$
张量的缩并也不满足交换律，但满足结合律和分配律。

所以多个张量的单点缩并总是可以两个两个来。

#### 张量的幂

张量的 $n$ 次幂就是对一个张量做 $n$ 次单点缩并，可以使用递推定义：
$$
\begin{cases}
\pmb{T}^0 = \pmb{I} \\
\pmb{T}^n = \pmb{T}^{n-1}\pmb{T}
\end{cases}
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
张量的双点缩并：
$$
\pmb{A} : \pmb{B} = A_{ij} B_{ij}
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

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

- 加粗的大写拉丁字母 $\mathbf{T}$
- 加粗的小写希腊字母 $\mathbf{\sigma}$

## 1.1 张量是线性算子

我们可以将一阶张量定义为，将另一个一阶张量映射到零阶张量上的线性算子：
$$
\underbrace{\mathbf{a} }_{一}
(\underbrace{\mathbf{v} }_{一})
= \mathbf{a}
\cdot\ 
\mathbf{v} 
= \underbrace{\alpha}_{零}
$$
同样的，二阶张量可以定义为，将一个一阶张量映射到另一个一阶张量上的线性算子：
$$
\underbrace{\mathbf{T}}_{二}
( \underbrace{\mathbf{v}}_{一}) 
= \mathbf{T}\cdot \mathbf{v}
= \underbrace{\mathbf{u}}_{一}
$$
如此，两个向量叉乘 $\mathbf{a} \times \mathbf{b}$ 中的 “$\mathbf{a} \times$” 也可以理解为一个二阶张量算子。

之后我们也会看到，三阶张量可以将一阶张量映射到二阶张量上（$三 一 \mapsto 二$）

线性算子的性质让我们有了常见的运算性质：分配律和结合律。

## 1.2 Dyad 圈乘

两个向量之间，有：

- 点乘：$\mathbf{a} \cdot \mathbf{b}$   是一个 scalar
- 叉乘：$\mathbf{a} \times \mathbf{b}$ 是一个 vector
- 圈乘：$\mathbf{a}\otimes \mathbf{b}$ 是一个 dyad [^文献里有时候忽略 $$\otimes$$，而直接写成 $\mathbf{a}\mathbf{b}$]

定义 Dyad：
$$
\textcolor{blue}{
(\mathbf{a} \otimes \mathbf{b})\cdot \mathbf{c}
=\mathbf{a}(\mathbf{b}\cdot \mathbf{c})
}
$$
这样一个东西满足张量为线性算子的定义，于是 Dyad 是一个张量。

可以用矩阵形式表达两个向量的圈乘，这满足它的定义：
$$
\mathbf{a} \otimes \mathbf{b} = 
[\mathbf{a}][\mathbf{b}]^T = 
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
(\mathbf{a} \otimes \mathbf{b})\mathbf{c} 
\neq
(\mathbf{b} \otimes \mathbf{a})\mathbf{c} 
$$
有关 Dyad 的推论

- $(\mathbf{a}\otimes\mathbf{b})(\mathbf{c}\otimes\mathbf{d})=(\mathbf{b}\cdot\mathbf{c})(\mathbf{a}\otimes\mathbf{d})$
- $\mathbf{a}(\mathbf{b}\otimes\mathbf{c}) = (\mathbf{a}\cdot \mathbf{b})\mathbf{c}$
- 存疑：$\mathbf{a}\cdot(\mathbf{b}\otimes\mathbf{c}) = (\mathbf{a}\cdot \mathbf{b})\mathbf{c}$

和叉乘一样，圈乘对顺序十分严格。

投影张量：$(\mathbf{e}\otimes\mathbf{e})\mathbf{u}=\mathbf{e}(\mathbf{e}\cdot\mathbf{u})$，如此可以得到向量 $\mathbf{u}$ 在任意方向上的投影向量。

## 1.3 Dyadics

Dyadics 是若干 Dyads 的线性组合，形如：
$$
\alpha(\mathbf{a}\otimes\mathbf{b}) + \beta(\mathbf{c}\otimes\mathbf{d}) + \gamma(\mathbf{e}\otimes\mathbf{f}) + ...
$$
之后我们将证明，一个二阶张量总可以写成 Dyadics 的形式：
$$
\mathbf{T} = \alpha(\mathbf{a}\otimes\mathbf{b}) + \beta(\mathbf{c}\otimes\mathbf{d}) + \gamma(\mathbf{e}\otimes\mathbf{f}) + ...
$$
形如 $\mathbf{T} = \mathbf{a} \otimes \mathbf{b}$ 的二阶张量，被称作简单张量 simple tensor。

# 2. 笛卡尔坐标系中的张量

和向量一样，计算时我们总是需要引入坐标系的。

## 2.1 张量是 Dyadics

这里我们将在笛卡尔坐标系下证明，一个二阶张量总可以写成 Dyadics 的形式：
$$
\mathbf{T} = \alpha(\mathbf{a}\otimes\mathbf{b}) + \beta(\mathbf{c}\otimes\mathbf{d}) + \gamma(\mathbf{e}\otimes\mathbf{f}) + ...
$$
对可以把向量 $\mathbf{a}$ 变换成向量 $\mathbf{b}$ 的张量 $\mathbf{T}$ ，在笛卡尔坐标系下，有
$$
\begin{align}
\mathbf{T}(\mathbf{a}) & = \mathbf{b} \\
\mathbf{T}(a_i\mathbf{e}_i) & = \mathbf{b} \\
a_1 \underbrace{\mathbf{T}(\mathbf{e}_1)}_{\mathbf{u}} +
a_2 \underbrace{\mathbf{T}(\mathbf{e}_2)}_{\mathbf{v}} +
a_3 \underbrace{\mathbf{T}(\mathbf{e}_3)}_{\mathbf{w}} 
& = \mathbf{b}\\ 
a_1\mathbf{u} + a_2\mathbf{v} + a_3\mathbf{w} & = \mathbf{b} \\
(\mathbf{a}\cdot \mathbf{e}_1)\mathbf{u} + 
(\mathbf{a}\cdot \mathbf{e}_2)\mathbf{v} + 
(\mathbf{a}\cdot \mathbf{e}_3)\mathbf{w} & = \mathbf{b} \\
(\mathbf{u}\otimes \mathbf{e}_1)\mathbf{a} + 
(\mathbf{v}\otimes \mathbf{e}_2)\mathbf{a} + 
(\mathbf{w}\otimes \mathbf{e}_3)\mathbf{a} & = \mathbf{b} \\
(\mathbf{u}\otimes \mathbf{e}_1 + \mathbf{v}\otimes \mathbf{e}_2 + \mathbf{w}\otimes \mathbf{e}_3)\mathbf{a} & = \mathbf{b} 
\end{align}
$$
故，
$$
\mathbf{T} =
\mathbf{u}\otimes \mathbf{e}_1 + \mathbf{v}\otimes \mathbf{e}_2 + \mathbf{w}\otimes \mathbf{e}_3
$$
Q.E.D

## 2.2 张量的分量形式

从上式可以接着推出张量在笛卡尔坐标系下的分量形式：
$$
\begin{align}
\mathbf{T} 
%%%%%%%%%%%%%%%%%%%
& = &
& \mathbf{u} \otimes \mathbf{e}_1 
&+ 
& \mathbf{v}\otimes \mathbf{e}_2 
&+ 
& \mathbf{w}\otimes \mathbf{e}_3 \\
%%%%%%%%%%%%%%%%%%%
& = &
& (u_i\mathbf{e}_i)\otimes\mathbf{e}_1 
&+ 
&(v_i\mathbf{e}_i)\otimes\mathbf{e}_2
&+ 
&(w_i\mathbf{e}_i)\otimes\mathbf{e}_3 \\
%%%%%%%%%%%%%%%%%%%
\\
& = &
& u_1 \mathbf{e}_1 \otimes \mathbf{e}_1 
& +
& u_2 \mathbf{e}_2 \otimes \mathbf{e}_1 
& +
& u_3 \mathbf{e}_3 \otimes \mathbf{e}_1 \\
& &+ 
& v_1 \mathbf{e}_1 \otimes \mathbf{e}_2 
& +
& v_2 \mathbf{e}_2 \otimes \mathbf{e}_2 
& +
& v_3 \mathbf{e}_3 \otimes \mathbf{e}_2 \\
& &+ 
& w_1 \mathbf{e}_1 \otimes \mathbf{e}_3 
& +
& w_2 \mathbf{e}_2 \otimes \mathbf{e}_3 
& +
& w_3 \mathbf{e}_3 \otimes \mathbf{e}_3 \\
%%%%%%%%%%%%%%%%%%%
\\
& = & 
& T_{11} \mathbf{e}_1 \otimes \mathbf{e}_1 
& +
& T_{21} \mathbf{e}_2 \otimes \mathbf{e}_1 
& +
& T_{31} \mathbf{e}_3 \otimes \mathbf{e}_1 \\
& &+ 
& T_{12} \mathbf{e}_1 \otimes \mathbf{e}_2 
& +
& T_{22} \mathbf{e}_2 \otimes \mathbf{e}_2 
& +
& T_{32} \mathbf{e}_3 \otimes \mathbf{e}_2 \\
& &+ 
& T_{13} \mathbf{e}_1 \otimes \mathbf{e}_3 
& +
& T_{23} \mathbf{e}_2 \otimes \mathbf{e}_3 
& +
& T_{33} \mathbf{e}_3 \otimes \mathbf{e}_3 \\
%%%%%%%%%%%%%%%%%%%%%
\\
\mathbf{T} & = & 
&T_{ij} \mathbf{e}_i \otimes \mathbf{e}_j
\end{align}
$$
一个三维空间中的二阶张量有九个分量。

张量可以写成 $3\times3$ 的矩阵形式，这满足它的定义。
$$
\mathbf{T} = 
[\mathbf{T}] = 
\begin{pmatrix}
T_{11} & T_{12} & T_{13} \\
T_{21} & T_{22} & T_{23} \\
T_{31} & T_{32} & T_{33} \\
\end{pmatrix}
$$
$\mathbf{e}_i \otimes \mathbf{e}_j$ 告诉我们，这个分量处于由 $\mathbf{e}_i$ 为基构成的矩阵的第 $i$ 列，第 $j$ 行。

从推导中我们可以看出，实际上不需要是笛卡尔坐标系，任何坐标系的基又可以完成这一推导，只是分量会有所不同，有：
$$
\mathbf{T} 
= T_{ij} \mathbf{e}_i \otimes \mathbf{e}_j 
= T_{ij}^g \mathbf{g}_i \otimes \mathbf{g}_j
$$
很容易可以从笛卡尔坐标系的正交性得出，张量在笛卡尔坐标系下的分量（算一算就明白）
$$
\textcolor{blue}{
T_{ij}= \mathbf{e}_i \cdot \mathbf{T} \cdot \mathbf{e}_j
}
$$
这个和向量在笛卡尔坐标系下的分量 $u_i=\mathbf{u} \mathbf{e}_i$ 存在形式上的统一。

## 2.3 高阶张量

参照二阶张量，高阶张量的一般形式有：

- 三阶张量 Triadics
  $$
  \underline{\underline{\underline{\mathbf{T}}}}=T_{jik} \mathbf{e}_i \otimes \mathbf{e}_j \otimes \mathbf{e}_k
  $$

- 四阶张量 Tetradics
  $$
  \underline{\underline{\underline{\underline{\mathbf{T}}}}}=T_{jikl} \mathbf{e}_i \otimes \mathbf{e}_j \otimes \mathbf{e}_k\otimes \mathbf{e}_l
  $$









一个经典的高阶张量是 permutation tensor：
$$
\underline{\underline{\underline{\mathbf{E}}}} 
= \varepsilon_{jik}\mathbf{e}_i \otimes \mathbf{e}_j \otimes \mathbf{e}_k
$$
显然，$n$ 阶张量在 $3$ 维空间中，有 $3^n$ 个分量

# 3. 张量的基本运算

## 3.1 单点缩并
### 3.1.1 张量和向量的单点缩并

单点缩并，称作 simple contraction。单点经常被省略。

对一个张量和一个向量，有：
$$
\textcolor{blue}{
\begin{align}
\mathbf{T}\cdot\mathbf{u} 
= T_{ij}u_j \mathbf{e}_i
\end{align}
}
$$

$$
\begin{align}
\mathbf{T}\mathbf{a} 
& = T_{ij}\mathbf{e}_i\otimes\mathbf{e}_ja_k\mathbf{e}_k
=T_{ij}a_k  \delta_{jk} \mathbf{e}_i  \\
& = T_{ij}a_j\mathbf{e}_i
\end{align}
$$
缩的意思，是指原来的总阶数（2+1=3）减少了。

Simple Contraction 是用于区别 Double Contraction 的概念。

缩并对应点乘的概念。

==使用二阶张量进行简单缩并时，总阶数总是会减少两阶。==

### 3.1.2 张量和张量的单点缩并

根据 $\textcolor{blue}{(\mathbf{a}\otimes\mathbf{b})(\mathbf{c}\otimes\mathbf{d})=(\mathbf{b}\cdot\mathbf{c})(\mathbf{a}\otimes\mathbf{d})}$ ，有：
$$
\textcolor{blue}{
\mathbf{A}\cdot\mathbf{B} = A_{ik}B_{kj}\mathbf{e}_i\otimes \mathbf{e}_j
}
$$

$$
\begin{align}
\mathbf{A} \mathbf{B} 
& =
A_{ij}\mathbf{e}_i\otimes\mathbf{e}_j 
B_{kl}\mathbf{e}_k\otimes\mathbf{e}_l 
= A_{ij}B_{kl} \delta_{jk} (\mathbf{e}_i\otimes\mathbf{e}_l) \\
\\
& = A_{ij}B_{jl} (\mathbf{e}_i\otimes\mathbf{e}_l)
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
\textcolor{blue}{
\begin{cases}
\mathbf{T}^0 = \mathbf{I} \\
\mathbf{T}^n = \mathbf{T}^{n-1}\mathbf{T}
\end{cases}}
$$

#### 张量的一般幂

张量的一般幂，就是张量的分式幂 fractional power。

包括正整数、正分数、负整数、负分数。

张量的根是对正定实张量而言的，即其特征值都是正数。

定义张量的幂需要从特征分解入手。

由特征分解的定义，有：
$$
\begin{align}
& \mathbf{T} \hat{\mathbf{n}} = \lambda \hat{\mathbf{n}} \\
\\
\Rightarrow \quad & \mathbf{T}^n \hat{\mathbf{n}} = \lambda^n \hat{\mathbf{n}}
\end{align}
$$
故，$\mathbf{T}$ 和 $\mathbf{T}^n$ 的特征向量是相同的，都是 $\hat{\mathbf{n}}$。

它们是同轴的。

但是特征值却是不同的，一个是 $\lambda$，另一个是 $\lambda^n$ 。

由此，我们可以定义张量的实数 $m$ 次幂，有：
$$
\begin{align}
& \mathbf{T} = \sum_{i=1}^3 \lambda_{(i)} \hat{\mathbf{n}}_{(i)} \otimes \hat{\mathbf{n}}_{(i)} \\
\Rightarrow \quad 
& \mathbf{T}^m = \sum_{i=1}^3 \lambda_{(i)}^m \hat{\mathbf{n}}_{(i)} \otimes \hat{\mathbf{n}}_{(i)} \\
\end{align}
$$

### 3.1.3 高阶张量的单点缩并

张量的简单缩并的规则是很简单的，如下：
$$
\begin{align}
(\mathbf{a} \otimes \mathbf{b}) \mathbf{c} 
& = (\mathbf{b} \cdot \mathbf{c}) \mathbf{a} \\
(\mathbf{a} \otimes \mathbf{b})(\mathbf{c} \otimes \mathbf{d}) 
& = (\mathbf{b} \cdot \mathbf{c})(\mathbf{a} \otimes \mathbf{d}) \\
(\mathbf{a} \otimes \mathbf{b})(\mathbf{c} \otimes \mathbf{d} \otimes \mathbf{e}) 
& = (\mathbf{b} \cdot \mathbf{c})(\mathbf{a} \otimes \mathbf{d}\otimes \mathbf{e}) \\
(\mathbf{a} \otimes \mathbf{b}\otimes\mathbf{c})(\mathbf{d} \otimes \mathbf{e} \otimes \mathbf{f}) 
& = (\mathbf{c} \cdot \mathbf{d})(\mathbf{a} \otimes \mathbf{b} \otimes \mathbf{e}\otimes \mathbf{f}) \\
\end{align}
$$
简单来说就是相邻的两个向量点乘，剩下的仍然按照圈乘顺序排列。

$$
\textcolor{blue}{
\begin{align}
(\mathbf{a} \otimes \mathbf{b})\cdot(\mathbf{c} \otimes \mathbf{d} \otimes \mathbf{e}) 
& = (\mathbf{b} \cdot \mathbf{c})(\mathbf{a} \otimes \mathbf{d}\otimes \mathbf{e}) \\
(\mathbf{a} \otimes \mathbf{b}\otimes\mathbf{c})\cdot(\mathbf{d} \otimes \mathbf{e} \otimes \mathbf{f}) 
& = (\mathbf{c} \cdot \mathbf{d})(\mathbf{a} \otimes \mathbf{b} \otimes \mathbf{e}\otimes \mathbf{f}) \\
\end{align}
}
$$


于是，可以很容易的证明（算算便知）
$$
\mathbf{A}(\mathbf{B} \otimes \mathbf{C})\mathbf{D}
= (\mathbf{A}\mathbf{B}) \otimes (\mathbf{C}\mathbf{D})
$$

## 3.2 双点缩并

比起缩了两阶的单点缩并，双点缩并缩了四阶。

Dyad 的双点缩并：
$$
\textcolor{blue}{
\begin{align}
(\mathbf{a}\otimes\mathbf{b}):(\mathbf{c}\otimes\mathbf{d})
& = (\mathbf{a} \cdot \mathbf{c})(\mathbf{b} \cdot \mathbf{d}) \\
\end{align}
}
$$
Triadics 的双点缩并：
$$
\textcolor{blue}{
\begin{align}
(\mathbf{a}\otimes\mathbf{b}\otimes\mathbf{c}):(\mathbf{d}\otimes\mathbf{e}\otimes\mathbf{f})
& = (\mathbf{b} \cdot \mathbf{d}) (\mathbf{c} \cdot \mathbf{e}) \mathbf{a}\otimes\mathbf{f} \\
\end{align}
}
$$
Dyad 和 Triadics 的双点缩并：
$$
\begin{align}
(\mathbf{a}\otimes\mathbf{b}\otimes\mathbf{c}):(\mathbf{d}\otimes\mathbf{e})
& = (\mathbf{b} \cdot \mathbf{d}) (\mathbf{c} \cdot \mathbf{e}) \mathbf{a} \\
(\mathbf{a}\otimes\mathbf{b}):(\mathbf{c}\otimes \mathbf{d}\otimes\mathbf{e}) 
& = (\mathbf{a} \cdot \mathbf{c}) (\mathbf{b} \cdot \mathbf{d}) \mathbf{e} & not \ sure\ yet\\
\end{align}
$$
张量的双点缩并：
$$
\textcolor{blue}{
\mathbf{A} : \mathbf{B} = A_{ij} B_{ij} = tr(\mathbf{A}^T\cdot\mathbf{B})
}
$$
引入张量的迹的概念之后，我们有：
$$
\mathbf{A}:\mathbf{B} = tr(\mathbf{A}^T\mathbf{B})=tr(\mathbf{AB}^T)=tr(\mathbf{B}^T\mathbf{A})=tr(\mathbf{BA}^T)
$$
两个向量的点乘可以转写为，单位张量与这两个向量的圈乘的双点缩并：
$$
\mathbf{u} \cdot \mathbf{v} = \mathbf{I} : (\mathbf{u} \otimes \mathbf{v})
$$
两个向量的叉乘可以转写为，permutation tensor 与整个两个圈乘的双点缩并：
$$
\mathbf{u} \times \mathbf{v} 
= \underline{\underline{\underline{\mathbf{E}}}}: 
(\mathbf{u} \otimes \mathbf{v})
$$
四阶张量的分量可以通过双点缩并得到，有：
$$
T_{jikl}
= (\mathbf{e}_i \otimes \mathbf{e}_j): 
\underline{\underline{\underline{\underline{\mathbf{T}}}}}
:( \mathbf{e}_k\otimes \mathbf{e}_l)
$$

双点缩并是二阶张量的内积。

内积为零，意味着正交，于是：
$$
\textcolor{blue}{
\mathbf{A}:\mathbf{B}=0 \Leftrightarrow \mathbf{A} \bot \mathbf{B}
}
$$
这个性质是用于张量空间中的。

一些推论：

- $ (\mathbf{A} \otimes \mathbf{B}):\mathbf{C} = \mathbf{A} (\mathbf{B}:\mathbf{C}) = (\mathbf{B}:\mathbf{C})\mathbf{A}$
- $ \mathbf{A} :(\mathbf{B} \otimes \mathbf{C}) = \mathbf{C} (\mathbf{A}:\mathbf{B}) = (\mathbf{A}:\mathbf{B})\mathbf{C}$
- $ (\mathbf{A} \otimes \mathbf{B}):(\mathbf{C}\otimes \mathbf{D}) = (\mathbf{B} : \mathbf{C}) (\mathbf{A} \otimes \mathbf{D}) =(\mathbf{A} \otimes \mathbf{D})  (\mathbf{B}:\mathbf{C})$

## 3.3 其他运算

**横双点缩并**
$$
\begin{align}
(\mathbf{a}\otimes\mathbf{b}) \cdot \cdot (\mathbf{c}\otimes\mathbf{d}) 
& = (\mathbf{b} \cdot \mathbf{c})(\mathbf{a} \cdot \mathbf{d}) \\
(\mathbf{a}\otimes\mathbf{b}\otimes\mathbf{c})\cdot \cdot (\mathbf{d}\otimes\mathbf{e}\otimes\mathbf{f})
& =  (\mathbf{b} \cdot \mathbf{e}) (\mathbf{c} \cdot \mathbf{d}) \mathbf{a}\otimes\mathbf{f} 
\end{align}
$$

**叉乘圈乘共存**

$$
(\mathbf{a} \otimes \mathbf{b}) \times (\mathbf{c} \otimes \mathbf{d}) 
= (\mathbf{a} \otimes \mathbf{d}) \otimes (\mathbf{b} \times \mathbf{c})
$$

**双叉乘/点乘**
$$
\begin{align}

(\mathbf{a} \otimes \mathbf{b}) ^{\times}_{\times} (\mathbf{c} \otimes \mathbf{d}) 
& = 
(\mathbf{a} \times \mathbf{c}) \otimes (\mathbf{b} \times \mathbf{d}) \\
(\mathbf{a} \otimes \mathbf{b}) ^{\times}_{\ .} (\mathbf{c} \otimes \mathbf{d}) 
& = 
(\mathbf{a} \times \mathbf{c}) (\mathbf{b} \cdot \mathbf{d}) \\
(\mathbf{a} \otimes \mathbf{b}) ^{\ .}_{\times} (\mathbf{c} \otimes \mathbf{d}) 
& = 
(\mathbf{a} \cdot \mathbf{c}) (\mathbf{b} \times \mathbf{d}) \\

\end{align}
$$

# 4. 张量的坐标系变换

张量的坐标系变换，是向量坐标系变换的推广。

## 4.1 基本变换规则

坐标系变换建立在基向量变换的基础上。

> 正交基向量 $\mathbf{e}_1, \mathbf{e}_2, \mathbf{e}_3​$ 和另一个正交基向量 $\mathbf{e}_1', \mathbf{e}_2', \mathbf{e}_3'​$ , 每个向量之间的关系可以通过他们的夹角来描述
> $$
> \begin{align}
> & \mathbf{e}_i \cdot \mathbf{e}_j' = Q_{ij} = cos(\mathbf{e}_i, \mathbf{e}_j' ) \\
> \Rightarrow \quad
> & \mathbf{e}_i = Q_{ij} \mathbf{e}_j' \\
> & \mathbf{e}_i' = Q_{ji} \mathbf{e}_j \\
> \end{align}
> $$
>

和向量的坐标系变换一样，张量的坐标系变换的表现，是矩阵中的分量的变化。

对张量 $\mathbf{T} = T_{ij} \mathbf{e}_i \otimes \mathbf{e}_j = T_{pq}' \mathbf{e}_p' \otimes \mathbf{e}_q'$ ，有：
$$
\textcolor{blue}{
\mathbf{T} = T_{ij} \mathbf{e}_i \otimes \mathbf{e}_j = T_{pq}' \mathbf{e}_p' \otimes \mathbf{e}_q'
= T_{pq}' (Q_{ip}\mathbf{e}_i) \otimes (Q_{jq}\mathbf{e}_j)
\\
[\mathbf{T}']  = [\mathbf{Q}^T][\mathbf{T}][\mathbf{Q}]
}
$$

$$
\begin{align}
T_{ij} \mathbf{e}_i \otimes \mathbf{e}_j & = T_{pq}' \mathbf{e}_p' \otimes \mathbf{e}_q' \\
\\
& = T_{pq}' (Q_{ip}\mathbf{e}_i) \otimes (Q_{jq}\mathbf{e}_j) \\
\\
& = Q_{ip} Q_{jq} T_{pq}' \mathbf{e}_i \otimes \mathbf{e}_j \\
\\
\Rightarrow \quad T_{ij}
& = Q_{ip} Q_{jq} T_{pq}' \\
\\
[\mathbf{T}] & = [\mathbf{Q}][\mathbf{T}'][\mathbf{Q}^T]
\end{align}
$$
反过来就有：
$$
\begin{align}
T_{ij}'
& = Q_{pi} Q_{qj} T_{pq} \\
\\
[\mathbf{T}'] 
& = [\mathbf{Q}^T][\mathbf{T}][\mathbf{Q}]
\end{align}
$$

三阶张量的坐标系变换，有：
$$
T_{ijk}' = Q_{pi} Q_{qj} Q_{rk} T_{pqr}
$$
这个就很难用矩阵描述了。

### 例：摩尔变换 The Mohr Transformation

>在二维平面中存在张量 $\mathbf{S}$ ，有：
>$$
>\begin{align}
>\mathbf{S} 
>& = S_{11} \mathbf{e}_1 \otimes \mathbf{e}_1  + S_{12} \mathbf{e}_1 \otimes \mathbf{e}_2 \\
>\\
>& + S_{21} \mathbf{e}_2 \otimes \mathbf{e}_1  + S_{22} \mathbf{e}_2 \otimes \mathbf{e}_2 \\
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
>Q_{ij} = \mathbf{e}_i \cdot \mathbf{e}_j'
>= 
>\begin{pmatrix}
> \mathbf{e}_1 \cdot \mathbf{e}_1' &  \mathbf{e}_1 \cdot \mathbf{e}_2' \\
> \mathbf{e}_2 \cdot \mathbf{e}_1' &  \mathbf{e}_2 \cdot \mathbf{e}_2' \\
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
>\mathbf{S} 
>& = S_{11}' \mathbf{e}_1' \otimes \mathbf{e}_1'  + S_{12}' \mathbf{e}_1' \otimes \mathbf{e}_2' 
>+ S_{21}' \mathbf{e}_2' \otimes \mathbf{e}_1'  + S_{22}' \mathbf{e}_2' \otimes \mathbf{e}_2' \\
>\\
>& = (Q_{11}Q_{11}S_{11}+Q_{11}Q_{21}S_{12}+Q_{21}Q_{11}S_{21}+Q_{21}Q_{21}S_{22}) \mathbf{e}_1' \otimes \mathbf{e}_1' \\
>& \quad \  + ...\\
>\\
>& = (cos^2\theta S_{11} + cos\theta sin\theta S_{12} + sin\theta cos\theta S_{21} + cos^2\theta S_{22}) \mathbf{e}_1' \otimes \mathbf{e}_1'  \\ 
>& \quad \  + ...\\
>\\
>
>\Rightarrow [\mathbf{S}']
>& = 
> [\mathbf{Q}^T][\mathbf{S}][\mathbf{Q}]
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
>当 $\mathbf{S}$ 是一个对称张量的时候，我们只有三个独立分量，有：
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

- ==二阶张量中，只有球张量 $\alpha \mathbf{I} = \alpha \delta_{ij}$ 是各向同性的。== 其他的二阶张量都是各向异性的。$\textcolor{blue}{\alpha \underline{\underline{\underline{E}}}}$

- ==三阶张量中，只有张量 $\alpha \underline{\underline{\underline{E}}} = \alpha \varepsilon_{ijk} \mathbf{e}_i \otimes \mathbf{e}_j \otimes \mathbf{e}_k $ 是各向同性的。==

  - 三阶张量比较特殊的一点是，镜像的 orthogonal 张量 ($det(\mathbf{Q}) = -1$) 会让它的分量正负交换
  - 偶数阶的张量则没有这个问题

- 有三个不同的基本四阶张量是各向同性的：
  $$
  \begin{align}
  \underline{\underline{\underline{\underline{I}}}} 
  & = \mathbf{e}_i \otimes \mathbf{e}_j \otimes \mathbf{e}_i \otimes \mathbf{e}_j \\
  \\
  \tilde{\underline{\underline{\underline{\underline{I}}}}}
  & = \mathbf{e}_i \otimes \mathbf{e}_j \otimes \mathbf{e}_j \otimes \mathbf{e}_i \\
  \\
  \mathbf{I} \otimes \mathbf{I} 
  & = \mathbf{e}_i \otimes \mathbf{e}_i \otimes \mathbf{e}_j \otimes \mathbf{e}_j \\
  \end{align}
  $$
  ==四阶各向同性张量的一般形式为：==
  $$
  \textcolor{blue}{
  \alpha\mathbf{I} \otimes \mathbf{I} 
  + \beta \underline{\underline{\underline{\underline{I}}}} 
  + \gamma\tilde{\underline{\underline{\underline{\underline{I}}}}}
  }
  $$








[TOC]

这里我们将介绍一些重要的二阶张量和它们在笛卡尔坐标系下的表现。

# 1. 单位张量/恒等张量

Identity Tensor 是一个张量

定义：
$$
\pmb{I}(\pmb{u})=\pmb{u}
$$
在笛卡尔坐标系中，恒等向量为：
$$
\pmb{I} 
= \pmb{e}_1\otimes\pmb{e}_1 
+ \pmb{e}_2\otimes\pmb{e}_2 
+ \pmb{e}_3\otimes\pmb{e}_3
= \pmb{e}_i\otimes\pmb{e}_i
$$

其矩阵形式为：
$$
\pmb{I}  = [\pmb{I}] =
\begin{pmatrix}
1 & 0 & 0 \\
0 & 1 & 0 \\
0 & 0 & 1\\
\end{pmatrix}
$$

# 2. 张量的转置

Transpose of Tensor 是一个张量

定义：
$$
\pmb{a} \cdot \pmb{A}^T(\pmb{b}) = \pmb{b} \cdot \pmb{A}(\pmb{a})
$$
在笛卡尔坐标系下，有：
$$
\begin{align}
\pmb{A} & = A_{ij} \pmb{e}_i \otimes \pmb{e}_j \\
\\
\pmb{A}^T & = A_{ji} \pmb{e}_i \otimes \pmb{e}_j \\
\end{align}
$$
矩阵形式：
$$
\begin{align}
\pmb{A} & = 
\begin{pmatrix}
A_{11} & A_{12} & A_{13} \\
A_{21} & A_{22} & A_{23} \\
A_{31} & A_{32} & A_{33} \\
\end{pmatrix}
\\
\\
\pmb{A}^T & = 
\begin{pmatrix}
A_{11} & A_{21} & A_{31} \\
A_{12} & A_{22} & A_{32} \\
A_{13} & A_{23} & A_{33} \\
\end{pmatrix}\\
\end{align}
$$
涉及到张量的转置的性质有：

- $(\pmb{A}^T)^T = \pmb{A}$
- $(\alpha\pmb{A} + \beta \pmb{B})^T = \alpha\pmb{A}^T + \beta\pmb{B}^T$
- $(\pmb{a} \otimes \pmb{b})^T = \pmb{b} \otimes \pmb{a}$
- $\pmb{T}\pmb{u} = \pmb{u} \pmb{T}^T$
- $\pmb{u}\pmb{T} = \pmb{T}^T \pmb{u}$
- $(\pmb{AB})^T = \pmb{B}^T\pmb{A}^T$
- $\pmb{A}:\pmb{B} = \pmb{A}^T:\pmb{B}^T$
- $(\pmb{a} \otimes \pmb{b})\pmb{T} = \pmb{a} \otimes (\pmb{T}^T\pmb{b})$
- $\pmb{A}:(\pmb{B}\pmb{C}) = (\pmb{B}^T\pmb{A}):\pmb{C} = (\pmb{AC})^T:\pmb{B}$

# 3. 张量的迹

Trace of Tensor 是一个标量

定义：
$$
tr(\pmb{T}) = \pmb{I}:\pmb{A}
$$
在笛卡尔坐标系中：
$$
\begin{align}
tr(\pmb{T}) & =T_{ii} \\
tr(\pmb{a} \otimes \pmb{b}) & = \pmb{a} \cdot \pmb{b} \\
\end{align}
$$
一个张量的迹无论取何种基都是一样。

单个张量的迹：

- $tr(\pmb{T}) =tr(\pmb{T}^T)= T_{ii}$
- $tr(\pmb{T}^2)=tr(\pmb{T}\pmb{T}) = T_{ij}T_{ji}$
- $tr(\pmb{T}^3)=tr(\pmb{T}\pmb{T}\pmb{T}) = T_{ij}T_{jk}T_{ki}$
- $\big(tr(\pmb{T})\big)^2=tr(\pmb{T})\cdot  tr(\pmb{T})= T_{ii}T_{jj}$
- $\big(tr(\pmb{T})\big)^3=tr(\pmb{T})\cdot tr(\pmb{T})\cdot  tr(\pmb{T})= T_{ii}T_{jj}T_{kk}$

两个张量的迹：

- $tr(\pmb{AB})=tr(\pmb{BA})$
- $tr(\pmb{A} + \pmb{B}) = tr(\pmb{A})+tr(\pmb{B})$
- $tr(\alpha\pmb{A})=\alpha \cdot tr(\pmb{A})$
- $\pmb{A}:\pmb{B} = tr(\pmb{A}^T\pmb{B})=tr(\pmb{AB}^T)=tr(\pmb{B}^T\pmb{A})=tr(\pmb{BA}^T)$

# 4. 张量的范

Norm of Tensor 张量自身内积的开方。

定义：
$$
|\pmb{A}|=\sqrt{\pmb{A}:\pmb{A}}
$$
在笛卡尔坐标系下：
$$
|\pmb{A}|=\sqrt{A_{ij}A_{ij}}
$$

# 5. 张量的行列式

Determinant of Tensor

定义：一个张量的行列式，是代表这个张量的矩阵的行列式

也就是说没有一般形式，必须在选定的基下操作

在笛卡尔坐标系下，有：
$$
det(\pmb{T}) = det ([\pmb{T}]) = \varepsilon_{ijk} T_{i1}T_{j2}T_{k3} = \varepsilon_{ijk} T_{1i}T_{2j}T_{3k}
$$
一个张量行列式无论在何种基下都是一样。

一些有关行列式的性质：

- $det(\pmb{AB}) = det(\pmb{A}) \cdot det(\pmb{B})$
- $det(\pmb{A}^T)=det(\pmb{A})$
- $det(\alpha \pmb{A})=\alpha^3 det(\pmb{A})$
- $det(\pmb{a}\otimes\pmb{b})=0$[^一个简单张量，因为对应的行列式为零，所以是一种特殊的线性变换]
- $\varepsilon_{pqr}\cdot det(\pmb{T}) = \varepsilon_{ijk}\cdot T_{ip}T_{jq}T_{kr}$
- $(\pmb{T}\pmb{a} \times \pmb{T}\pmb{b})\cdot \pmb{T}\pmb{c} = det(\pmb{T})[(\pmb{a}\times\pmb{b})\cdot \pmb{c}]$

# 6. 张量的逆 

Inverse of Tensor

定义：
$$
\pmb{T}\pmb{T}^{-1}=\pmb{T}^{-1}\pmb{T}=\pmb{I}
$$

只有非奇异张量才有逆。

奇异张量，即行列式为零的张量，实际上是把原来的空间降了维；想要通过逆的方式升维，是做不到的。

一些有关逆的性质：

- $(\pmb{T}^{-1})^{-1}=\pmb{T}$
- $(\alpha\pmb{T})^{-1} = \frac{1}{\alpha} \pmb{T}^{-1}$
- $(\pmb{AB})^{-1}=\pmb{B}^{-1} \pmb{A}^{-1}$
- $det(\pmb{T}^{-1})=\big(det(\pmb{T})\big)^{-1}$
- $\pmb{T}^{-T} = (\pmb{T}^{-1})^T = (\pmb{T}^{T})^{-1}$

# 7. 一个正交的张量

An Orthogonal Tensor

定义：
$$
\pmb{T}(\pmb{a})\cdot \pmb{T}(\pmb{b}) = \pmb{a} \cdot \pmb{b}
$$
变换后的两个向量的内积不变。

由定义可以推导出：
$$
\begin{align}
& \pmb{T}(\pmb{a})\cdot \pmb{T}(\pmb{b}) = \pmb{a}\pmb{T}^T\pmb{T}\pmb{b}= \pmb{a} \cdot \pmb{b} \\
\\
\Rightarrow \quad & \pmb{T}^T\pmb{T}=\pmb{I}
\end{align}
$$
这同时也满足了张量的逆的定义，所以一个正交的张量的逆和转置是一样的，有：
$$
\pmb{T}_{ortho}^T = \pmb{T}_{ortho}^{-1}
$$
注意*一个有正交属性的张量，和两个正交的张量是不一样的。*

- 两个正交的张量是在张量空间中，内积为零的两个张量。
- 一个有正交属性的张量，是在向量空间做线性变换时，不改变空间的单位尺度的线性变换，即：

$$
det(\pmb{T})= \pm 1
$$

如果还不改变空间的朝向，即基的手向，那么这个张量被称作 proper orthogonal，即：
$$
det(\pmb{T})=  1
$$
A proper orthogonal Tensor 也经常被称作 Rotation Tensor，因为用于转动坐标轴的张量都是 proper orthogonal 的。

## 7.1 使用正交张量转动坐标轴

转动坐标轴是一种比较简单的换基行动。

我们通过对基向量做线性变换来变换坐标轴。

使用张量 $\pmb{T}$ 对基向量 $\pmb{e}_i$ 进行变换，得到新的基向量 $\pmb{e}_i^{'}$，有：
$$
\pmb{e}_i^{'}=\pmb{T}(\pmb{e}_i)
$$
相反的转换通过转置张量进行，有：
$$
\pmb{e}_i=\pmb{T}^T(\pmb{e}_i^{'})
$$

在基向量 $\pmb{e}_i$ 下，有：
$$
\pmb{T}=T_{ij} \pmb{e}_i \otimes \pmb{e}_j 
= (\pmb{e}_i \pmb{T}\pmb{e}_j) (\pmb{e}_i \otimes \pmb{e}_j) 
= (\pmb{e}_i \cdot \pmb{e}_j^{'}) (\pmb{e}_i \otimes \pmb{e}_j)
$$
未完待续..

# 8. 对称张量和反对称张量

Symmetric Tensors and Skew Tensors

定义：

- 张量是对称的
  $$
  \pmb{T}=\pmb{T}^{T}
  $$

- 张量是反对称的
  $$
  \pmb{T} = -\pmb{T}^{T}
  $$


他们也是与坐标轴无关的性质。

在笛卡尔坐标系里，用矩阵形式表示，有：

- 对称张量 $\pmb{S}$
  $$
  \pmb{S}=
  \begin{pmatrix}
  S_{11} & S_{12} & S_{13} \\
  S_{12} & S_{22} & S_{23} \\
  S_{13} & S_{23} & S_{33} \\
  \end{pmatrix}
  $$

- 反对称张量 $\pmb{W}$
  $$
  \pmb{W} =
  \begin{pmatrix}
  0 & W_{12} & W_{13} \\
  - W_{12} & 0 & W_{23} \\
  - W_{13} & -W_{23} & 0 
  \end{pmatrix}
  $$
  反对称张量没有逆

任何一个张量都可以分解成一个对称张量和一个反对称张量的和。

我们定义算符 $sym()$ 和 $skew()$ 为取某张量的对称和反对称部分，有：
$$
\pmb{T} = sym(\pmb{T}) + skew(\pmb{T}) 
= \frac{1}{2}(\pmb{T}+\pmb{T}^T) + \frac{1}{2}(\pmb{T}-\pmb{T}^T)
$$
一些对称和反对称张量的性质：

-  $\pmb{S}:\pmb{T} = \pmb{S} : \pmb{T}^T = \pmb{S} : \frac{1}{2}(\pmb{T}+\pmb{T}^T)$

-  $\pmb{W}:\pmb{T} = -\pmb{W} : \pmb{T}^T = \pmb{W} : \frac{1}{2}(-\pmb{T}^T)$

-  $\pmb{S}:\pmb{W} = 0 $

-  $tr(\pmb{SW})=0$

-  $\pmb{u}\pmb{W}\pmb{u}=0$

-  $det(\pmb{W})=0$

## 8.1 赝向量

Axial Vectors / Pseudovectors

因为反对称张量里，只有三个独立的数，和一个向量类似。

所以我们想，从反对称张量中，定义出一个向量。

定义：对于反对称张量 $\pmb{W}$ 的赝向量 $\pmb{w}$，总有：
$$
\begin{align}
& \pmb{W}(\pmb{u})=\pmb{w} \times \pmb{u} \\
\end{align}
$$
根据定义，有：
$$
\begin{align}
W_{ij}
& = \pmb{e}_i \pmb{W} \pmb{e}_j 
= \pmb{e}_i (\pmb{w} \times \pmb{e}_j) 
= \pmb{e}_i (w_k\pmb{e}_k \times \pmb{e}_j) \\
& = \pmb{e}_i (w_k \varepsilon_{kjm} \pmb{e}_m) 
= \varepsilon_{kji} w_k 
= - \varepsilon_{ijk} w_k
\end{align}
$$
所以，向量 $\pmb{w}$ 的系数就可以定下来了，有：
$$
\pmb{w} 
= \begin{pmatrix} w_1 \\ w_2 \\ w_3 \end{pmatrix}
= \begin{pmatrix} W_{32} \\ W_{13} \\ W_{21} \end{pmatrix}
$$

# 9. 球张量和偏张量

Spherical Tensors and Deviatoric Tensors

定义：对角位置上的元素都一样的对角张量是球张量

任何一个张量都可以分解成一个球张量和一个偏张量的和。

我们定义算符 $sph()$ 和 $dev()$ 为取某张量的球量部分和偏量部分，有：
$$
\begin{align}
& \pmb{T}  = sph(\pmb{T}) + dev(\pmb{T})  = \frac{1}{3} \cdot tr(\pmb{T}) \cdot \pmb{I} + \big(\pmb{T} - sph(\pmb{T})\big)\\

\end{align}
$$
球张量和偏张量的性质：

- $tr\big(dev(\pmb{T})\big)=0$
- $sph\big(dev(\pmb{T})\big)=0$
- $dev(\pmb{A}): sph(\pmb{B})=0$

# 10. 正定张量和半正定张量

A Positive Definite Tensor and A Positive Semi-Definite Tensor 

> 严格数学定义：
> $$
> \pmb{T}: \pmb{v}\otimes \pmb{v} > 0
> $$
>


定义：

- 张量 $\pmb{T}$ 是一个正定张量，当其对任意向量 $\pmb{v}$，有：

$$
\pmb{v} \pmb{T} \pmb{v} >0
$$

- 张量 $\pmb{T}$ 是一个半正定张量，当其对任意向量 $\pmb{v}$，有：

$$
\pmb{v} \pmb{T} \pmb{v} \geq 0
$$

判断一个张量正定的必要不充分条件（满足所有这些条件的张量肯定正定）有：

1. 张量矩阵的对角元素都是正值
2. 张量矩阵中的最大值在对角线上
3. 张量的行列式大于零
4. $A_{ii} + A_{jj} > 2A_{ij}$ （不是爱因斯坦求和）

判断一个张量正定的充要条件是：
$$
张量的对称张量矩阵对角线上的元素都是正值
$$
一个正定张量最重要的特性就是，它的行列式大于零。

所以，使用正定张量的变换，永远是可逆的。
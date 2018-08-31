[TOC]

这里我们将介绍一些重要的二阶张量和它们在笛卡尔坐标系下的表现。

# 1. 单位张量/恒等张量

Identity Tensor 是一个张量

定义：
$$
\mathbf{I}(\mathbf{u})=\mathbf{u}
$$
在笛卡尔坐标系中，恒等向量为：
$$
\mathbf{I} 
= \mathbf{e}_1\otimes\mathbf{e}_1 
+ \mathbf{e}_2\otimes\mathbf{e}_2 
+ \mathbf{e}_3\otimes\mathbf{e}_3
= \mathbf{e}_i\otimes\mathbf{e}_i
$$

其矩阵形式为：
$$
\mathbf{I}  = [\mathbf{I}] =
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
\mathbf{a} \cdot \mathbf{A}^T(\mathbf{b}) = \mathbf{b} \cdot \mathbf{A}(\mathbf{a})
$$
在笛卡尔坐标系下，有：
$$
\textcolor{blue}{
\begin{align}
\mathbf{A} & = A_{ij} \mathbf{e}_i \otimes \mathbf{e}_j 
\Rightarrow
\mathbf{A}^T = A_{ji} \mathbf{e}_i \otimes \mathbf{e}_j \\
\end{align}
}
$$
矩阵形式：
$$
\begin{align}
\mathbf{A} & = 
\begin{pmatrix}
A_{11} & A_{12} & A_{13} \\
A_{21} & A_{22} & A_{23} \\
A_{31} & A_{32} & A_{33} \\
\end{pmatrix}
\\
\\
\mathbf{A}^T & = 
\begin{pmatrix}
A_{11} & A_{21} & A_{31} \\
A_{12} & A_{22} & A_{32} \\
A_{13} & A_{23} & A_{33} \\
\end{pmatrix}\\
\end{align}
$$
涉及到张量的转置的性质有：

- $(\mathbf{A}^T)^T = \mathbf{A}$
- $(\alpha\mathbf{A} + \beta \mathbf{B})^T = \alpha\mathbf{A}^T + \beta\mathbf{B}^T$
- $(\mathbf{a} \otimes \mathbf{b})^T = \mathbf{b} \otimes \mathbf{a}$
- $\mathbf{T}\mathbf{u} = \mathbf{u} \mathbf{T}^T$
- $\mathbf{u}\mathbf{T} = \mathbf{T}^T \mathbf{u}$
- $(\mathbf{AB})^T = \mathbf{B}^T\mathbf{A}^T$
- $\mathbf{A}:\mathbf{B} = \mathbf{A}^T:\mathbf{B}^T$
- $(\mathbf{a} \otimes \mathbf{b})\mathbf{T} = \mathbf{a} \otimes (\mathbf{T}^T\mathbf{b})$
- $\mathbf{A}:(\mathbf{B}\mathbf{C}) = (\mathbf{B}^T\mathbf{A}):\mathbf{C} = (\mathbf{AC})^T:\mathbf{B}$

# 3. 张量的迹

Trace of Tensor 是一个标量

定义：
$$
tr(\mathbf{T}) = \mathbf{I}:\mathbf{A}
$$
在笛卡尔坐标系中：
$$
\textcolor{blue}{
\begin{align}
tr(\mathbf{T}) & =T_{ii} \\
tr(\mathbf{a} \otimes \mathbf{b}) & = \mathbf{a} \cdot \mathbf{b} \\
\end{align}
}
$$
一个张量的迹无论取何种基都是一样。

单个张量的迹：

- $tr(\mathbf{T}) =tr(\mathbf{T}^T)= T_{ii}$
- $\textcolor{blue}{tr(\mathbf{T}^2) = T_{ij}T_{ji}}$
- $tr(\mathbf{T}^3)=tr(\mathbf{T}\mathbf{T}\mathbf{T}) = T_{ij}T_{jk}T_{ki}$
- $\textcolor{blue}{\big(tr(\mathbf{T})\big)^2= T_{ii}T_{jj}}$
- $\big(tr(\mathbf{T})\big)^3=tr(\mathbf{T})\cdot tr(\mathbf{T})\cdot  tr(\mathbf{T})= T_{ii}T_{jj}T_{kk}$

两个张量的迹：

- $tr(\mathbf{AB})=tr(\mathbf{BA})$
- $tr(\mathbf{A} + \mathbf{B}) = tr(\mathbf{A})+tr(\mathbf{B})$
- $tr(\alpha\mathbf{A})=\alpha \cdot tr(\mathbf{A})$
- $\mathbf{A}:\mathbf{B} = tr(\mathbf{A}^T\mathbf{B})=tr(\mathbf{AB}^T)=tr(\mathbf{B}^T\mathbf{A})=tr(\mathbf{BA}^T)$

# 4. 张量的范

Norm of Tensor 张量自身内积的开方。

定义：
$$
\textcolor{blue}{
|\mathbf{A}|=\sqrt{\mathbf{A}:\mathbf{A}} = \sqrt{A_{ij}A_{ij}}
}
$$
在笛卡尔坐标系下：
$$
|\mathbf{A}|=\sqrt{A_{ij}A_{ij}}
$$

# 5. 张量的行列式

Determinant of Tensor

定义：一个张量的行列式，是代表这个张量的矩阵的行列式

也就是说没有一般形式，必须在选定的基下操作

在笛卡尔坐标系下，有：
$$
det(\mathbf{T}) = det ([\mathbf{T}]) = \varepsilon_{ijk} T_{i1}T_{j2}T_{k3} = \varepsilon_{ijk} T_{1i}T_{2j}T_{3k}
$$
一个张量行列式无论在何种基下都是一样。

一些有关行列式的性质：

- $det(\mathbf{AB}) = det(\mathbf{A}) \cdot det(\mathbf{B})$
- $det(\mathbf{A}^T)=det(\mathbf{A})$
- $det(\alpha \mathbf{A})=\alpha^3 det(\mathbf{A})$
- $det(\mathbf{a}\otimes\mathbf{b})=0$[^一个简单张量，因为对应的行列式为零，所以是一种特殊的线性变换]
- $\varepsilon_{pqr}\cdot det(\mathbf{T}) = \varepsilon_{ijk}\cdot T_{ip}T_{jq}T_{kr}$
- $(\mathbf{T}\mathbf{a} \times \mathbf{T}\mathbf{b})\cdot \mathbf{T}\mathbf{c} = det(\mathbf{T})[(\mathbf{a}\times\mathbf{b})\cdot \mathbf{c}]$

# 6. 张量的逆 

Inverse of Tensor

定义：
$$
\textcolor{blue}{
\mathbf{T}\cdot\mathbf{T}^{-1}=\mathbf{T}^{-1}\cdot\mathbf{T}=\mathbf{I}
\\
\mathbf{T}^{-1}=\mathbf{T}^T
}
$$

只有非奇异张量才有逆。

奇异张量，即行列式为零的张量，实际上是把原来的空间降了维；想要通过逆的方式升维，是做不到的。
$$
\textcolor{blue}{det(\mathbf{T})>0}
$$
一些有关逆的性质：

- $(\mathbf{T}^{-1})^{-1}=\mathbf{T}$
- $(\alpha\mathbf{T})^{-1} = \frac{1}{\alpha} \mathbf{T}^{-1}$
- $(\mathbf{AB})^{-1}=\mathbf{B}^{-1} \mathbf{A}^{-1}$
- $det(\mathbf{T}^{-1})=\big(det(\mathbf{T})\big)^{-1}$
- $\mathbf{T}^{-T} = (\mathbf{T}^{-1})^T = (\mathbf{T}^{T})^{-1}$

# 7. 一个正交的张量

An Orthogonal Tensor

定义：
$$
\textcolor{blue}{
\mathbf{T}(\mathbf{a})\cdot \mathbf{T}(\mathbf{b}) = \mathbf{a} \cdot \mathbf{b}
}
$$
变换后的两个向量的内积不变。

由定义可以推导出：
$$
\begin{align}
& \mathbf{T}(\mathbf{a})\cdot \mathbf{T}(\mathbf{b}) = \mathbf{a}\mathbf{T}^T\mathbf{T}\mathbf{b}= \mathbf{a} \cdot \mathbf{b} \\
\\
\Rightarrow \quad & \mathbf{T}^T\mathbf{T}=\mathbf{I}
\end{align}
$$
这同时也满足了张量的逆的定义，所以一个正交的张量的逆和转置是一样的，有：
$$
\mathbf{T}_{ortho}^T = \mathbf{T}_{ortho}^{-1}
$$
注意*一个有正交属性的张量，和两个正交的张量是不一样的。*

- 两个正交的张量是在张量空间中，内积为零的两个张量。
- 一个有正交属性的张量，是在向量空间做线性变换时，不改变空间的单位尺度的线性变换，即：

$$
\textcolor{blue}{
det(\mathbf{T})= \pm 1}
$$

如果还不改变空间的朝向，即基的手向，那么这个张量被称作 proper orthogonal，即：
$$
det(\mathbf{T})=  1
$$
A proper orthogonal Tensor 也经常被称作 Rotation Tensor，因为用于转动坐标轴的张量都是 proper orthogonal 的。

## 7.1 使用正交张量转动坐标轴

转动坐标轴是一种比较简单的换基行动。

我们通过对基向量做线性变换来变换坐标轴。

使用张量 $\mathbf{T}$ 对基向量 $\mathbf{e}_i$ 进行变换，得到新的基向量 $\mathbf{e}_i^{'}$，有：
$$
\mathbf{e}_i^{'}=\mathbf{T}(\mathbf{e}_i)
$$
相反的转换通过转置张量进行，有：
$$
\mathbf{e}_i=\mathbf{T}^T(\mathbf{e}_i^{'})
$$

在基向量 $\mathbf{e}_i$ 下，有：
$$
\mathbf{T}=T_{ij} \mathbf{e}_i \otimes \mathbf{e}_j 
= (\mathbf{e}_i \mathbf{T}\mathbf{e}_j) (\mathbf{e}_i \otimes \mathbf{e}_j) 
= (\mathbf{e}_i \cdot \mathbf{e}_j^{'}) (\mathbf{e}_i \otimes \mathbf{e}_j)
$$
未完待续..

# 8. 对称张量和反对称张量

Symmetric Tensors and Skew Tensors

定义：

- 张量是对称的
  $$
  \textcolor{blue}{
  \mathbf{T}=\mathbf{T}^{T}
  }
  $$

- 张量是反对称的
  $$
  \textcolor{blue}{
  \mathbf{T} = -\mathbf{T}^{T}
  }
  $$





他们也是与坐标轴无关的性质。

在笛卡尔坐标系里，用矩阵形式表示，有：

- 对称张量 $\mathbf{S}$
  $$
  \textcolor{blue}{
  \mathbf{S}=
  \begin{pmatrix}
  S_{11} & S_{12} & S_{13} \\
  S_{12} & S_{22} & S_{23} \\
  S_{13} & S_{23} & S_{33} \\
  \end{pmatrix}
  }
  $$

- 反对称张量 $\mathbf{W}$
  $$
  \textcolor{blue}{
  \mathbf{W} =
  \begin{pmatrix}
  0 & W_{12} & W_{13} \\
  - W_{12} & 0 & W_{23} \\
  - W_{13} & -W_{23} & 0 
  \end{pmatrix}}
  $$
  反对称张量没有逆

任何一个张量都可以分解成一个对称张量和一个反对称张量的和。

我们定义算符 $sym()$ 和 $skew()$ 为取某张量的对称和反对称部分，有：
$$
\mathbf{T} = sym(\mathbf{T}) + skew(\mathbf{T}) 
= \frac{1}{2}(\mathbf{T}+\mathbf{T}^T) + \frac{1}{2}(\mathbf{T}-\mathbf{T}^T)
$$
$$
\textcolor{blue}{skew(\mathbf{T})=\frac{1}{2}(\mathbf{T}-\mathbf{T}^T)}
$$



一些对称和反对称张量的性质：

-  $\mathbf{S}:\mathbf{T} = \mathbf{S} : \mathbf{T}^T = \mathbf{S} : \frac{1}{2}(\mathbf{T}+\mathbf{T}^T)$

-  $\mathbf{W}:\mathbf{T} = -\mathbf{W} : \mathbf{T}^T = \mathbf{W} : \frac{1}{2}(-\mathbf{T}^T)$

-  $\mathbf{S}:\mathbf{W} = 0 $

-  $tr(\mathbf{SW})=0$

-  $\mathbf{u}\mathbf{W}\mathbf{u}=0$

-  $det(\mathbf{W})=0$

## 8.1 赝向量

Axial Vectors / Pseudovectors

因为反对称张量里，只有三个独立的数，和一个向量类似。

所以我们想，从反对称张量中，定义出一个向量。

定义：对于反对称张量 $\mathbf{W}$ 的赝向量 $\mathbf{w}$，总有：
$$
\textcolor{blue}{
\begin{align}
& \mathbf{W}\cdot\mathbf{u}=\mathbf{w} \times \mathbf{u} \\
\end{align}
}
$$
根据定义，有：
$$
\begin{align}
W_{ij}
& = \mathbf{e}_i \mathbf{W} \mathbf{e}_j 
= \mathbf{e}_i (\mathbf{w} \times \mathbf{e}_j) 
= \mathbf{e}_i (w_k\mathbf{e}_k \times \mathbf{e}_j) \\
& = \mathbf{e}_i (w_k \varepsilon_{kjm} \mathbf{e}_m) 
= \varepsilon_{kji} w_k 
= - \varepsilon_{ijk} w_k
\end{align}
$$
所以，向量 $\mathbf{w}$ 的系数就可以定下来了，有：
$$
\textcolor{blue}{
\mathbf{w} 
= \begin{pmatrix} W_{32} \\ W_{13} \\ W_{21} \end{pmatrix}}
$$

# 9. 球张量和偏张量

Spherical Tensors and Deviatoric Tensors

定义：对角位置上的元素都一样的对角张量是球张量

任何一个张量都可以分解成一个球张量和一个偏张量的和。

我们定义算符 $sph()$ 和 $dev()$ 为取某张量的球量部分和偏量部分，有：
$$
\textcolor{blue}{
\begin{align}
& \mathbf{T}  = sph(\mathbf{T}) + dev(\mathbf{T})  = \frac{1}{3} \cdot tr(\mathbf{T}) \cdot \mathbf{I} + \big(\mathbf{T} - sph(\mathbf{T})\big)\\
\end{align}}
$$
球张量和偏张量的性质：

- $tr\big(dev(\mathbf{T})\big)=0$
- $sph\big(dev(\mathbf{T})\big)=0$
- $dev(\mathbf{A}): sph(\mathbf{B})=0$

# 10. 正定张量和半正定张量

A Positive Definite Tensor and A Positive Semi-Definite Tensor 

> 严格数学定义：
> $$
> \mathbf{T}: \mathbf{v}\otimes \mathbf{v} > 0
> $$
>


定义：

- 张量 $\mathbf{T}$ 是一个正定张量，当其对任意向量 $\mathbf{v}$，有：

$$
\mathbf{v} \mathbf{T} \mathbf{v} >0
$$

- 张量 $\mathbf{T}$ 是一个半正定张量，当其对任意向量 $\mathbf{v}$，有：

$$
\mathbf{v} \mathbf{T} \mathbf{v} \geq 0
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
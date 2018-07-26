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
- $[tr(\pmb{T})]^2=tr(\pmb{T})\cdot  tr(\pmb{T})= T_{ii}T_{jj}$
- $[tr(\pmb{T})]^3=tr(\pmb{T})\cdot tr(\pmb{T})\cdot  tr(\pmb{T})= T_{ii}T_{jj}T_{kk}$

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

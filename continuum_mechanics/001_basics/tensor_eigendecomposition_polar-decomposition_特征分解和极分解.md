[TOC]

# 1. 特征分解 

特征分解是谱分解的一种。

## 1.1 特征向量和特征值

定义：

- 对一个二阶张量 $\pmb{T}$，总能找到向量 $\hat{\pmb{n}}$ 和标量 $\lambda$ ，使：

$$
\pmb{T}\hat{\pmb{n}} = \lambda \hat{\pmb{n}}
$$
- 这样的向量称作==特征向量== Eigenvector。
- 这样的标量称作==特征值== Eigenvalue。

由于 $\pmb{T}(\alpha\hat{\pmb{n}})=\alpha\pmb{T}(\hat{\pmb{n}})$ 所以讨论向量的模的大小没有意义，所以总可以认为 $\hat{\pmb{n}}$ 是个单位向量。

## 1.2 特征方程

由定义式可得：
$$
(\pmb{T}-\lambda \pmb{I})\hat{\pmb{n}}=\pmb{o}
$$

这是一个齐次线性方程组。

> ### 克莱默法则
>
> 齐次线性方程组 $\pmb{K}\pmb{x}=\pmb{o}$
>
> - $det (\pmb{K}) = 0 \Rightarrow $ 方程组除了零解，还存在非零解
> - $det (\pmb{K}) \neq 0 \Rightarrow $ 方程组只有零解
>
> 齐次线性方程组 $\pmb{K}\pmb{x}=\pmb{f}$
>
> - $det (\pmb{K}) = 0 \Rightarrow $ 方程组无解
> - $det (\pmb{K}) \neq 0 \Rightarrow $ 方程组有唯一解

故对于这个齐次线性方程组，要让它有解，当且仅当：

$$
det (\pmb{T}-\lambda \pmb{I}) =0
$$

这是一个关于 $\lambda$ 的方程。

由于它是三维的，所以它是一个一元三次方程。

这个方程称作二阶张量的==特征方程==。

## 1.3 解特征方程

一般情况下一元三次方程有三个解，即三个特征值。

一个特征值对应一个特征向量。

所以，三维空间下的二阶张量有三个特征值和三个特征向量。

该方程继续打开，得到特征方程的另一个表现形式，也是最常见的：
$$
\begin{align}
& \lambda ^3 - I_1 \lambda^2+I_2\lambda -I_3=0 \\
\\
with \quad I_1 & = tr(\pmb{T}) = T_{ii}
\\ \\ 
I_2 & = \frac{1}{2} [(tr(\pmb{T}))^2 - tr(\pmb{T}^2)]= \frac{1}{2}(T_{ii} T_{jj} - T_{ij}T_{ji}) \\ \\
I_3 & = det(\pmb{T})=  \varepsilon_{ijk} T_{1i}T_{2j}T_{3k}
\end{align}
$$

$I_1, I_2, I_3$ 称作==张量不变量==。

解这个方程，得到的三个根 $\lambda_1, \lambda_2, \lambda_3$  代回 $\pmb{T}-\lambda \pmb{I}$，便有：
$$
\begin{align}
 (\pmb{T}-\lambda_1\pmb{I}) \hat{\pmb{n}_1} &= \pmb{o}  \\
\\
\Rightarrow 
 \begin{pmatrix}
T_{11}-\lambda_1 & T_{12} & T_{13} \\
T_{21} & T_{22}-\lambda_1 & T_{23} \\
T_{31} & T_{32} & T_{33}-\lambda_1 \\
\end{pmatrix}
\begin{pmatrix}
\hat{n}_{1,1} \\  \hat{n}_{1,2} \\ \hat{n}_{1,3}
\end{pmatrix}
& = 
\begin{pmatrix}
0 \\ 0 \\0
\end{pmatrix}
\end{align}
$$
该方程系数矩阵的行列式为零，他们是线性相关的。

我们需要另一个独立条件。

由于 $\hat{\pmb{n}}$ 是单位向量，有：
$$
\hat{n}_{1,1} ^2  + \hat{n}_{1,2}^2 + \hat{n}_{1,3}^2 =1
$$
三个独立方程，可以求出 $\hat{n}_{1,1}, \hat{n}_{1,2}, \hat{n}_{1,3}$。

这样我们就能求得特征值 $\lambda_1$ 对应的特征向量  $\hat{\pmb{n}}_1$ 了。

## 1.4 特征向量的正交性

对称张量的特征向量是两两正交的，他们组成了一个正交基。

令张量 $\pmb{T}$ 的两个任意特征值为 $\lambda_1, \lambda_2$ 。

其对应的特征向量为 $\hat{\pmb{n}}_1, \hat{\pmb{n}}_2$

根据定义，有：
$$
\begin{align}
    & \begin{cases}
    \pmb{T}\hat{\pmb{n}}_1 = \lambda_1 \hat{\pmb{n}}_1 \\
    \pmb{T}\hat{\pmb{n}}_2 = \lambda_2 \hat{\pmb{n}}_2
    \end{cases} 
\\ \\
\Rightarrow 
    & \begin{cases}
    \hat{\pmb{n}}_2\pmb{T}\hat{\pmb{n}}_1 = \hat{\pmb{n}}_2\lambda_1 \hat{\pmb{n}}_1 \\
    \hat{\pmb{n}}_1\pmb{T}\hat{\pmb{n}}_2 = \hat{\pmb{n}}_1\lambda_2 \hat{\pmb{n}}_2
    \end{cases}
\\ \\
\Rightarrow 
    & \begin{cases}
    \hat{n}_{2,k} T_{ij} \hat{n}_{1,l} 
    \pmb{e}_k(\pmb{e}_i \otimes \pmb{e}_j)\pmb{e}_l
    = \hat{\pmb{n}}_2\lambda_1 \hat{\pmb{n}}_1 \\
     \hat{n}_{1,k} T_{ij} \hat{n}_{2,l} 
    \pmb{e}_k(\pmb{e}_i \otimes \pmb{e}_j)\pmb{e}_l
    = \hat{\pmb{n}}_2\lambda_2 \hat{\pmb{n}}_1 \\
    \end{cases}
\\ \\
\Rightarrow 
    & \begin{cases}
    \hat{n}_{2,k} T_{ij} \hat{n}_{1,l} 
    \delta_{ki} \delta{jl}
    = \hat{\pmb{n}}_2\lambda_1 \hat{\pmb{n}}_1 \\
     \hat{n}_{1,k} T_{ij} \hat{n}_{2,l} 
   \delta_{ki} \delta{jl}
    = \hat{\pmb{n}}_2\lambda_2 \hat{\pmb{n}}_1 \\
    \end{cases}    
    
\\ \\
\Rightarrow 
    & \begin{cases}
    \hat{n}_{2,i} T_{ij} \hat{n}_{1,j} 

    = \hat{\pmb{n}}_2\lambda_1 \hat{\pmb{n}}_1 \\
     \hat{n}_{1,i} T_{ij} \hat{n}_{2,j} 

    = \hat{\pmb{n}}_2\lambda_2 \hat{\pmb{n}}_1 \\
    \end{cases}    
        
\\ \\
\Rightarrow 
    & \begin{cases}
    \hat{n}_{2,i} T_{ij} \hat{n}_{1,j} 

    = \hat{\pmb{n}}_2\lambda_1 \hat{\pmb{n}}_1 \\
     \hat{n}_{2,i} T_{ji} \hat{n}_{1,j} 

    = \hat{\pmb{n}}_2\lambda_2 \hat{\pmb{n}}_1 \\
    \end{cases}       
\end{align}
$$
上式减下式，有：
$$
(T_{ij}-T_{ji}) \hat{n}_{2,i} \hat{n}_{1,j} 
= (\lambda_1-\lambda_2)\hat{\pmb{n}}_1 \hat{\pmb{n}}_2
$$
由于 $\pmb{T}$ 是一个对称张量，有：
$$
T_{ij} = T_{ji}
$$
又
$$
\lambda_1 \neq \lambda_2
$$
故：
$$
\hat{\pmb{n}}_1 \hat{\pmb{n}}_2=0 
\Rightarrow 
\hat{\pmb{n}}_1 \bot \hat{\pmb{n}}_2
$$
显然，**对称张量**和**特征值不同**是这个推导的核心。

## 1.5 张量的特征值表示

可以用张量的特征值和特征向量来表示一个==对称的张量==。

这个本质上是一个换基的操作：将原来的基换成特征向量组成的基

即形如 $$\pmb{T}^{\hat{\pmb{n}}}=\sum_{i=1}^3 \lambda_{(i)} \hat{\pmb{n}}_{(i)} \otimes \hat{\pmb{n}}_{(i)}$$ 的张量和原来的 $\pmb{T}^{\pmb{e}}$ 一样，都满足 $\pmb{T}\hat{\pmb{n}} = \lambda \hat{\pmb{n}}$

这里打括号的 $(i)$ 代表了不按照爱因斯特求和约定进行求和，所以也不需遵循指标不超过两个的规定。

$\hat{\pmb{n}}_{(i)}$ 代表任意的特征向量；$\hat{\pmb{n}}_{(k)}$ 代表特定的特征向量。

将之代入定义式，有：
$$
\begin{align}
右边 & = \lambda \hat{\pmb{n}} = \lambda_{(k)}  \hat{\pmb{n}} _{(k)}  
\\ \\
左边 & = \pmb{T}\hat{\pmb{n}} 
= \sum_{i=1}^3 \lambda_{(i)} \hat{\pmb{n}}_{(i)} \otimes \hat{\pmb{n}}_{(i)} [\hat{\pmb{n}}_{(k)}] \\
&= \sum_{i=1}^3 \lambda_{(i)} \hat{\pmb{n}}_{(i)} [ \hat{\pmb{n}}_{(i)} \cdot\hat{\pmb{n}}_{(k)}]
\end{align}
$$
由于不同的单位向量正交，所以这里也可以使用 Kronecker Delta，所以 $i=k$, 所有 $i \neq k$ 的项都是零，有：
$$
\begin{align}
 左边 & 
= \sum_{i=1}^3 \lambda_{(i)} \hat{\pmb{n}}_{(i)} \delta_{ki}
= \lambda_{(k)}\hat{\pmb{n}}_{(k)}  \\
 Q.E.D 
\end{align}
$$

所以，用特征值表示的张量为：
$$
\begin{align}
\pmb{T}& =\sum_{i=1}^3 \lambda_{(i)} \hat{\pmb{n}}_{(i)} \otimes \hat{\pmb{n}}_{(i)} 
\\ \\
& = 
\begin{array}{c c c}
\lambda_1  \hat{\pmb{n}}_1 \otimes \hat{\pmb{n}}_1 & + 0  & + 0 \\
+0 & \lambda_2  \hat{\pmb{n}}_2 \otimes \hat{\pmb{n}}_2 & + 0 \\
+0 & +0 & \lambda_3  \hat{\pmb{n}}_3 \otimes \hat{\pmb{n}}_3 & \\
\end{array}
\end{align}
$$
这个表达式的矩阵形式就是：
$$
\pmb{T}^{\hat{\pmb{n}}} = 
\begin{pmatrix}
\lambda_1 & 0  & 0 \\
0 & \lambda_2 & 0 \\
0 & 0 & \lambda_3
\end{pmatrix}
$$
相对于原来的基，换基大成功！
$$
\pmb{T}^{{\pmb{e}}} = 
\begin{pmatrix}
T_{11} & T_{12}  & T_{13} \\
T_{21} & T_{22}  & T_{23} \\
T_{31} & T_{32}  & T_{33} \\
\end{pmatrix}
$$

使用特征向量作为基，原张量的的不变量变得很简单，有：
$$
\begin{align}
I_1 & = tr(\pmb{T}) = tr(\pmb{T}^{\hat{\pmb{n}}}) = \lambda_1+\lambda_2+\lambda_3 \\
\\
I_2 & =  \frac{1}{2} [(tr(\pmb{T}))^2 - tr(\pmb{T}^2)]= \lambda_1\lambda_2 + \lambda_2\lambda_3 + \lambda_3\lambda_1 \\
\\
I_3 & = det(\pmb{T})=\lambda_1\lambda_2\lambda_3
\end{align}
$$

## 1.6 特征值相同的情况

如 1.4 中所说，特征向量的正交性是建立在特征值不同的基础上的。

对式 
$$
(T_{ij}-T_{ji}) \hat{n}_{2,i} \hat{n}_{1,j} = (\lambda_1-\lambda_2)\hat{\pmb{n}}_1 \hat{\pmb{n}}_2
$$

如果 $\lambda_1 = \lambda_2$，就可以得到许许多多的 $\hat{\pmb{n}}_1, \hat{\pmb{n}}_2$ ，令他们为一个集合。

在这个集合中总能找到两个特殊特征向量 $\hat{\pmb{n}}_1^*, \hat{\pmb{n}}_2^*$，满足：
$$
\hat{\pmb{n}}_1^* \bot \hat{\pmb{n}}_2^*
$$
于是，可以接着使用这两个正交的向量和另一个和这两个向量分别正交的向量作为基，得到：
$$
\pmb{T}^{\hat{\pmb{n}}^*} = 
\begin{pmatrix}
\lambda_1 & 0  & 0 \\
0 & \lambda_2=\lambda_1 & 0 \\
0 & 0 & \lambda_3
\end{pmatrix}
= \lambda_1\pmb{I}+(\lambda_3-\lambda_1)\hat{\pmb{n}}_3 \otimes\hat{\pmb{n}}_3
$$
最终的表达式里并没有出现 $\hat{\pmb{n}}_1, \hat{\pmb{n}}_2$，可以说是一定程度避开了对特征向量的讨论。

如果 $\lambda_1 = \lambda_2 = \lambda_3$，则相应的有：
$$
\pmb{T}^{\hat{\pmb{n}}^*} = 
\begin{pmatrix}
\lambda_1 & 0  & 0 \\
0 & \lambda_2=\lambda_1 & 0 \\
0 & 0 & \lambda_3=\lambda_1
\end{pmatrix}
= \lambda_1\pmb{I}
$$

我们获得了一个 spherical tensor。

## 1.7 正定的张量


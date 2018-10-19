[TOC]

---

特征分解是谱分解的一种。

# 特征向量和特征值

定义：

- 对一个二阶张量 $\mathbf{T}$，总能找到向量 $\hat{\mathbf{n}}$ 和标量 $\lambda$ ，使：

$$
\textcolor{green}{
\mathbf{T}\cdot \underbrace{\hat{\mathbf{n}}}_{Eigenvector} = \underbrace{\lambda}_{Eigenvalue} \cdot \hat{\mathbf{n}}
}
$$
- 这样的向量称作==特征向量== Eigenvector。
- 这样的标量称作==特征值== Eigenvalue。

由于 $\mathbf{T}(\alpha\hat{\mathbf{n}})=\alpha\mathbf{T}(\hat{\mathbf{n}})$ 所以讨论向量的模的大小没有意义，所以总可以认为 $\hat{\mathbf{n}}$ 是个单位向量。

# 特征方程

由定义式可得：
$$
\textcolor{green}{
(\mathbf{T}-\lambda \mathbf{I})\hat{\mathbf{n}}=\mathbf{0}
}
$$

这是一个齐次线性方程组。

> ## 克莱默法则
>
> 齐次线性方程组 $\mathbf{K}\mathbf{x}=\mathbf{o}$
>
> - $det (\mathbf{K}) = 0 \Rightarrow $ 方程组除了零解，还存在非零解
> - $det (\mathbf{K}) \neq 0 \Rightarrow $ 方程组只有零解
>
> 齐次线性方程组 $\mathbf{K}\mathbf{x}=\mathbf{f}$
>
> - $det (\mathbf{K}) = 0 \Rightarrow $ 方程组无解
> - $det (\mathbf{K}) \neq 0 \Rightarrow $ 方程组有唯一解

故对于这个齐次线性方程组，要让它有解，当且仅当：

$$
\textcolor{green}{
det (\mathbf{T}-\lambda \mathbf{I}) =0
}
$$

这是一个关于 $\lambda$ 的方程。

由于它是三维的，所以它是一个一元三次方程。

这个方程称作二阶张量的==特征方程==。

#  解特征方程

一般情况下一元三次方程有三个解，即三个特征值。

一个特征值对应一个特征向量。

所以，三维空间下的二阶张量有三个特征值和三个特征向量。

该方程继续打开，得到特征方程的另一个表现形式，也是最常见的：
$$
\textcolor{green}{
\begin{align}
& \lambda ^3 - I_1 \lambda^2+I_2\lambda -I_3=0 \\
\\
with \quad I_1 & = tr(\mathbf{T}) = T_{ii}
\\ \\ 
I_2 & = \frac{1}{2} [(tr(\mathbf{T}))^2 - tr(\mathbf{T}^2)]= \frac{1}{2}(T_{ii} T_{jj} - T_{ij}T_{ji}) \\ \\
I_3 & = det(\mathbf{T})=  \varepsilon_{ijk} T_{1i}T_{2j}T_{3k}
\end{align}
}
$$

## 张量不变量 Tensor Invariant

$I_1, I_2, I_3$ 称作==张量不变量==。

解这个方程，得到的三个根 $\lambda_1, \lambda_2, \lambda_3$  代回 $\mathbf{T}-\lambda \mathbf{I}$，便有：
$$
\begin{align}
 (\mathbf{T}-\lambda_1\mathbf{I}) \hat{\mathbf{n}_1} &= \mathbf{o}  \\
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

由于 $\hat{\mathbf{n}}$ 是单位向量，有：
$$
\hat{n}_{1,1} ^2  + \hat{n}_{1,2}^2 + \hat{n}_{1,3}^2 =1
$$
三个独立方程，可以求出 $\hat{n}_{1,1}, \hat{n}_{1,2}, \hat{n}_{1,3}$。

这样我们就能求得特征值 $\lambda_1$ 对应的特征向量  $\hat{\mathbf{n}}_1$ 了。

# 特征向量的正交性

对称张量的特征向量是两两正交的，他们组成了一个正交基。

令张量 $\mathbf{T}$ 的两个任意特征值为 $\lambda_1, \lambda_2$ 。

其对应的特征向量为 $\hat{\mathbf{n}}_1, \hat{\mathbf{n}}_2$

根据定义，有：
$$
\begin{align}
    & \begin{cases}
    \mathbf{T}\hat{\mathbf{n}}_1 = \lambda_1 \hat{\mathbf{n}}_1 \\
    \mathbf{T}\hat{\mathbf{n}}_2 = \lambda_2 \hat{\mathbf{n}}_2
    \end{cases} 
\\ \\
\Rightarrow 
    & \begin{cases}
    \hat{\mathbf{n}}_2\mathbf{T}\hat{\mathbf{n}}_1 = \hat{\mathbf{n}}_2\lambda_1 \hat{\mathbf{n}}_1 \\
    \hat{\mathbf{n}}_1\mathbf{T}\hat{\mathbf{n}}_2 = \hat{\mathbf{n}}_1\lambda_2 \hat{\mathbf{n}}_2
    \end{cases}
\\ \\
\Rightarrow 
    & \begin{cases}
    \hat{n}_{2,k} T_{ij} \hat{n}_{1,l} 
    \mathbf{e}_k(\mathbf{e}_i \otimes \mathbf{e}_j)\mathbf{e}_l
    = \hat{\mathbf{n}}_2\lambda_1 \hat{\mathbf{n}}_1 \\
     \hat{n}_{1,k} T_{ij} \hat{n}_{2,l} 
    \mathbf{e}_k(\mathbf{e}_i \otimes \mathbf{e}_j)\mathbf{e}_l
    = \hat{\mathbf{n}}_2\lambda_2 \hat{\mathbf{n}}_1 \\
    \end{cases}
\\ \\
\Rightarrow 
    & \begin{cases}
    \hat{n}_{2,k} T_{ij} \hat{n}_{1,l} 
    \delta_{ki} \delta{jl}
    = \hat{\mathbf{n}}_2\lambda_1 \hat{\mathbf{n}}_1 \\
     \hat{n}_{1,k} T_{ij} \hat{n}_{2,l} 
   \delta_{ki} \delta{jl}
    = \hat{\mathbf{n}}_2\lambda_2 \hat{\mathbf{n}}_1 \\
    \end{cases}    
    
\\ \\
\Rightarrow 
    & \begin{cases}
    \hat{n}_{2,i} T_{ij} \hat{n}_{1,j} 

    = \hat{\mathbf{n}}_2\lambda_1 \hat{\mathbf{n}}_1 \\
     \hat{n}_{1,i} T_{ij} \hat{n}_{2,j} 

    = \hat{\mathbf{n}}_2\lambda_2 \hat{\mathbf{n}}_1 \\
    \end{cases}    
        
\\ \\
\Rightarrow 
    & \begin{cases}
    \hat{n}_{2,i} T_{ij} \hat{n}_{1,j} 

    = \hat{\mathbf{n}}_2\lambda_1 \hat{\mathbf{n}}_1 \\
     \hat{n}_{2,i} T_{ji} \hat{n}_{1,j} 

    = \hat{\mathbf{n}}_2\lambda_2 \hat{\mathbf{n}}_1 \\
    \end{cases}       
\end{align}
$$
上式减下式，有：
$$
(T_{ij}-T_{ji}) \hat{n}_{2,i} \hat{n}_{1,j} 
= (\lambda_1-\lambda_2)\hat{\mathbf{n}}_1 \hat{\mathbf{n}}_2
$$
由于 $\mathbf{T}$ 是一个对称张量，有：
$$
T_{ij} = T_{ji}
$$
又
$$
\lambda_1 \neq \lambda_2
$$
故：
$$
\hat{\mathbf{n}}_1 \hat{\mathbf{n}}_2=0 
\Rightarrow 
\hat{\mathbf{n}}_1 \bot \hat{\mathbf{n}}_2
$$
显然，**对称张量**和**特征值不同**是这个推导的核心。

# 张量的特征值表示

可以用张量的特征值和特征向量来表示一个==对称的张量==。

这个本质上是一个换基的操作：将原来的基换成特征向量组成的基

即形如 $$\mathbf{T}^{\hat{\mathbf{n}}}=\sum_{i=1}^3 \lambda_{(i)} \hat{\mathbf{n}}_{(i)} \otimes \hat{\mathbf{n}}_{(i)}$$ 的张量和原来的 $\mathbf{T}^{\mathbf{e}}$ 一样，都满足 $\mathbf{T}\hat{\mathbf{n}} = \lambda \hat{\mathbf{n}}$

这里打括号的 $(i)$ 代表了不按照爱因斯特求和约定进行求和，所以也不需遵循指标不超过两个的规定。

$\hat{\mathbf{n}}_{(i)}$ 代表任意的特征向量；$\hat{\mathbf{n}}_{(k)}$ 代表特定的特征向量。

将之代入定义式，有：
$$
\begin{align}
右边 & = \lambda \hat{\mathbf{n}} = \lambda_{(k)}  \hat{\mathbf{n}} _{(k)}  
\\ \\
左边 & = \mathbf{T}\hat{\mathbf{n}} 
= \sum_{i=1}^3 \lambda_{(i)} \hat{\mathbf{n}}_{(i)} \otimes \hat{\mathbf{n}}_{(i)} [\hat{\mathbf{n}}_{(k)}] \\
&= \sum_{i=1}^3 \lambda_{(i)} \hat{\mathbf{n}}_{(i)} [ \hat{\mathbf{n}}_{(i)} \cdot\hat{\mathbf{n}}_{(k)}]
\end{align}
$$
由于不同的单位向量正交，所以这里也可以使用 Kronecker Delta，所以 $i=k$, 所有 $i \neq k$ 的项都是零，有：
$$
\begin{align}
 左边 & 
= \sum_{i=1}^3 \lambda_{(i)} \hat{\mathbf{n}}_{(i)} \delta_{ki}
= \lambda_{(k)}\hat{\mathbf{n}}_{(k)}  \\
 Q.E.D 
\end{align}
$$

所以，用特征值表示的张量为：
$$
\textcolor{green}{
\begin{align}
\mathbf{T}& =\sum_{i=1}^3 \lambda_{(i)} \hat{\mathbf{n}}_{(i)} \otimes \hat{\mathbf{n}}_{(i)} 
\\ \\
& = 
\begin{array}{c c c}
\lambda_1  \hat{\mathbf{n}}_1 \otimes \hat{\mathbf{n}}_1 & + 0  & + 0 \\
+0 & \lambda_2  \hat{\mathbf{n}}_2 \otimes \hat{\mathbf{n}}_2 & + 0 \\
+0 & +0 & \lambda_3  \hat{\mathbf{n}}_3 \otimes \hat{\mathbf{n}}_3 & \\
\end{array}
\end{align}
}
$$
这个表达式的矩阵形式就是：
$$
\textcolor{green}{
\mathbf{T}^{\hat{\mathbf{n}}} = 
\begin{pmatrix}
\lambda_1 & 0  & 0 \\
0 & \lambda_2 & 0 \\
0 & 0 & \lambda_3
\end{pmatrix}
}
$$
相对于原来的基，换基大成功！
$$
\mathbf{T}^{{\mathbf{e}}} = 
\begin{pmatrix}
T_{11} & T_{12}  & T_{13} \\
T_{21} & T_{22}  & T_{23} \\
T_{31} & T_{32}  & T_{33} \\
\end{pmatrix}
$$

使用特征向量作为基，原张量的的不变量变得很简单，有：
$$
\textcolor{green}{
\begin{align}
I_1 & = \lambda_1+\lambda_2+\lambda_3 \\
\\
I_2 & =  \lambda_1\lambda_2 + \lambda_2\lambda_3 + \lambda_3\lambda_1 \\
\\
I_3 & =\lambda_1\lambda_2\lambda_3
\end{align}
}
$$

# 特征值相同的情况

如 1.4 中所说，特征向量的正交性是建立在特征值不同的基础上的。

对式 
$$
(T_{ij}-T_{ji}) \hat{n}_{2,i} \hat{n}_{1,j} = (\lambda_1-\lambda_2)\hat{\mathbf{n}}_1 \hat{\mathbf{n}}_2
$$

如果 $\lambda_1 = \lambda_2$，就可以得到许许多多的 $\hat{\mathbf{n}}_1, \hat{\mathbf{n}}_2$ ，令他们为一个集合。

在这个集合中总能找到两个特殊特征向量 $\hat{\mathbf{n}}_1^*, \hat{\mathbf{n}}_2^*$，满足：
$$
\hat{\mathbf{n}}_1^* \bot \hat{\mathbf{n}}_2^*
$$
于是，可以接着使用这两个正交的向量和另一个和这两个向量分别正交的向量作为基，得到：
$$
\mathbf{T}^{\hat{\mathbf{n}}^*} = 
\begin{pmatrix}
\lambda_1 & 0  & 0 \\
0 & \lambda_2=\lambda_1 & 0 \\
0 & 0 & \lambda_3
\end{pmatrix}
= \lambda_1\mathbf{I}+(\lambda_3-\lambda_1)\hat{\mathbf{n}}_3 \otimes\hat{\mathbf{n}}_3
$$
最终的表达式里并没有出现 $\hat{\mathbf{n}}_1, \hat{\mathbf{n}}_2$，可以说是一定程度避开了对特征向量的讨论。

如果 $\lambda_1 = \lambda_2 = \lambda_3$，则相应的有：
$$
\mathbf{T}^{\hat{\mathbf{n}}^*} = 
\begin{pmatrix}
\lambda_1 & 0  & 0 \\
0 & \lambda_2=\lambda_1 & 0 \\
0 & 0 & \lambda_3=\lambda_1
\end{pmatrix}
= \lambda_1\mathbf{I}
$$

我们获得了一个 spherical tensor。

# 特征分解与正定性

由张量正定的定义

>  张量 $\mathbf{T}$ 是一个正定张量，当其对任意向量 $\mathbf{v}$，有：
>  $$
>  \mathbf{v} \mathbf{T} \mathbf{v} >0
>  $$
>

一个张量和它的特征向量，有：
$$
\begin{align}
& \mathbf{T}\hat{\mathbf{n}} = \lambda \hat{\mathbf{n}} \\
\Rightarrow \quad 
& \hat{\mathbf{n}}\mathbf{T}\hat{\mathbf{n}} = \hat{\mathbf{n}}\lambda \hat{\mathbf{n}} =\lambda
\end{align}
$$
我们可以得到结论：一个正定张量的特征值都是正值。

还有一个结论：如果非零的特征向量，对应特征值为零，该张量是一个奇异张量。

# 特征值的极值性

一个张量的特征值，总是它的矩阵中对角线上，能出现的最大值和最小值。

我们给张量选定一组非特征向量的正交基 $\mathbf{e}_1^*, \mathbf{e}_2^*,\mathbf{e}_3^*$。

我们总可以用特征向量组成的基来表达选定的这组一般基，如：
$$
\mathbf{e}_1^* 
= \alpha_1 \hat{\mathbf{n}}_1 + \alpha_2 \hat{\mathbf{n}}_2 + \alpha_3 \hat{\mathbf{n}}_3
$$
作为单位向量，有：
$$
|\mathbf{e}_1^*|^2
= \alpha_1^2+\alpha_2^2+\alpha_3^2 =1
$$
在一般基下，一个张量矩阵的元素总可以写成：
$$
T_{ij}^*
=\mathbf{e}_i^*\mathbf{T}\mathbf{e}_j^*
= [\mathbf{e}_i^*]^T[\mathbf{T}][\mathbf{e}_{j}]
$$
我们分析元素 $T_{11}^*$ ，有：
$$
\begin{align}
T_{11}^*
& = [\mathbf{e}_1^*]^T[\mathbf{T}][\mathbf{e}_{1}]
= \begin{pmatrix} \alpha_1 & \alpha_2 & \alpha_3\end{pmatrix}
 \begin{pmatrix} \lambda_1 & 0&0 \\ 0 & \lambda_2 & 0 \\ 0& 0 & \lambda_3\end{pmatrix}
 \begin{pmatrix} \alpha_1 \\ \alpha_2 \\ \alpha_3\end{pmatrix} \\
 &= \alpha_1^2 \lambda_1+\alpha_2^2 \lambda_2+\alpha_3^2 \lambda_3
 \end{align}
$$
令 $\lambda_1 \geq \lambda_2 \geq \lambda_3$，有：
$$
\begin{align}
& \begin{cases}
\lambda_1 = \lambda_1(\alpha_1^2+\alpha_2^2+\alpha_3^2) \geq T_{11}^* \\
\lambda_3 = \lambda_3(\alpha_1^2+\alpha_2^2+\alpha_3^2) \leq T_{11}^* \\
\end{cases}\\
\\
Q.E.D &
\end{align}
$$

# 凯莱-哈密顿定理

The Cayley-Hamilton Theorem

凯莱-哈密顿定理是特征方程的推广。

> 特征方程
> $$
> \lambda ^3 - I_1 \lambda^2+I_2\lambda -I_3=0 
> $$
>

对任意的张量（不要求对称）$\mathbf{T}$，总有：
$$
\begin{align}
& \mathbf{T}^3 - I_A \cdot \mathbf{T}^2 + I_B\cdot \mathbf{T} -I_C \cdot \mathbf{I} = \mathbf{o} \\
\\
with \quad 
& \mathbf{I}_A = tr(\mathbf{T}) \\
\\
& \mathbf{I}_B = \frac{1}{2} \Big( [tr(\mathbf{T})]^2-tr(\mathbf{T}^2) \Big)\\
\\
& \mathbf{I}_C = \frac{1}{3} \Big( tr(\mathbf{T^3}) + \frac{3}{2} tr(\mathbf{T})tr(\mathbf{T^2}) + \frac{1}{2}[tr(\mathbf{T})]^3 \Big)
\end{align}
$$

# 偏量不变量

Deviatoric Invariants

我们可以对偏张量做特征分解。

对张量的 $\mathbf{T}$ 的偏量部分 $\mathbf{T}_{dev}$ 部分做特征分解，得到对应的特征值 $s$ ，偏量不变量 $J_1, J_2, J_3$，和偏量的特征方程：
$$
\textcolor{green}{
det \Big( dev(\mathbf{T})- \eta\mathbf{I}\Big) =0 \\
}
$$

$$
\textcolor{green}{
\begin{align}
& \eta^3 - J_1 \eta^2+J_2\eta -J_3 =0 \\
\\
with \quad 

& J_1  = tr \Big(dev(\mathbf{T})\Big)=0 \\
\\
& J_2 = \eta_1\eta_2+\eta_2\eta_3+\eta_3\eta_1 
\\
\\
& J_3 = \eta_1\eta_2\eta_3 \\
\end{align}
}
$$

> 张量不变量
> $$
> \begin{align}
> & \lambda ^3 - I_1 \lambda^2+I_2\lambda -I_3=0 \\
> \\
> with \quad I_1 & = tr(\mathbf{T}) = T_{ii}
> \\ \\ 
> I_2 & = \frac{1}{2} [(tr(\mathbf{T}))^2 - tr(\mathbf{T}^2)]= \frac{1}{2}(T_{ii} T_{jj} - T_{ij}T_{ji}) \\ \\
> I_3 & = det(\mathbf{T})=  \varepsilon_{ijk} T_{1i}T_{2j}T_{3k}
> \end{align}
> $$
>

# 同轴的张量

Coaxial Tensors

特征向量相同的张量，称作同轴的张量。

张量同轴的充要条件时：
$$
\textcolor{green}{
\mathbf{A} \mathbf{B} = \mathbf{B} \mathbf{A}
}
$$
一个张量和它的逆是同轴的，因为：
$$
\mathbf{T}\mathbf{T}^{-1} = \mathbf{T}^{-1}\mathbf{T}
$$

# 张量的极分解

Polar Decomposition of Tensors

任一非奇异二阶张量 $\mathbf{T}$，可以写成一个 Rotation Tensor $\mathbf{R}$ 和另一个张量 $\mathbf{U}$ 的乘积的形式，有：
$$
\textcolor{green}{
\mathbf{T} = \underbrace{\mathbf{R}}_{Rotation}\cdot\underbrace{\mathbf{U}}_{Another}
}
$$
也就是对一个向量，先做一步变换 $\mathbf{U}$，再做一步旋转 $\mathbf{R}$。

这个分解并不是唯一的。

我们应尽量选一个对称矩阵做 $\mathbf{U}$ 。

考虑由非奇异张量构成的张量 $$\mathbf{T}^T\mathbf{T}$$，它是一个正定的张量， 因为：
$$
\mathbf{u}\mathbf{T}^T\mathbf{T}\mathbf{u} 
=\mathbf{T}\mathbf{u} \cdot \mathbf{T}\mathbf{u} = |\mathbf{T}\mathbf{u}|^2\cdot 1>0
$$
由于 $\mathbf{T}^T\mathbf{T}$ 肯定是个对称张量，其根也是对称张量，我们可以取：
$$
\mathbf{U} = (\mathbf{T}^T \mathbf{T})^{1/2}
$$
我们现在来看在 $\mathbf{U}$ 确定下来的情况下，对应的 $\mathbf{R}$ 是怎么样的，有：
$$
\begin{align}
\mathbf{R}^T\mathbf{R} & = (\mathbf{T}\mathbf{U}^{-1})^T(\mathbf{T}\mathbf{U}^{-1}) = \mathbf{U}^{-T}\mathbf{T}^T\mathbf{T}\mathbf{U^{-1}} = \mathbf{U}^{-T}\mathbf{U}^2\mathbf{U}^{-1} \\
& =  (\mathbf{U}^{-T}\mathbf{U})(\mathbf{U}\mathbf{U}^{-1})=\mathbf{I}
\end{align}
$$
所以，在 $\mathbf{U}$ 取 $(\mathbf{T}^T \mathbf{T})^{1/2}$ 时，$\mathbf{R}$ 一定是正交的。

又  $det(\mathbf{R})= \frac{det(\mathbf{T})}{det (\mathbf{U})}=1>0$ ，所以 $\mathbf{R}$ 一定 proper orthogonal。

还可以证明这样的分解一定是唯一的。

总的来看，一个张量的极分解就是：
$$
\textcolor{green}{
\mathbf{T}= \mathbf{R} \mathbf{U}  =\mathbf{R} (\mathbf{T}^T\mathbf{T} )^{1/2}}
$$

---

另一种差不多的分解方式是：
$$
\textcolor{green}{
\mathbf{T}= \mathbf{V} \mathbf{R} = (\mathbf{T}\mathbf{T}^T)^{1/2}\mathbf{R}
}
$$

## 柯西-格林张量

Cauchy-Green Tensors

上面这两种分解得到的张量，分别称作 左/右柯西-格林张量。




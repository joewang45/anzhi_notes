[TOC]

---

特征分解是谱分解的一种。

# 1. 特征向量和特征值

定义：

- 对一个二阶张量 $\pmb{T}$，总能找到向量 $\hat{\pmb{n}}$ 和标量 $\lambda$ ，使：

$$
\pmb{T}\hat{\pmb{n}} = \lambda \hat{\pmb{n}}
$$
- 这样的向量称作==特征向量== Eigenvector。
- 这样的标量称作==特征值== Eigenvalue。

由于 $\pmb{T}(\alpha\hat{\pmb{n}})=\alpha\pmb{T}(\hat{\pmb{n}})$ 所以讨论向量的模的大小没有意义，所以总可以认为 $\hat{\pmb{n}}$ 是个单位向量。

# 2. 特征方程

由定义式可得：
$$
(\pmb{T}-\lambda \pmb{I})\hat{\pmb{n}}=\pmb{o}
$$

这是一个齐次线性方程组。

> ## 克莱默法则
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

# 3. 解特征方程

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

## 张量不变量 Tensor Invariant

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

# 4. 特征向量的正交性

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

# 5. 张量的特征值表示

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

# 6. 特征值相同的情况

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

# 7. 特征分解与正定性

由张量正定的定义

>  张量 $\pmb{T}$ 是一个正定张量，当其对任意向量 $\pmb{v}$，有：
>  $$
>  \pmb{v} \pmb{T} \pmb{v} >0
>  $$
>

一个张量和它的特征向量，有：
$$
\begin{align}
& \pmb{T}\hat{\pmb{n}} = \lambda \hat{\pmb{n}} \\
\Rightarrow \quad 
& \hat{\pmb{n}}\pmb{T}\hat{\pmb{n}} = \hat{\pmb{n}}\lambda \hat{\pmb{n}} =\lambda
\end{align}
$$
我们可以得到结论：一个正定张量的特征值都是正值。

还有一个结论：如果非零的特征向量对应特征值为零，该张量是一个奇异张量。

# 8. 特征值的极值性

一个张量的特征值，总是它的矩阵中对角线上，能出现的最大值和最小值。

我们给张量选定一组非特征向量的正交基 $\pmb{e}_1^*, \pmb{e}_2^*,\pmb{e}_3^*$。

我们总可以用特征向量组成的基来表达选定的这组一般基，如：
$$
\pmb{e}_1^* 
= \alpha_1 \hat{\pmb{n}}_1 + \alpha_2 \hat{\pmb{n}}_2 + \alpha_3 \hat{\pmb{n}}_3
$$
作为单位向量，有：
$$
|\pmb{e}_1^*|^2
= \alpha_1^2+\alpha_2^2+\alpha_3^2 =1
$$
在一般基下，一个张量矩阵的元素总可以写成：
$$
T_{ij}^*
=\pmb{e}_i^*\pmb{T}\pmb{e}_j^*
= [\pmb{e}_i^*]^T[\pmb{T}][\pmb{e}_{j}]
$$
我们分析元素 $T_{11}^*$ ，有：
$$
\begin{align}
T_{11}^*
& = [\pmb{e}_1^*]^T[\pmb{T}][\pmb{e}_{1}]
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

# 9. 凯莱-哈密顿定理

The Cayley-Hamilton Theorem

凯莱-哈密顿定理是特征方程的推广。

> 特征方程
> $$
> \lambda ^3 - I_1 \lambda^2+I_2\lambda -I_3=0 
> $$
>

对任意的张量（不要求对称）$\pmb{T}$，总有：
$$
\begin{align}
& \pmb{T}^3 - I_A \cdot \pmb{T}^2 + I_B\cdot \pmb{T} -I_C \cdot \pmb{I} = \pmb{o} \\
\\
with \quad 
& \pmb{I}_A = tr(\pmb{T}) \\
\\
& \pmb{I}_B = \frac{1}{2} \Big( [tr(\pmb{T})]^2-tr(\pmb{T}^2) \Big)\\
\\
& \pmb{I}_C = \frac{1}{3} \Big( tr(\pmb{T^3}) + \frac{3}{2} tr(\pmb{T})tr(\pmb{T^2}) + \frac{1}{2}[tr(\pmb{T})]^3 \Big)
\end{align}
$$

# 10. 偏量不变量

Deviatoric Invariants

我们可以对偏张量做特征分解。

对张量的 $\pmb{T}$ 的偏量部分 $\pmb{T}_{dev}$ 部分做特征分解，得到对应的特征值 $s$ ，偏量不变量 $J_1, J_2, J_3$，和偏量的特征方程：
$$
\begin{align}
& s^3 - J_1 s^2-J_2s -J_3 =0 \\
\\
with \quad 

& J_1  = tr (\pmb{T}_{dev})=0 \\
\\
& J_2 = -\frac{1}{2} \Big([tr(\pmb{T}_{dev})]^2 - tr (\pmb{T}_{dev}^2) \Big) = -(s_1s_2+s_2s_3+s_3s_1) 
\\ & \quad= \frac{1}{2} (s_1^2+s_2^2+s_3^2)\
\\ & \quad=\frac{1}{6}[(\lambda_1-\lambda_2)^2 + (\lambda_2-\lambda_3)^2 + (\lambda_3-\lambda_1)^2 ] \\
\\
& J_3 = det(\pmb{T}_{dev})=s_1s_2s_3 \\
\end{align}
$$

> 张量不变量
> $$
> \begin{align}
> & \lambda ^3 - I_1 \lambda^2+I_2\lambda -I_3=0 \\
> \\
> with \quad I_1 & = tr(\pmb{T}) = T_{ii}
> \\ \\ 
> I_2 & = \frac{1}{2} [(tr(\pmb{T}))^2 - tr(\pmb{T}^2)]= \frac{1}{2}(T_{ii} T_{jj} - T_{ij}T_{ji}) \\ \\
> I_3 & = det(\pmb{T})=  \varepsilon_{ijk} T_{1i}T_{2j}T_{3k}
> \end{align}
> $$
>

# 11. 同轴的张量

Coaxial Tensors

特征向量相同的张量，称作同轴的张量。

张量同轴的充要条件时：
$$
\pmb{A} \pmb{B} = \pmb{B} \pmb{A}
$$
一个张量和它的逆是同轴的，因为：
$$
\pmb{T}\pmb{T}^{-1} = \pmb{T}^{-1}\pmb{T}
$$

# 12. 张量的极分解

Polar Decomposition of Tensors

任一非奇异二阶张量 $\pmb{T}$，可以写成一个 Rotation Tensor $\pmb{R}$ 和另一个张量 $\pmb{U}$ 的乘积的形式，有：
$$
\pmb{T} = \pmb{RU}
$$
也就是对一个向量，先做一步变换 $\pmb{U}$，再做一步旋转 $\pmb{R}$。

这个分解并不是唯一的。

我们应尽量选一个对称矩阵做 $\pmb{U}$ 。

考虑由非奇异张量构成的张量 $$\pmb{T}^T\pmb{T}$$，它是一个正定的张量， 因为：
$$
\pmb{u}\pmb{T}^T\pmb{T}\pmb{u} 
=\pmb{T}\pmb{u} \cdot \pmb{T}\pmb{u} = |\pmb{T}\pmb{u}|^2\cdot 1>0
$$
由于 $\pmb{T}^T\pmb{T}$ 肯定是个对称张量，其根也是对称张量，我们可以取：
$$
\pmb{U} = (\pmb{T}^T \pmb{T})^{1/2}
$$
我们现在来看在 $\pmb{U}$ 确定下来的情况下，对应的 $\pmb{R}$ 是怎么样的，有：
$$
\begin{align}
\pmb{R}^T\pmb{R} & = (\pmb{T}\pmb{U}^{-1})^T(\pmb{T}\pmb{U}^{-1}) = \pmb{U}^{-T}\pmb{T}^T\pmb{T}\pmb{U^{-1}} = \pmb{U}^{-T}\pmb{U}^2\pmb{U}^{-1} \\
& =  (\pmb{U}^{-T}\pmb{U})(\pmb{U}\pmb{U}^{-1})=\pmb{I}
\end{align}
$$
所以，在 $\pmb{U}$ 取 $(\pmb{T}^T \pmb{T})^{1/2}$ 时，$\pmb{R}$ 一定是正交的。

又  $det(\pmb{R})= \frac{det(\pmb{T})}{det (\pmb{U})}=1>0$ ，所以 $\pmb{R}$ 一定 proper orthogonal。

还可以证明这样的分解一定是唯一的。

总的来看，一个张量的极分解就是：
$$
\pmb{T}= \pmb{R} \pmb{U}  =\pmb{R} (\pmb{T}^T\pmb{T} )^{1/2}
$$


---

另一种差不多的分解方式是：
$$
\pmb{T}= \pmb{V} \pmb{R} = (\pmb{T}\pmb{T}^T)^{1/2}\pmb{R}
$$

## 柯西-格林张量

Cauchy-Green Tensors

上面这两种分解得到的张量，分别称作 左/右柯西-格林张量。




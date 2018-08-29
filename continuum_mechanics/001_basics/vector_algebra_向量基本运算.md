---
typora-root-url: ..\picture
---

[TOC]

# 1. 一般的向量

## 1.1 定义
向量是由计算方法定义出的实体。

一个可以称作向量的实体，需要满足以下两条计算规则：

- 加法：平行四边形定理
- 标量乘法

向量的长度称作向量的模，记作 $$|\pmb{a}|$$

## 1.2 计算法则
由定义我们可以推导出计算法则：
- 加法交换律
- 加法结合律
- 标量乘法结合律
- 标量乘法分配律
## 1.3 点积
向量点积不是所有向量都有的性质。

定义：两个向量的点积是一个标量：
$$
\pmb{a}\cdot\pmb{b}=|\pmb{a}||\pmb{b}|cos(\pmb{a},\pmb{b})
$$

点积的几何意义不重要。

相互垂直的向量：
$$
\textcolor{red}{
\pmb{a}\cdot\pmb{b}=0 
\Leftrightarrow
\pmb{a} \bot \pmb{b} \\
}
$$

向量的模可以通过点积自己得到：
$$
\textcolor{red}{
|\pmb{a}| = \sqrt{\pmb{a} \cdot \pmb{a}}
}
$$
向量的模是向量的一种不变量，即无论坐标系如何旋转，它都是一样的。

向量乘以某方向的单位向量，可以得到投影长度：
$$
\pmb{a} \cdot \pmb{e} 
= |\pmb{a}| \cdot 1\cdot cos(\pmb{a}, \pmb{e})
= |\pmb{a}|\cdot cos(\pmb{a}, \pmb{e})
$$

---

笛卡尔坐标系下：

- 指标记法的向量点积：

$$
\textcolor{red}{
\pmb{a} \cdot \pmb{b} 
= a_i \pmb{e}_i \cdot b_j \pmb{e}_j 
= a_ib_j \delta_{ij}
= a_ib_i
}
$$

- 矩阵记法的向量点积：

$$
\pmb{a} \cdot \pmb{b} 
= 
\begin{pmatrix}
a_1 & a_2 & a_3
\end{pmatrix}
\cdot 
\begin{pmatrix}
b_1 \\ b_2 \\b_3
\end{pmatrix}
= a_1b_1+a_2b_2+a_3b_3
$$

## 1.4 叉积

向量叉积也不是所有向量都有的性质。

定义：两个向量的叉积是一个方向遵循右手定则，模为 $|\pmb{a}||\pmb{b}|sin(\pmb{a},\pmb{b})$ 的向量

叉积的几何意义是，由相乘的两向量组成的平行四边形的法向量，向量的模为平行四边形的面积。

相互平行（线性相关）的向量：
$$
\textcolor{red}{
\pmb{a} \times \pmb{b} = \pmb{0} 
\Leftrightarrow
\pmb{a} \parallel \pmb{b}
}
$$
==向量叉积不满足乘法交换律==。

---

笛卡尔坐标系下：

- 指标记法的向量叉积：

$$
\textcolor{red}{
\pmb{a} \times \pmb{b}
= a_i \pmb{e}_i \times b_j \pmb{e}_j
= a_ib_j\varepsilon_{ijk}\pmb{e}_k
}
$$

- 矩阵记法的向量叉积：

$$
\pmb{a} \times \pmb{b}
= det 
\begin{pmatrix}
\pmb{e}_1 & \pmb{e}_2 & \pmb{e}_3 \\
a_1 & a_2 & a_3 \\
b_1 & b_2 & b_3
\end{pmatrix}
$$

## 1.5 三重积

三重积是分别使用点积和叉积：
$$
[\pmb{a}, \pmb{b}, \pmb{c}] 
= \pmb{a} \cdot (\pmb{b} \times \pmb{c}) 
= (\pmb{a} \times \pmb{b}) \cdot \pmb{c}) 
$$
三重积的几何意义是，三个向量组成的平行六面体的体积。

正的体积说明三个向量的相乘顺序满足右手定则，负的体积表示不满足。

# 2. 笛卡尔坐标系下的向量

向量本身是不需要坐标系定义的。

为了方便计算，我们可以引入坐标系。

一个自由的向量在定义了基之后才有了行动的能力。

一个向量在不同的基下有不同的表现形式，这些表现形式都是等价的。

最常见的莫过于笛卡尔坐标系，它的基为：$\pmb{e}_1, \pmb{e}_2, \pmb{e}_3$ 

## 2.1 指标记法

可以使用在基向量上的分量表示一个向量，称作指标记法。

### 2.1.1 爱因斯坦求和约定

使用爱因斯坦求和约定，有：
$$
\pmb{a}= a_1\pmb{e}_1 + a_2\pmb{e}_2 + a_3\pmb{e}_3 = \sum_{i=1}^{3} a_i\pmb{e}_i :=a_i\pmb{e}_i
$$
爱因斯坦求和约定意味着：

1. 抛弃求和符号
2. 一项中同一个指标最多只能出现两次
3. 重复出现的指标表示对其求和直到维数最大
4. 指标都是哑标，可以随意替换，只要相互关系不变

一项中的没有自由指标：结果是一个标量

一项中有一个自由指标：结果是一个向量

一项中有两个自由指标：结果是一个二阶张量

### 2.1.2 $\delta_{ij}$ 和 $\varepsilon_{ijk}$

为了计算的简便，我们在笛卡尔坐标系下引入两个算符。

Kronecker Delta: 
$$
\delta_{ij} := \pmb{e}_i \cdot \pmb{e}_j
= \begin{cases}
1, i=j \\ 0, i\neq j
\end{cases}
$$
Levi-Civita：
$$
\varepsilon_{ijk}\pmb{e}_k := \pmb{e}_i \times \pmb{e}_j \\
with \quad \varepsilon_{ijk} =
\begin{cases}
1, ijk = {123,231,312} \\ 
0, ijk=... \\
-1, ijk = {321,213, 132} \\
\end{cases}
$$
重要推论：

1. $$\varepsilon_{ijk}\cdot\varepsilon_{kmn} = \delta_{im}\delta_{jn}-\delta_{in}\delta_{jm}$$

2. $$\varepsilon_{ijk}\cdot \varepsilon_{ijl}=2\delta_{kl}$$

3. 拉格朗日恒等式：
   $$
   (\pmb{a} \times \pmb{b}) \cdot (\pmb{c} \times \pmb{d}) 
   = (\pmb{a} \cdot \pmb{c}) (\pmb{b}\cdot \pmb{d})
   -  (\pmb{a} \cdot \pmb{d}) (\pmb{b}\cdot \pmb{c})
   $$







## 2.2 向量的坐标系变换

坐标系的变换，就是不同坐标系下，表示向量的分量不同。

我们说的坐标系变换，一般说是指坐标系的转动。

> 坐标系平动并不会造成向量分量的变化，因为不管怎样都是 $u_i \pmb{e}_i$

### 2.2.1 向量的平面坐标系变换

坐标系变换，是通过一个等式进行的，如典型的坐标系绕 $x_3$ 轴旋转：

![](..\picture\verctor_coordiante_transformation_2d.png)
$$
\begin{align}
\pmb{u}^{\pmb{e}} &= \pmb{u}^{\pmb{e}'} \\
u_i\pmb{e}_i &= u_i'\pmb{e}'_i \\
\end{align}
$$
这个等式被称作 Transformation Equation。

具体来看，由平面几何关系，有：
$$
\begin{align}
u_i \pmb{e}_i 
& = u_1 \pmb{e}_1 + u_2 \pmb{e}_2 \\
\\
& = (|OB| - |AB|) \pmb{e}_1 +(|BD|+|CP|)\pmb{e}_2 \\
\\
& = (u_1' \cdot cos\theta - u_2' \cdot sin\theta) \pmb{e}_1 
+ (u_1' \cdot sin\theta + u_2' \cdot cos\theta) \pmb{e}_2 \\
\\
\end{align}
$$

我们便可以建立起分量之间的关系，有：
$$
\begin{align}
& \begin{cases}
u_1 = u_1' \cdot cos\theta - u_2' \cdot sin\theta \\
u_2 = u_1' \cdot sin\theta + u_2' \cdot cos\theta
\end{cases} \\
\\
\Rightarrow \quad
& 
\begin{pmatrix} u_1 \\ u_2 \end{pmatrix}
= \begin{pmatrix} cos\theta &-sin\theta \\ sin\theta & cos\theta \\ \end{pmatrix}
\begin{pmatrix} u_1' \\ u_2' \end{pmatrix}
\end{align}
$$
换一个角度看，等式左右两边在同一的原坐标系 $o-x_1-x_2$ 下，有：
$$
\textcolor{red}{

\Bigg(
\underbrace {\begin{pmatrix} 1 \\ 0 \\ \end{pmatrix}}_{\pmb{e}_1} 
\underbrace{\begin{pmatrix} 0 \\ 1 \\ \end{pmatrix}}_{\pmb{e}_2}
\Bigg)
}
\textcolor{red}{
\begin{pmatrix} u_1 \\ u_2 \end{pmatrix}
=

\Bigg(
\underbrace {\begin{pmatrix}  cos\theta \\  sin\theta \\ \end{pmatrix}}_{\pmb{e}_1'} 
\underbrace{\begin{pmatrix}  -sin\theta \\  cos\theta \\ \end{pmatrix}}_{\pmb{e}_2'}
\Bigg)

\begin{pmatrix} u_1' \\ u_2' \end{pmatrix}
}
$$

$$
\underbrace{
\Bigg(
\underbrace {\begin{pmatrix} 1 \\ 0 \\ \end{pmatrix}}_{\pmb{e}_1} 
\underbrace{\begin{pmatrix} 0 \\ 1 \\ \end{pmatrix}}_{\pmb{e}_2}
\Bigg)
}_{ o-x_1-x_2 \ 下的原坐标系基向量}
\begin{pmatrix} u_1 \\ u_2 \end{pmatrix}
=
\underbrace{
\Bigg(
\underbrace {\begin{pmatrix} 1\cdot cos\theta \\ 1\cdot sin\theta \\ \end{pmatrix}}_{\pmb{e}_1': 点 D 坐标} 
\underbrace{\begin{pmatrix} 1\cdot -sin\theta \\ 1\cdot cos\theta \\ \end{pmatrix}}_{\pmb{e}_2'}
\Bigg)
}_{o-x_1-x_2 \ 下的目标坐标系基向量}
\begin{pmatrix} u_1' \\ u_2' \end{pmatrix}
$$

### 2.2.2 向量的三维坐标系变换

将上面那个变换带上轴 $x_3$ ，有：
$$
\textcolor{red}{
[u_i']=\underbrace{[cos(e_i,e_j')]^T}_{Q_{ji}\pmb{e}_i \otimes \pmb{e}_j}[u_j]
}
$$

$$
\begin{align}
\begin{pmatrix}1 &0 & 0\\ 0 & 1 & 0\\ 0 & 0 & 1\end{pmatrix}
\begin{pmatrix} u_1 \\ u_2 \\ u_3\end{pmatrix}
= \begin{pmatrix} cos\theta &-sin\theta & 0\\ sin\theta & cos\theta & 0\\ 0 & 0 & 1\end{pmatrix}
\begin{pmatrix} u_1' \\ u_2' \\ u_3'\end{pmatrix}
\end{align}
$$
写成浓缩的矩阵形式，有：
$$
[\pmb{I}][\pmb{u}] = [\pmb{u}] = [\pmb{Q} ][\pmb{u}']
$$
使用指标记法，有：
$$
[u_i] = [Q_{ij}][u_j']
$$
注意，严格意义来说，这个 $\pmb{Q}$ 不是张量。

因为张量的定义是将一个向量映射到另一个向量。

这里是把同一个向量在不同坐标系下的表达形式找出来。

虽然操作起来没有什么不同。

反之有：
$$
[\pmb{Q}]^{-1}[\pmb{u}] = [\pmb{u}']
$$
这样一个旋转坐标系的矩阵矩阵是正交矩阵，故有：
$$
[\pmb{Q}]^{-1}=[\pmb{Q}]^T
$$
写成指标形式有：
$$
[Q_{ji}][u_j]=[u_i']
$$
三维旋转坐标矩阵中元素的通式有：
$$
Q_{ij} = cos(\pmb{e}_i, \pmb{e}_j')=\pmb{e}_i \cdot \pmb{e}_j'
$$

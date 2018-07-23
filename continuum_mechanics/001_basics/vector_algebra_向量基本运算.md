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
\pmb{a}\cdot\pmb{b}=0 
\Leftrightarrow
\pmb{a} \bot \pmb{b} \\
$$

向量的模可以通过点积自己得到：
$$
|\pmb{a}| = \sqrt{\pmb{a} \cdot \pmb{a}}
$$
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
\pmb{a} \cdot \pmb{b} 
= a_i \pmb{e}_i \cdot b_j \pmb{e}_j 
= a_ib_j \delta_{ij}
= a_ib_i
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
\pmb{a} \times \pmb{b} = \pmb{0}
$$
==向量叉积不满足乘法交换律==。

---

笛卡尔坐标系下：

- 指标记法的向量叉积：

$$
\pmb{a} \times \pmb{b}
= a_i \pmb{e}_i \times b_j \pmb{e}_j
= a_ib_j\varepsilon_{ijk}\pmb{e}_k
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



## 2.2 向量的坐标变换


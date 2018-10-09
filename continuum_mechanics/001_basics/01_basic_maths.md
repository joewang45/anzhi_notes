# 向量

## 概念

向量是由计算方法定义出的实体。

一个可以称作向量的实体，需要满足以下两条计算规则：

- 加法：平行四边形定理
- 标量乘法

向量 $\pmb{a}$ 的长度称作向量的模，记作 $$|\pmb{a}|$$。

## 点积

两个向量的点积是一个标量：
$$
\pmb{a}\cdot\pmb{b}=|\pmb{a}||\pmb{b}|cos(\pmb{a},\pmb{b})
$$
点积可以用来描述向量垂直：
$$
\pmb{a}\cdot\pmb{b}=0 
\Leftrightarrow
\pmb{a} \bot \pmb{b}
$$
向量的模可以通过点积自己得到：
$$
|\pmb{a}| = \sqrt{\pmb{a} \cdot \pmb{a}}
$$
向量乘以某方向的单位向量，可以得到投影长度：
$$
a_x=\pmb{a}\cdot\pmb{e}_x
$$
笛卡尔坐标系下的矩阵记法：
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
笛卡尔坐标系下的指标记法：
$$
\pmb{a} \cdot \pmb{b} 
= a_i \pmb{e}_i \cdot b_j \pmb{e}_j 
= a_ib_j \delta_{ij}
= a_ib_i
$$

## 叉积

两个向量的叉积是一个向量：

- 其方向遵循右手定则

- 其模为
  $$
  |\pmb{a}||\pmb{b}|sin(\pmb{a},\pmb{b})
  $$



向量叉积的模，是两个向量围成的平行四边形的面积。

叉积可以用来描述向量平行：
$$
\pmb{a} \times \pmb{b} = \pmb{0} 
\Leftrightarrow
\pmb{a} \parallel \pmb{b}
$$
笛卡尔坐标系下的矩阵记法：
$$
\pmb{a} \times \pmb{b}
= det 
\begin{pmatrix}
\pmb{e}_1 & \pmb{e}_2 & \pmb{e}_3 \\
a_1 & a_2 & a_3 \\
b_1 & b_2 & b_3
\end{pmatrix}
$$
笛卡尔坐标系下的指标记法：
$$
\pmb{a} \times \pmb{b}
= a_i \pmb{e}_i \times b_j \pmb{e}_j
= a_ib_j\varepsilon_{ijk}\pmb{e}_k
$$

## 三重积

三重积本身没什么用。

其几何意义是三个向量组成的平行六面体的体积。

用三重积可以定义张量的行列式：

<center> 空间线性变化前后的单位空间大小比

## 坐标系变换

坐标系的变换，就是不同坐标系下，表示向量的分量不同。

在笛卡尔坐标系下，指坐标系的转动：

<center> 坐标系平动并不会造成向量分量的变化





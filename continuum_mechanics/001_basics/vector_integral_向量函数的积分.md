[TOC]

# 1. 一维积分 

一维积分就是对一个坐标轴做积分。

## 1.1 $\int \pmb{u}(t) dt$

对 $$\pmb{u}=\pmb{u}(t)$$ 做积分，和对标量函数做积分的方法是一样的，有：
$$
\int^{2}_{1} \pmb{u}(t)dt
= \int^{2}_{1} 
\begin{pmatrix} 
t-t^2 \\ 2t^2 \\ -3 
\end{pmatrix} dt
= \begin{pmatrix} 
-5/6 \\ 14/3 \\ -3 
\end{pmatrix}
$$
或
$$
\int^{2}_{1} [(t-t^2)\pmb{e}_1+(2t^2)\pmb{e}_2-3\pmb{e}_3]dt=-\frac{5}{6}\pmb{e}_1+\frac{14}{3}\pmb{e}_2-3\pmb{e}_3
$$
## 1.2 $\int \pmb{f}(\pmb{x})\cdot d(\pmb{x})$
计算力场 $$\pmb{f}(\pmb{x})$$ 对在其中运动轨迹为 $$\mathcal{C}$$ 的质点做的功，有：
$$
\begin{align}
\int_{\mathcal{C}} \pmb{f} (\pmb{x}) \cdot d\pmb{x}
& = \int_{\mathcal{C}} (f_1\pmb{e}_1 + f_2\pmb{e}_2 + f_3\pmb{e}_3) \cdot d\pmb{x} \\ 
& = \int_{\mathcal{C}} f_1\pmb{e}_1\cdot d\pmb{x}+\int_{\mathcal{C}} f_2\pmb{e}_2\cdot d\pmb{x}+\int_{\mathcal{C}} f_3\pmb{e}_3\cdot d\pmb{x} \\ 
& =  \int_{\mathcal{C}} f_1dx_1+\int_{\mathcal{C}} f_2dx_2+\int_{\mathcal{C}} f_3dx_3
\end{align}
$$
当  $$\pmb{f} = (3x_{1}^{2}+6x_{2})\pmb{e}_{1}-(14x_1x_2)\pmb{e}_2+(20x_1x_3^2)\pmb{e}_3$$ 时，上式就变成：
$$
\int_{\mathcal{C}} \pmb{f} (\pmb{x}) \cdot d\pmb{x} = 
\int_{\mathcal{C}} (3x_{1}^{2}+6x_{2})dx_1+\int_{\mathcal{C}} (14x_1x_2)dx_2+\int_{\mathcal{C}} (20x_1x_3^2)dx_3
$$
积分操作不是很方便，可以使用参数方程简化计算，对路径为一条直线：  
$$
\pmb{x}=\begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} t \\ t \\ t \end{pmatrix}
$$
有：
$$
\int_{\mathcal{C}} (3t^{2}+6t)dt+\int_{\mathcal{C}} (14t^2)dt+\int_{\mathcal{C}} (20t^3)dt=\int_{0}^{1}(20t^3-11t^2+6t)dt=\frac{13}{3}
$$

使用参数方程的换元过程，可以表示为：
$$
\int_{\mathcal{C}}\pmb{f}(\pmb{x})\cdot d\pmb{x}
= \int_{\mathcal{C}}\pmb{f}(\pmb{x})\cdot \frac{d\pmb{x}}{dt}dt = \int_{\mathcal{C}}\pmb{f}(\pmb{x})\cdot \frac{dx_i}{dt}\pmb{e}_idt
$$

## 1.3 保守场

如果一个向量场，可以用一个**标量场的梯度**来表示，即 
$$
\pmb{f}(\pmb{x})=\nabla\phi(\pmb{x})
$$
则求一次上面的力场对运动轨迹的做功，有：
$$
\int_{\mathcal{C}}\pmb{f}\cdot d\pmb{x}
= \int_{\mathcal{C}}\nabla \phi \cdot d\pmb{x}
= \int_{\mathcal{C}} \frac {\partial\phi}{\partial x_i} dx_i
= \int_{\mathcal{C}} d\phi
$$
积分的结果变成了常数，做功只与路径的起始点有关，而与路径无关了

这样的向量场，称作**保守向量场 conservative vector field**

对应的标量场，称作**标量势 scalar potential**

一个保守向量场的旋度是零。该结论可以作为判断一个向量场是否是保守场的充要判断条件。

---

### 例题：保守场的证明和标量势的计算 

例：计算证明 $$\pmb{f}(\pmb{x})=\begin{pmatrix} 2x_1x_2+x_3^3 \\ x_1^2 \\ 3x_1x_3^2\end{pmatrix}$$ 是保守场，并求出其标量势

一、计算该向量场的旋度
$$
\begin{align}
\underline{curl} \pmb{f} = \nabla \times \pmb{f}
& = det 
\begin{pmatrix} 
\pmb{e}_1 & \pmb{e}_2 & \pmb{e}_3  \\
\frac{\partial}{\partial x_1} & \frac{\partial}{\partial x_2} & \frac{\partial}{\partial x_3} \\
f_1 & f_2 & f_3
\end{pmatrix} \\
& = 
det 
\begin{pmatrix} 
\pmb{e}_1 & \pmb{e}_2 & \pmb{e}_3  \\
\frac{\partial}{\partial x_1} & \frac{\partial}{\partial x_2} & \frac{\partial}{\partial x_3} \\
2x_1x_2+x_3^3 & x_1^2 & 3x_1x_3^2
\end{pmatrix}
= \pmb{0}
\end{align}
$$
二、求该保守场的标量势
1. 使用标量势写出原向量场
$$
\pmb{f} = \nabla \phi =
\frac{\partial \phi}{\partial x_1}\pmb{e}_1 + 
\frac{\partial \phi}{\partial x_2}\pmb{e}_2 + 
\frac{\partial \phi}{\partial x_3}\pmb{e}_3
$$
2. 用上式比较向量场的系数
$$
\begin{cases}
f_1 = \frac{\partial \phi}{\partial x_1} 
% \Rightarrow  f_1 \partial x_1 = \partial \phi 
  \Rightarrow \int \partial \phi = \int (2x_1x_2+x_3^3) \partial x_1 
  \Rightarrow \phi = x_1^2x_2+x_1x_3^3+p(x_2,x_3)+C \\

  \phi = x_1^2x_2+q(x_1,x_3)+C \\

  \phi = x_1x_3^3+r(x_1,x_2)+C 
  
\end{cases} \\
$$
3. 于是综合来看 $$\phi = x_1^2x_2+x_1x_3^3+C$$

---

### 1.3.1 赫尔姆兹定理

向量场无旋度 $$\Leftrightarrow$$ 向量场是个保守场，有个标量势。

进一步的，向量场无散度 （solenoidal）$$\nabla \cdot \pmb{f} =0\Leftrightarrow$$ 向量场有个向量势。

赫尔姆兹定理说，任意向量场总可以写成**标量势的梯度**和**向量势的旋度**，有：

$$
\pmb{f} \equiv \nabla \phi + \nabla \times \pmb{a}
$$
也被称作赫尔姆兹分解 The Helmholtz' Decomposition

**小结**
|                |                                   |            |                                  |                                                              |
| ----           | ---- | ---------- |  ------------ | ----- |
| 任意向量场      | $$\pmb{f}$$                    | 总可以写成 | 其标量势的梯度和向量势的旋度之和 | $$\pmb{f} \equiv \nabla \phi + \nabla \times \pmb{a} $$ |
| 无旋度的向量场 | $$ \nabla \times \pmb{f} =0 $$ | 可以写成   | 其标量势的梯度                   | $$\pmb{f}=\nabla \phi$$                                   |
| 无散度的向量场 | $$ \nabla \cdot \pmb{f} =0 $$  | 可以写成   | 其向量势的旋度                   | $$\pmb{f}=\nabla \times \pmb{a}$$                      |

# 2. 二维积分
二维积分就是二重积分，对两个坐标轴做积分，通常是对面积积分。

函数 $$f(x_1,x_2)$$ 对面 $$\mathcal{R}$$ 积分，得到如图所示的体积，有：
$$
\iint_{\mathcal{R}} f(x_1,x_2) dx_1dx_2
$$
![](..\picture\2.png)

## 2.1 二维物体的表面积

计算二重积分时，可以采用换元的方法。

换元对应的物理意义，是更换坐标系，如下图：

![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\3.png)

在平面上存在平面直角坐标系 $$x_1-x_2$$ 和一般坐标系 $$t_1-t_2$$

在 $$t_1-t_2$$ 坐标系下，面积微元 $$dS=|d\pmb{x}_{t_1} \times d\pmb{x}_{t_2}|$$

其中，$$\pmb{x}$$ 是有关 $$t_1$$ 和 $$t_2$$ 的向量函数，即 
$$
\pmb{x}
=\pmb{x}(t_1,t_2)
=x_1(t_1,t_2)\pmb{e}_1+ x_2(t_1,t_2)\pmb{e}_2
$$

故有：
$$
\begin{cases}
d\pmb{x}_{t_1} = \frac{\partial \pmb{x} }{\partial t_1}dt_1+\frac{\partial \pmb{x} }{\partial t_2}dt_2=\frac{\partial \pmb{x} }{\partial t_1}dt_1 \\
d\pmb{x}_{t_2} = \frac{\partial \pmb{x} }{\partial t_1}dt_1+\frac{\partial \pmb{x} }{\partial t_2}dt_2=\frac{\partial \pmb{x} }{\partial t_2}dt_2
\end{cases}
$$

于是，面积微元就可以写成：
$$
\begin{align}
dS & \ = |d\pmb{x}_{t_1} \times d\pmb{x}_{t_2}| \\
   & \ = |\frac{\partial \pmb{x} }{\partial t_1} \times \frac{\partial \pmb{x} }{\partial t_2}| dt_1dt_2 \\
   & \ = |\frac{\partial x_i}{\partial t_1} \pmb{e}_i \times \frac {\partial x_j}{\partial t_2}\pmb{e}_j|dt_1dt_2 \\
   & \ = |\frac{\partial x_i \partial x_j}{\partial t_1 \partial t_2} \varepsilon_{ijk}\pmb{e}_k|dt_1t_2\\
   & \ = |\frac{\partial x_1 \partial x_2}{\partial t_1 \partial t_2} - \frac{\partial x_2 \partial x_1}{\partial t_1 \partial t_2}  |dt_1dt_2\\
   & \ = 
	  \underbrace
            {\begin{vmatrix} 
            \frac{\partial x_1}{\partial t_1} & \frac{\partial x_2}{\partial t_1} \\
            \frac{\partial x_1}{\partial t_2} & \frac{\partial x_2}{\partial t_2} 
            \end{vmatrix}}
            _{det(\pmb{J})} 
            dt_1dt_2\\
\end{align}
$$
于是我们得到了==**雅可比矩阵 Jacobian Matrix**==，有：
$$
\pmb{J}= \frac{\partial x_i}{\partial t_j}
$$
应用雅克比矩阵变换坐标系：
$$
\int f(x) dx = \int f[x(y)] dx =\int f(y) \cdot det(\frac{\partial x_i}{\partial y_j}) dy
$$

---

### 例题：使用极坐标计算面积

使用极坐标，计算单位圆在第一象限（$$0 \leq y \leq \sqrt{1-x^2} ,\quad 0 \leq x \leq 1$$）的面积

一、使用极坐标，有：

$$
\begin{cases} 
x=r\cdot cos\phi \\ 
y=r\cdot sin\phi
\end{cases}
$$

二、计算雅可比矩阵的行列式：
$$
det(\pmb{J})
  =\begin{vmatrix} 
  \frac{\partial x}{\partial r} & \frac{\partial x}{\partial \phi} \\
  \frac{\partial y}{\partial r} & \frac{\partial y}{\partial \phi} \\
  \end{vmatrix}
  = \begin{vmatrix}
  cos \phi & - r\cdot sin \phi \\
  sin \phi & r \cdot cos \phi
  \end{vmatrix} = r
$$

三、计算面积
$$
  \int_{0}^{1}\int_{0}^{1}1dxdy 
  = \int_{0}^{\pi/2}\int_{0}^{1}rdrd\phi 
  = \frac{1}{4}\pi
$$

---

## 2.2 曲面的法向量

![](..\picture\6.png)

三维空间中的任意曲面 $$\mathcal{S}$$ 上的点的位置，总有：
$$
\pmb{x} = x_1\pmb{e}_1 + x_2\pmb{e}_2 + x_3\pmb{e}_3 = \pmb{x}(x_1,x_2,x_3)
$$
引入两个参数 $$t_1, t_2$$ ，有：
$$
\pmb{x} = x_1(t_1,t_2)\pmb{e}_1 + x_2(t_1,t_2)\pmb{e}_2 + x_3(t_1,t_2)\pmb{e}_3 = \pmb{x}(t_1,t_2)
$$

现在考虑 $$\mathcal{S}$$ 上的任意曲线 $$\mathcal{C}$$ ，其路径坐标为 $s$ 。

对 $$\mathcal{C}$$ 上的点来说，有：
$$
\pmb{x}=\pmb{x}[t_1(s),t_2(s)]
$$
于是，$$\mathcal{C}$$ 的切线向量为：
$$
\frac {d\pmb{x}} {ds}
= \underbrace {\frac {\partial \pmb{x}(t_1,t_2)} {\partial t_1}}_{I} 
   \underbrace {\frac {dt_1} {ds}}_{II} 
+ \underbrace {\frac {\partial \pmb{x}(t_1,t_2)} {\partial t_2}}_{III} 
   \underbrace {\frac {dt_2} {ds}}_{IV}
$$
$II$ 和 $IV$ 是两个控制缩放的标量。

$I$ 和 $III$ 表示的是类似平面基向量的概念，我们可以通过 $I$ 和 $III$ 确定切平面。

可以看出，无论是怎样的一条曲面上的曲线，我们都可以确定某点处的切平面。

于是，<u>曲面 $\mathcal{S}$ 某点的单位法向量 $\pmb{n}$</u>，可以通过该点切片面的法向量求出，有：
$$
\pmb{n}
= \frac { \frac {\partial \pmb{x}} {\partial t_1} \times \frac {\partial \pmb{x}} {\partial t_2} } 
{| \frac {\partial \pmb{x}} {\partial t_1} \times \frac {\partial \pmb{x}} {\partial t_2 }|}
$$

注意：这里的法向量是朝里还是朝外，取决于局部坐标系 $t_1-t_2$ 的选择。

---

### 例题：空间球面的法向量

求半径为 $1$ 的单位球面
$$
\pmb{x}=1\cdot 
(sin\theta \cdot cos\phi\cdot \pmb{e}_1
+sin\theta \cdot sin\phi\cdot \pmb{e}_2
+cos\theta \cdot \pmb{e}_3),  
\begin{cases}
0 \leq \theta \leq \pi \\
0 \leq \phi \leq 2\pi
\end{cases}
$$
上的单位法向量

一、求曲面对球坐标轴的偏导，得到曲面的切面的“基向量”
$$
\begin{cases}
\frac{\partial \pmb{x}}{\partial \theta} 
= cos\theta \cdot cos\phi \cdot \pmb{e}_1 
+ cos\theta \cdot sin\phi \cdot \pmb{e}_2
- sin\theta \cdot \pmb{e}_3
\\
\frac{\partial \pmb{x}}{\partial \phi} 
= -sin\theta \cdot sin \phi \cdot \pmb{e}_1
+ sin\theta \cdot cos\phi \pmb{e}_2
\end{cases}
$$
二、使用得到的两个基向量求得法向量
$$
\frac {\partial\pmb{x}} {\partial \theta} 
\times
\frac {\partial\pmb{x}} {\partial \phi} 
=
sin^2\theta \cdot cos\phi \cdot \pmb{e}_1 
+ sin^2\theta \cdot sin\phi \cdot \pmb{e}_2
+ sin\theta \cdot cos\phi \cdot \pmb{e}_3
$$
三、计算模，并求得单位法向量
$$
\pmb{n}
= sin\theta \cdot cos\phi \cdot \pmb{e}_1 
+ sin\theta \cdot sin\phi cdot \pmb{e}_2
+ cos\theta \cdot \pmb{e}_3
$$

---

## 2.3 三维物体的表面积

由 2.1 中的推导，我们可以得到三维空间内的表面积微元：
$$
\begin{align}
dS & \ = |d\pmb{x}_{t_1} \times d\pmb{x}_{t_2}| \\
   & \ = |\frac{\partial \pmb{x} }{\partial t_1} \times \frac{\partial \pmb{x} }{\partial t_2}| dt_1dt_2 \\
\end{align}
$$

于是，有：
$$
\iint \pmb{f}dS
= \iint\pmb{f} = |\frac{\partial \pmb{x} }{\partial t_1} \times \frac{\partial \pmb{x} }{\partial t_2}| dt_1dt_2 \\
$$
由于 $$\pmb{x}$$ 是一个三维向量，而我们要把它转到二维上去，所以我们无法直接构造出一个矩阵的行列式

解决这个问题的一个方法是采用拉格朗日定理，即：
$$
（\pmb{a} \times \pmb{b})\cdot (\pmb{c}\times\pmb{d})
= (\pmb{a}\cdot \pmb{c}) (\pmb{b}\cdot \pmb{d}) 
- (\pmb{a}\cdot \pmb{d}) (\pmb{b}\cdot \pmb{c})
$$
便有：
$$
\begin{align}
|\frac{\partial \pmb{x} }{\partial t_1} \times \frac{\partial \pmb{x}} {\partial t_2} | 
& = \sqrt{ (\frac{\partial \pmb{x} }{\partial t_1} \times \frac{\partial \pmb{x}} {\partial t_2} )^2} = \sqrt{ (\frac{\partial \pmb{x} }{\partial t_1} \times \frac{\partial \pmb{x}} {\partial t_2} ) \cdot (\frac{\partial \pmb{x} }{\partial t_1} \times \frac{\partial \pmb{x}} {\partial t_2} )} \\
& = \sqrt { (\frac{\partial \pmb{x} }{\partial t_1} \cdot \frac{\partial \pmb{x} }{\partial t_1})(\frac{\partial \pmb{x} }{\partial t_2}\cdot \frac{\partial \pmb{x} }{\partial t_2})-(\frac{\partial \pmb{x} }{\partial t_1}\cdot \frac{\partial \pmb{x} }{\partial t_2})^2}
\end{align}
$$

---

### 例题：计算单位球面的表面积

单位球面：

$$
\pmb{x}=1\cdot 
(sin\theta \cdot cos\phi\cdot \pmb{e}_1
+sin\theta \cdot sin\phi\cdot \pmb{e}_2
+cos\theta \cdot \pmb{e}_3),  
\begin{cases}
0 \leq \theta \leq \pi \\
0 \leq \phi \leq 2\pi
\end{cases}
$$

对球坐标求导，可得
$$
\begin{cases}
\frac{\partial \pmb{x}}{\partial \theta} 
= cos\theta \cdot cos\phi \cdot \pmb{e}_1 
+ cos\theta \cdot sin\phi \cdot \pmb{e}_2
- sin\theta \cdot \pmb{e}_3
\\
\frac{\partial \pmb{x}}{\partial \phi} 
= -sin\theta \cdot sin \phi \cdot \pmb{e}_1
+ sin\theta \cdot cos\phi \pmb{e}_2
\end{cases}
$$
于是微元面积为
$$
\begin{align}
dS 
= |\frac{\partial \pmb{x} }{\partial \theta} \times \frac{\partial \pmb{x}} {\partial \phi} |  d\theta d\phi
& = \sqrt { (\frac{\partial \pmb{x} }{\partial \theta} \cdot \frac{\partial \pmb{x} }{\partial \theta})(\frac{\partial \pmb{x} }{\partial \phi}\cdot \frac{\partial \pmb{x} }{\partial \phi})-(\frac{\partial \pmb{x} }{\partial \theta}\cdot \frac{\partial \pmb{x} }{\partial \phi})^2} d\theta d\phi \\
& =sin \theta d\theta d\phi
\end{align}
$$
球体表面积为：
$$
\int_0^{2\pi}\int_0^{\pi} sin\theta d\theta d\phi = 4\pi
$$

---



### 2.3.1 表面通量

通量（流速$\times$面积）是固体力学中应用的非常多的概念。

通量在三维情况下，也需要通过向量进行计算。

如某材料以特定速度场 $\pmb{v}$ 流动，通过法向量为 $\pmb{n}$ 的特定表面 $dS$ ，在时间 $dt$ 内流过的物质体积，即下图所示的倾斜的圆柱体

![](..\picture\8.png)

其体积为：
$$
\int \pmb{v}\cdot \underbrace{\pmb{n}dS}_{:= d\pmb{S}} = \int \pmb{v\cdot} d\pmb{S}
$$
通过定义 $d\pmb{S}$ 可以将法向量的计算和面积计算综合在一起，有：
$$
\pmb{n}dS
= \frac { \frac {\partial \pmb{x}} {\partial t_1} \times \frac {\partial \pmb{x}} {\partial t_2} }
{| \frac {\partial \pmb{x}} {\partial t_1} \times \frac {\partial \pmb{x}} {\partial t_2 }|}
 \cdot |\frac{\partial \pmb{x} }{\partial t_1} \times \frac{\partial \pmb{x}} {\partial t_2} |  dt_1 dt_2
 = \frac {\partial \pmb{x}} {\partial t_1} \times \frac {\partial \pmb{x}} {\partial t_2} dt_1dt_2
$$
_对于比较简单的几何情况，我们也可以通过投影的方法求 $\pmb{n}dS$ ，有：_

![](..\picture\9.png)

$$
\begin{align}
& dx_1dx_2 
 = cos\theta dS 
= \pmb{n}\cdot \pmb{e}_3dS \\
& \Rightarrow dS = \frac{1}{\pmb{n}\cdot \pmb{e}_3} dx_1dx_2  \\
& \Rightarrow \pmb{n}dS=\pmb{n} \frac{1}{\pmb{n}\cdot \pmb{e}_3} dx_1dx_2 
\end{align}
$$

_为了让 $$\pmb{n}$$ 控制方向，我们可以取 $$\pmb{n}\cdot \pmb{e_3}$$ 的绝对值，有：_

$$
\pmb{n}dS=\pmb{n} \frac{1}{|\pmb{n}\cdot \pmb{e}_3|} dx_1dx_2 
$$

---

#### ==例题：某曲面的通量==

计算向量场
$$
\pmb{f}(\pmb{x})
= x_2\pmb{e}_1 + 2\pmb{e}_2+x_1x_3\pmb{e}_3
$$
通过表面
$$
\mathcal{S}: x_2=x_1^2, 0 \leq x_1 \leq 2, 0 \leq x_3 \leq 3
$$
的通量。

![](..\picture\7.png)

一、对该表面做换元处理，有
$$
\begin{align}
\mathcal{S} 
:  &\  x_1\pmb{e}_1+x_2\pmb{e}_2+x_3\pmb{e}_3 \\
 = &\ t_1\pmb{e}_1+t_1^2\pmb{e}_2+t_2\pmb{e}_3
 \begin{cases}
0 \leq t_1 \leq 2 \\
0 \leq t_2 \leq 3
\end{cases}
\end{align}
$$
二、计算表面积的法向量 $d\pmb{S}$：
$$
\begin{align}
d\pmb{S} 
& = \frac{\partial \pmb{x} }{\partial t_1} \times \frac{\partial \pmb{x}} {\partial t_2}dt_1dt_2
= (\pmb{e}_1+2t_1\pmb{e}_2) \times \pmb{e}_3dt_1dt_2 
= (-\pmb{e}_2+2t_1\pmb{e}_1)dt_1dt_2\\
\end{align}
$$
三、计算通量：
$$
\begin{align}
\int_{\mathcal{S}}\pmb{f}\cdot d\pmb{S} 
= \int_0^3 \int_0^2  
(t_1^2\pmb{e}_1+2\pmb{e}_2+t_1t_2\pmb{e}_3)
\cdot (-\pmb{e}_2+2t_1\pmb{e}_1)dt_1dt_2 = 12
\end{align}
$$

---

# 3. 三维积分

三维积分就是三重积分，就是对体积积分。

三重积分的换元操作，由于是同样维数的转换，可以直接使用 Jacobian Matrix，有：
$$
\begin{align}
dV
& =( \frac{\partial \pmb{x}}{\partial t_1} 
\times
\frac{\partial \pmb{x}}{\partial t_2}) 
\cdot 
\frac{\partial \pmb{x}}{\partial t_3}
dt_1dt_2dt_3
= det(\pmb{J})dt_1dt_2dt_3  \\
\\ 
mit & \ \pmb{J} = 
\frac{\partial x_i}{ \partial t_j}
= \begin{pmatrix}
\frac{\partial x_1}{\partial t_1} & \frac{\partial x_1}{\partial t_2} & \frac{\partial x_1}{\partial t_3} \\
\frac{\partial x_2}{\partial t_1} & \frac{\partial x_2}{\partial t_2} & \frac{\partial x_2}{\partial t_3} \\
\frac{\partial x_3}{\partial t_1} & \frac{\partial x_3}{\partial t_2} & \frac{\partial x_3}{\partial t_3}
\end{pmatrix}
\end{align}
$$
故，某向量场对体积的积分就为：
$$
\begin{align}
\int_V \pmb{f}dV
& = \int\int\int \pmb{f}(x_1,x_2,x_3)dx_1dx_2dx_3 \\
& = \int\int\int \pmb{f}(t_1,t_2,t_3) det(\pmb{J}) dt_1dt_2dt_3

\end{align}
$$

# 4. 积分定理

下面介绍一些重要的关于向量函数的积分定理

## 4.1 高斯散度定理

高斯散度定理 the divergence theorem of Gauss 是最重要的积分定理。

联系了三维物体的面积分和体积分。

对处于向量场 $$\pmb{v}(\pmb{x},t)$$ 的物体 $$\mathcal{B}$$ ，其体积为 $$V$$ ，表面积为 $$S$$ ，表面外法向量为 $$\pmb{n}(\pmb{x})$$ ，有：
$$
\int_S \pmb{v} \cdot \pmb{n}dS
= \int_V div (\pmb{v})dV \\
$$
该定理有三个推论：

$$
\begin{align}
1. &\  \int_S \phi \pmb{u} \cdot \pmb{n}dS=\int_V div(\phi \pmb{u})dV \\
2. &\  \int_S \phi \pmb{n}dS = \int_V \underline{grad} (\phi) dV \\
3. &\  \int_S \pmb{n} \times \pmb{u}dS = \int_V \underline{curl}(\pmb{u})dV
\end{align}
$$

对一个很小的体积来说，有：
$$
div(\pmb{v}) = 
\frac{\int_S \pmb{v}\cdot \pmb{n}dS}
{\lim\limits_{V\to0} V}
$$
==高斯散度定理说的是，向量场的散度，等于，其中物体单位体积的表面通量。==

## 4.2 斯托克旋度定理

斯托克旋度定理 Stoke's theorem 联系了二维物体的面积分和线积分。

对处于向量场 $\pmb{f}$ 的封闭区域 $\mathcal{S}$ ，其面积为 $S$，轮廓曲线为 $\mathcal{C}$ ，其外法向量为 $\pmb{n}$，切线向量为 $\pmb{\tau} = d\pmb{u}/ds$，有：

$$
\int_S \underline{curl}(\pmb{f})\cdot \pmb{n}dS
= \oint_C \pmb{f}\cdot \pmb{\tau}ds
$$

像之前提到的一样，一个速度场的旋度描述了，该速度场的旋转情况：旋度场的方向是绕速度场的旋转中心旋转的方向，值是角速度的大小。

==斯托克旋度定理说的是，一个封闭区域里向量场的旋度，等于沿这个封闭区域的轮廓的切线向量的积分。==

## 4.3 格林定理

格林定理 Green's Theorem 是斯托克定理在 $x_1-x_2$ 坐标平面下的特殊情况，有：
$$
\iint_S \underline{curl}(\pmb{f})\cdot \pmb{e}_3dx_1dx_2
= \oint_C \pmb{f}\cdot d\pmb{x}
$$
在 $x_1-x_2$ 平面中，向量场 $\pmb{f}$ 总可以写成 
$$
\pmb{f}=\psi_1(x_1,x_2)\pmb{e}_1+\psi_2(x_1,x_2)\pmb{e}_2 = \phi_i\pmb{e}_i
$$

于是，上式可写成：
$$
\begin{align}
左边
& = \iint_S \nabla\times \pmb{f} \cdot \pmb{e}_3 dx_1dx_2 \\
& = \iint_S \frac {\partial}{\partial x_i} \pmb{e}_i \times \psi_j\pmb{e}_j \cdot \pmb{e}_3 dx_1dx_2 \\
& = \iint_S \frac{\partial \psi_j}{\partial x_i} \varepsilon_{ijk}\pmb{e}_k \cdot \pmb{e}_3 dx_1dx_2 \\
& = \iint_S (\frac{\partial \psi_2}{\partial x_1} - \frac{\partial \psi_1}{\partial x_2})dx_1dx_y \\

右边
& = \oint_C \psi_i \pmb{e}_i \cdot dx_j\pmb{e}_j \\
& = \oint_C \psi_idx_i = \oint_C (\psi_1 x_1+\psi_2 x_2)
\end{align}
$$

于是，有：
$$
\iint_S (\frac{\partial \psi_2}{\partial x_1} - \frac{\partial \psi_1}{\partial x_2})dx_1dx_y = \oint_C (\psi_1 x_1+\psi_2 x_2)
$$

### 4.3.1 格林恒等式

#### 格林第一恒等式

$$
\int_S \psi [ \pmb{n} \cdot \underline{grad}(\phi)]dS
=\int_V [\psi\nabla^2 \phi+\underline{grad}(\psi) \cdot \underline{grad}(\psi)] dV
$$

格林第一恒等式可以转写成：
$$
\int_V \psi(\nabla \cdot \nabla \phi)dV 
= \int_S \psi (\nabla\phi\cdot \pmb{n})dS
- \int_V (\nabla\psi)\cdot (\nabla\phi)dV
$$
或者：
$$
\int_V \psi (\nabla \cdot \pmb{u})dV 
= \int_S \psi(\pmb{u} \cdot \pmb{n})dS
- \int_V (\nabla\psi) \cdot \pmb{u}dV
$$
相当于一维积分法则中 $$\int udv = uv - \int vdu$$ 的概念

#### 格林第二恒等式

$$
\int_S \ \{ \psi [ \pmb{n}\cdot \underline{grad}(\phi)] - \phi[\pmb{n}\cdot \underline{grad}(\psi)]\}dS
=\int_V (\psi\nabla\cdot\nabla\phi-\phi\nabla\cdot\nabla\psi)dV
$$




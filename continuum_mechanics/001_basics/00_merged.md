---
typora-root-url: ..\picture
---

[TOC]

# 一般的向量

## 定义
向量是由计算方法定义出的实体。

一个可以称作向量的实体，需要满足以下两条计算规则：

- 加法：平行四边形定理
- 标量乘法

向量的长度称作向量的模，记作 $$|\pmb{a}|$$

## 计算法则
由定义我们可以推导出计算法则：
- 加法交换律
- 加法结合律
- 标量乘法结合律
- 标量乘法分配律
## 点积
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

## 叉积

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

## 三重积

三重积是分别使用点积和叉积：
$$
[\pmb{a}, \pmb{b}, \pmb{c}] 
= \pmb{a} \cdot (\pmb{b} \times \pmb{c}) 
= (\pmb{a} \times \pmb{b}) \cdot \pmb{c}) 
$$
三重积的几何意义是，三个向量组成的平行六面体的体积。

正的体积说明三个向量的相乘顺序满足右手定则，负的体积表示不满足。

# 笛卡尔坐标系下的向量

向量本身是不需要坐标系定义的。

为了方便计算，我们可以引入坐标系。

一个自由的向量在定义了基之后才有了行动的能力。

一个向量在不同的基下有不同的表现形式，这些表现形式都是等价的。

最常见的莫过于笛卡尔坐标系，它的基为：$\pmb{e}_1, \pmb{e}_2, \pmb{e}_3$ 

## 指标记法

可以使用在基向量上的分量表示一个向量，称作指标记法。

### 爱因斯坦求和约定

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

### $\delta_{ij}$ 和 $\varepsilon_{ijk}$

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
\begin{align}
& \varepsilon_{ijk}\pmb{e}_k = \pmb{e}_i \times \pmb{e}_j \\
\\
with \quad &\varepsilon_{ijk} =
\begin{cases}
1, ijk = {123,231,312} \\ 
0, ijk=... \\
-1, ijk = {321,213, 132} \\
\end{cases}
\end{align}
$$
重要推论：

- $$\varepsilon_{ijk}\cdot\varepsilon_{kmn} = \delta_{im}\delta_{jn}-\delta_{in}\delta_{jm}$$

- $$\varepsilon_{ijk}\cdot \varepsilon_{ijl}=2\delta_{kl}$$

- 拉格朗日恒等式：


$$
(\pmb{a} \times \pmb{b}) \cdot (\pmb{c} \times \pmb{d}) = (\pmb{a} \cdot \pmb{c}) (\pmb{b}\cdot \pmb{d})-  (\pmb{a} \cdot \pmb{d}) (\pmb{b}\cdot \pmb{c})
$$

## 向量的坐标系变换

坐标系的变换，就是不同坐标系下，分量的关系。

一般说的是坐标系的转动。

坐标系平动并不会造成向量分量的变化，因为不管怎样都是 $u_i \pmb{e}_i$

### 向量的平面坐标系变换

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

### 向量的三维坐标系变换

将上面那个变换带上轴 $x_3$ ，有：
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

# 场函数和 Nabla 算子

我们这里和之后说的函数，大部分情况下都是场函数 Field Function。

场函数，既可以简称为场，也可以简称为函数，逗。

场函数的定义：变量为空间 $\pmb{x}$ 和时间 $t$ 的函数。

根据映射对象属性的不同，有：

- 标量场，如温度场：$\phi (\pmb{x},t)$
- 向量场，如速度场：$\pmb{v}(\pmb{x},t)$
- 张量场，如应力场：$\pmb{\sigma}(\pmb{x},t)$

由于涉及到多个变量，所以很多操作要通过偏微分进行，我们约定了新的记法，有：

- 任意场对时间做偏微分：$\frac{\partial}{\partial t}=\dot{(\bullet)}$
- 任意场对空间做偏微分：$\frac{\partial}{\partial \pmb{x}}= \frac{\partial}{\partial x_i} = (\bullet)_{,i}$
  - 向量场对空间做偏微分：$(\bullet)_{i,j}$
  - 向量场对空间做二次偏微分：$(\bullet)_{i,jk}$
  - 张量场对空间做偏微分：$(\bullet)_{ij,k}$

为了更加方便的描述场函数的各种操作，我们引入 Nabla 算子 $\nabla$ ，来代表对空间的偏微分算符，有：

- 梯度的计算，*Nabla 升阶乘* ：$\nabla(\bullet) = \frac{\partial}{\partial x_i}\pmb{e}_i(\bullet):=grad(\bullet)$
- 散度的计算，*Nabla 降阶乘* ：$\nabla\cdot (\bullet) = \frac{\partial}{\partial x_i}\pmb{e}_i\cdot(\bullet):=div(\bullet)$
- 旋度的计算，*Nabla 不变阶乘* ：$\nabla\times (\bullet) = \frac{\partial}{\partial x_i}\pmb{e}_i\times(\bullet):=curl(\bullet)$

# 标量形向量函数的微分 $\pmb{u}=\pmb{u}(t)$

我们这里以位移函数 $\pmb{u}=\pmb{u}(t)$ 为中心讨论向量函数的微分

## 定义

向量函数的微分的定义和一般的标量函数是一样的，有
$$
\frac{d\mathbf{u}(t)}{dt}:=\lim\limits_{\Delta t\to0}\frac{\Delta\mathbf{u}}{\Delta t}=\lim\limits_{\Delta t\to0}\frac{\mathbf{u}(t+\Delta t)-\mathbf{u}(t)}{\Delta t}
$$

## 一般计算规律

因为从微分计算的定义上看，向量函数和标量函数具有相同的定义，所以除了点积和叉积有些特殊之外，我们熟悉的微分计算规律都可以直接使用，要注意的只是为了叉积要保证顺序，有：

- $$\frac{d}{dt}(\mathbf{u}+\mathbf{v})=\frac{d\mathbf{u}}{dt}+\frac{d\mathbf{v}}{dt}$$
- ...

## **简明计算法则**

$$
\frac{d\mathbf{u}(t)}{dt}=\frac{du_1}{dt}\mathbf{e}_1+\frac{du_2}{dt}\mathbf{e}_2+\frac{du_3}{dt}\mathbf{e}_3=\frac{du_i}{dt}\mathbf{e}_i
$$

## 物理意义

![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\1.png)

位移向量函数对时间微分的物理意义是速度向量，即
$$
\pmb{v}=\frac{d\pmb{u}(t)}{dt}
$$
速率，即速度的模为：
$$
|\frac{d\mathbf{u}}{dt}|=\sqrt{(\frac{du_1}{dt}\mathbf{e}_1)^2+(\frac{du_2}{dt}\mathbf{e}_2)^2+(\frac{du_3}{dt}\mathbf{e}_3)^2}=\sqrt{(\frac{du_1}{dt})^2+(\frac{du_2}{dt})^2+(\frac{du_3}{dt})^2}
$$


路径函数 $$s=s(t)$$ ，其线元与位移线元的模相等
$$
ds=|d\mathbf{u}|
$$
于是，这一小段的速率就为：
$$
\begin{align}
|\pmb{v}|
= \frac {|d\pmb{u}|} {dt}
= \frac {ds} {dt}
\end{align}
$$
切线的方向向量，即速度向量和速率之比，有：
$$
\pmb{\tau} 
= \frac {\pmb{v}} {|\pmb{v}|}
= \frac {d\mathbf{u}/dt} {|d\mathbf{u}/dt|}
$$
引入路径坐标 $s$ ，有：
$$
\pmb{\tau}
= \frac {d\mathbf{u}/dt}{|d\mathbf{u}/dt|}
= \frac {d\mathbf{u} / dt} {ds/dt}
= \frac {d\mathbf{u}} {ds}
$$

### 例：求运动的质点的速度

> 求轨迹曲线
> $$
> \mathbf{x}=\mathbf{x}(t)=\begin{pmatrix}2t^2 \\t^2-4t\\3t-5 \end{pmatrix}
> $$
> 在 $$t=1$$ 时，沿方向 $$\mathbf{a}=\mathbf{e}_1-3\mathbf{e}_2+2\mathbf{e}_3$$ 的速度
>
> 一、运动轨迹曲线的切线速度向量为
> $$
> \begin{align}
> \mathbf{v} 
> & = \frac { d\mathbf{x} } {dt} = \frac {d2t^2}{dt}\mathbf{e}_1 + \frac{d(t^2-4t)}{dt}\mathbf{e}_2+\frac{d(3t-5)}{dt}\mathbf{e}_3 \\
> \\
> &= 4t\mathbf{e}_1+>(2t-4)\mathbf{e}_2+3\mathbf{e}_3
> \end{align}
> $$
> 二、$$t=1$$ 时，速度向量便为：
> $$
> \mathbf{v}|_{t=1}=4\mathbf{e}_1-2\mathbf{e}_2+3\mathbf{e}_3
> $$
> 三、计算 $$\mathbf{a}$$ 方向上的单位向量，有：
> $$
> \mathbf{a}_e = \frac {\mathbf{a}} {|\mathbf{a}|} = ...
> $$
> 四、计算求得 $$t=1$$ 时的切线速度向量在 $$\mathbf{a}$$ 上的速度向量：
> $$
> \mathbf{v}|_{t=1}\cdot \mathbf{a}_e =...
> $$
>

曲率，即曲线方向的变化率，有：
$$
\begin{align}
&\kappa : = |\frac{d\pmb{\tau}}{ds}|=|\frac{d}{ds}(\frac{d\mathbf{u}}{ds})|=|\frac{d^2\mathbf{u}}{ds^2}| \\
&\Rightarrow |d \pmb{\tau}| =\kappa \cdot ds
\end{align}
$$
曲率半径是曲率的倒数，可以通过圆推导出来：
$$
R=\frac{1}{\kappa}
$$
由于切线向量的 $$\pmb{\tau}$$ 方向总是在变化的，所以空间曲线切线的变化量 $$ d\pmb{\tau}$$ 与 $$\pmb{\tau}$$ 是垂直的，有：

![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\4.png)
$$
\begin{align}
 & \frac{d(\pmb{\tau} \cdot \pmb{\tau})}{ds} = \frac{1}{ds} = 0 \\
\Rightarrow & \frac{d[\pmb{\tau}(s)\cdot \pmb{\tau}(s)]}{d\pmb{\tau}(s)}\cdot \frac{d\pmb{\tau}(s)}{ds}=0 \\
\Rightarrow & 2\pmb{\tau}(s) \cdot \frac{d\pmb{\tau}(s)}{ds}=0\\
\Rightarrow & \pmb{\tau}\cdot d\pmb{\tau} =0
\end{align}
$$
$$d\pmb{\tau}$$ 方向上的单位向量$\pmb{\nu}$，有：
$$
\pmb{\nu}
= \pmb{\nu}(s)
= \frac {d\pmb{\tau}} {|d\pmb{\tau}|} 
= \frac {d\pmb{\tau}} {\kappa(s)ds}
$$
使用两个方向上的单位向量，可以定义出垂直于这两个单位向量的单位向量 
$$
\pmb{b}(s)=\pmb{\tau}(s)\times \pmb{\nu}(s)
$$
![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\5.png)

# 梯度

梯度的概念狭义上是针对空间的

所以在讨论梯度计算时，被微分对象，如 $\phi(\pmb{x},t) $ 中的 $t$ 就和常数一样，写的时候带不带上是一样的。

所以我们讨论的对象都是 $\phi(\pmb{x})$

梯度计算将使场函数升阶。

## 标量场的梯度

对标量场进行梯度计算，将使标量场升阶，成为向量场

<u>定义</u>：
$$
grad \big( \phi(\pmb{x}) \big) 
=\nabla \phi(\pmb{x}) 
= \frac{\partial \big( \phi(x_1,x_2,x_3) \big)}{\partial x_i}\pmb{e}_i
$$
<u>物理意义</u>：

由函数微分的定义，我们对标量场函数使用泰勒级数

> 泰勒级数
> $$
> \begin{align}
> f(x) 
> & = \sum_{n=0}^{\infty} \frac{1}{n!} f(x=a)^{(n)}\cdot(x-a)^n \\
> \\
> & =f(x=a)+f'(x=a)\cdot(x-a)+f''(x=a)\cdot(x-a)^2+...
> \end{align}
> $$
> $a=0$ 的泰勒级数称作麦克劳林级数
> $$
> \begin{align}
> f(x)  =f(0)+f'(x=0)\cdot x+f''(x=0)\cdot x^2+...
> \end{align}
> $$
>

展开，有：
$$
\begin{align}
\phi(\pmb{x}+d\pmb{x}) 
& = \phi(\pmb{x}) + \frac{d\phi(\pmb{x})}{d\pmb{x}}\cdot \big( (\pmb{x}+d\pmb{x})-\pmb{x} \big) + \underbrace{...}_{高阶小量} \\
\\
& = \phi(\pmb{x})+ d\phi(\pmb{x}) \\
\\
& = \phi(\pmb{x}) + (\frac{\partial\phi}{\partial x_1} dx_1 + \frac{\partial\phi}{\partial x_2} dx_2 + \frac{\partial\phi}{\partial x_3} dx_3) \\
\\
& =  \phi(\pmb{x}) + \underbrace{\frac{\partial \phi}{\partial x_i}\pmb{e}_i}_{grad(\phi)} \cdot dx_j\pmb{e}_j \\
\\
\Rightarrow d\phi(\pmb{x})
& =   grad(\phi) \cdot d\pmb{x}
\end{align}
$$
标量场的梯度描述了标量场中，空间点上的标量值，在每个方向的变化之和，是三维空间中的“斜率”。

由于三维空间有很多方向可以走，梯度函数指出了，在空间中，朝哪个方向的变化最大。

### 例：二维温度场的梯度

> 求环状二维温度场 $\theta(\pmb{x}) = x_1^2 +x_2^2$ 的梯度
> $$
> \begin{align}
> \nabla \theta 
> = \frac{\partial\theta}{\partial x_i}\pmb{e}_i 
> = \frac{\partial(x_1^2+x_2^2)}{\partial x_1}\pmb{e}_1
> +  \frac{\partial(x_1^2+x_2^2)}{\partial x_2}\pmb{e}_2
> = 2x_1\pmb{e_1}+2x_2\pmb{e}_2
> \end{align}
> $$
> ![1533130678058](/1533130678058.png)
> 可以看出：
>
> - 标量场的梯度函数和标量场垂直
> - $\theta$ 的变化在梯度方向上最大
> - $\theta$ 的变化在垂直于梯度方向的方向上最小

### 曲面的法向量

使用梯度算子我们可以求曲面的法向量。

对三维曲面 $f(x_1,x_2,x_3)=C$ ，有：
$$
\begin{align}
& f\big( x_1(t),x_2(t),x_3(t) \big) =C \\
\\
\Rightarrow \quad 
& \frac{df}{dt}  = 0 \\
\\
\Rightarrow \quad
& \frac{\partial f}{\partial x_1} \frac{dx_1}{dt} 
+ \frac{\partial f}{\partial x_2} \frac{dx_2}{dt}
+ \frac{\partial f}{\partial x_3} \frac{dx_3}{dt}
=\nabla f\cdot \frac{d\pmb{x}}{dt} =0
\end{align}
$$
因为 $d\pmb{x}/dt$ 是切线向量，所以对曲面函数（标量场）求梯度就是求它的法向量。

### 标量场的方向导数

The Directional Derivative

某方向导数，就是在这个方向上的变化值。

采用单位向量，来计算 $d\phi(\pmb{x}) =   \nabla\phi \cdot d\pmb{x}$ 即可得到方向导数。

记标量场 $\phi(\pmb{x})$ 在方向 $\pmb{w}$ 上的方向导数为 $D_{\pmb{w}} (\phi)$，有：
$$
D_{\pmb{w}} (\phi) 
= grad(\phi) \cdot \pmb{e}_{\pmb{w}}
= \nabla \phi \cdot \frac{\pmb{w}}{|\pmb{w}|} 
$$
也可以引入无穷小来进一步准确定义，这里不继续了。

## 向量场的梯度

对向量场做梯度计算，将会使向量场升阶，成为张量场。

请参见张量场的计算。

# 散度

散度的概念上也是针对空间的

散度计算将使场函数降阶。

## 向量场的散度

<u>定义</u>：
$$
div \big( \pmb{u}(\pmb{x})\big) 
= \nabla \cdot \pmb{u} 
= \frac{\partial}{\partial x_i}\pmb{e}_i \cdot u_j \pmb{e}_j 
= \frac{\partial u_i}{\partial x_i}
$$
可见是个有关位置的标量， 原向量场被降阶了。

<u>物理意义</u>：

> 散度描述的是场内的“物质”的损失，可以理解为逸散程度。
>
> 考虑处于速度场 $\pmb{v}(\pmb{x})$ 中的流体，立足于点 $(x_1,x_2,x_3)$ ，取一块边长分别为 $\Delta x_1, \Delta x_2, \Delta x_3$ 的立方体空间进行讨论，如下图：
>
> ![1533135514031](/1533135514031.png)
>
> 讨论沿 $x_1$ 方向的速度 $v_1$ ，右侧面的平均流速 $v_{ave}$ ，可以用泰勒级数描述，有：
> $$
> \begin{align}
> v_{ave} 
> & = v_1(x_1+\Delta x_1, x_2+\frac{1}{2}\Delta x_2, x_3 + \frac{1}{2}\Delta x_3) > \\
> \\
> & = v_1(x_1,x_2,x_3) + 
> (\frac{\partial v_1}{\partial x_1} \Delta x_1 + \frac{\partial v_1}{\partial x_2} > \frac{1}{2} \Delta x_2 + \frac{\partial v_1}{\partial x_3} \frac{1}{2} \Delta x_3)
> \end{align}
> $$
> 单位时间内，从右侧流出的体积就为：$\Delta x_2 \Delta x_3 v_{ave}$
>
> 单位时间内，$x_1$ 方向上的净损失就为：
> $$
> \Delta x_2 \Delta x_3 v_{ave} 
> -\Big( v_1(x_1,x_2,x_3) + 
> \frac{\partial v_1}{\partial x_2} \frac{1}{2} \Delta x_2 + \frac{\partial v_1}{\partial x_3} \frac{1}{2} \Delta x_3) \Big) \\
> \\
> =\Delta x_1 \Delta x_2 \Delta x_3 \cdot \frac{\partial v_1}{\partial x_1}
> $$
> 故，流场中，$x_1$ 方向上，单位体积单位时间内，损失的量就为 $\frac{\partial v_1}{\partial x_1}$
>
> 故，同理，流场中，所有方向上，单位体积单位时间内，损失的量就为：
> $$
> \frac{\partial v_1}{\partial x_1} + \frac{\partial v_2}{\partial x_2} + \frac{\partial v_3}{\partial x_3} 
> = div (\pmb{v})
> $$
> 散度为正说明有损失，散度为零说明没有损失
>
> 散度为正的流体称为可压缩流体，散度为零的流体称为不可压缩流体

向量场的散度，或者说是散度的，更一般的定义，是梯度与二阶单位张量的两点并积，有：
$$
div(\pmb{u})= grad(\pmb{u}): \pmb{I} = \nabla\cdot\pmb{u}
$$

# 旋度
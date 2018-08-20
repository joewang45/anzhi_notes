# 目录

[TOC]

# 1. 一些基本概念

## 1.1 研究原则

我们不讨论真实的物体 Physical Entity。

我们只讨论真实物体在抽象世界中投影，称作 Body。

一个 Body 应该有一些连续的性质，即连续的函数。

一个和真实世界比较接近的抽象世界是欧几里得空间。

我们讨论在欧几里得空间中的 Body。

我们用抽象空间中的位置向量，来描摹这个 Body。

通过研究这些向量的性质，来研究物体的性质。

---

## 1.2 构型和运动

在真实世界和抽象世界之间，我们可以定义出一个映射 $\chi$ 联系物理世界和数学世界，有：
$$
\begin{align}
\pmb{x} & = \chi(M)  := 构型\\
\\
M & = \chi^{-1} (\pmb{x})
\end{align}
$$
严格地说，这个映射 $\chi$ ；不严格地说，这个映射的对象 $\pmb{x}$ ，就称作构型。

![1533825514104](../picture/1533825514104.png)

构型在时间上的变化，构成的类 family，称作这个 Body 的运动 Motion。
$$
\begin{align}
\pmb{x} & = \chi(M,t )  := 运动\\
\\
M & = \chi^{-1} (\pmb{x},t)
\end{align}
$$
![1533993454758](../picture/1533993454758.png)

---

## 1.3 参考构型和即时构型

由于运动是相对的，所以我们需要一个参考构型，来描述运动。

一般地，可以任意选择 $t=t_0$ 时的构型，作为参考构型。

>  我们可以选择 $t=0$ 时的 Initial Configuration；也可以选择内部无应力的 Undeformed Configuration。

在一段时间之后，在 $t$ 时刻，Body 运动到了我们需要研究的这么一个构型，即 Current Configuration。

通过物理实体这么一个中间媒介，我们可以建立即时构型和参考构型之间的映射。

![1533998044479](../picture/1533998044479.png)

要注意的是，在不同时间，可以用不同的坐标系描述物质点。也就是说，$\vec{x}_{t_{0}}$ 和 $\vec{x}_{t_{1}}$ 可以是不同的坐标系，如：

![1534493680187](../picture/1534493680187.png)

但是在实践中，我们经常还是使用同一个，虽然有时候使用不同的坐标系会有它的用处。

![1534493706586](../picture/1534493706586.png)

由于运动是相对的，我们既可以站在 $\pmb{X}$ 上看 $\pmb{x}$（参考系不动）；也可以站在 $\pmb{x}$ 上看 $\pmb{X}$（参考系运动）。

参考系不动的考察方式，称作拉格朗日描述；参考系运动的考察方式，称作欧拉描述。

- 拉格朗日描述：$\pmb{x}=\pmb{x}(\pmb{X},t)$
- 欧拉描述：$\pmb{X}=\pmb{X}(\pmb{x}(t),t)$

这两种描述方式在描述小变形时没有区别，在描述有限变形时区别较大。

为了说明这两者的关系和区别，我们引入两个例子：

### 例1：位移、速度和加速度

>位移向量，是位置向量的差，有：
>$$
>\pmb{u}=\pmb{x}-\pmb{X}
>$$
>使用固定参考系（拉格朗日描述），有：
>
>- 位移 ：$ \pmb{u}=\pmb{x}(\pmb{X},t)-\pmb{X}$
>- 速度：$\pmb{v}=\dot{\pmb{u}}=\frac{d\big(\pmb{x(\pmb{X},t})-\pmb{X}\big)}{dt}=\dot{\pmb{x}}$
>- 加速度：$\pmb{a}=\dot{\pmb{v}}=\ddot{\pmb{x}}$
>
>使用运动参考系（欧拉描述），有：
>
>- 位移：$\pmb{u}=\pmb{x}(t)-\pmb{X}(\pmb{x}(t),t)=\pmb{u}\big(\pmb{x}(t),t\big)$
>- 速度：$\pmb{v}=\dot{\pmb{u}}=\frac{d\pmb{u}\big(\pmb{x}(t),t\big)}{dt}=\frac{\partial\pmb{u}\big(\pmb{x}(t),t\big)}{\partial\pmb{x}(t)}\cdot\frac{d\pmb{x}(t)}{dt}+\frac{\partial\pmb{u}\big(\pmb{x}(t),t\big)}{\partial t}\cdot\frac{dt}{dt}=grad(\pmb{x})\cdot\dot{\pmb{x}}+\frac{\partial\pmb{u}}{\partial t}$
>- 加速度：$\pmb{a}=\frac{d\pmb{v}}{dt} = grad(\pmb{v})\cdot\dot{\pmb{x}}+\frac{\partial\pmb{v}}{\partial t}$

### 例2：杆的运动

![1534498177237](../picture/1534498177237.png)

>使用固定参考系（拉格朗日描述），有：
>- $$ \pmb{x} = \pmb{x}(\pmb{X},t) =  \begin{pmatrix}  x_1(\pmb{X},t) \\ x_2(\pmb{X},t) \\ x_3(\pmb{X},t) \end{pmatrix}  =  \begin{pmatrix}  3X_1 t+X_1+t \\ X_2 \\ X_3  \end{pmatrix} $$
>- 拉格朗日告诉我们，$t=0$ 时，原位置是 $\pmb{X}$ 的点，现在处于位置  $\pmb{x}$。
>
>我们可以很容易得到反过来的关系。
>
>使用运动参考系（欧拉描述），有：
>- $$ \pmb{X} = \pmb{X}(\pmb{x},t) = \begin{pmatrix} \frac{x_1-t}{1+3t} \\ x_2 \\ x_3  \end{pmatrix} $$
>- 欧拉告诉我们，$t$ 时刻，处于  $\pmb{x}$ 的点，其原位置 $\pmb{X}$

# 2. 变形和应变

## 2.1 变形梯度

> Deformation Gradient
>
>  变形梯度，是 “向量场的梯度” 这一数学概念在连续体力学中最重要的应用。
>
> 考虑某初始构型中的两点 $p_0$ 和 $q_0$ 
>
> 在初始时刻
>
> - $p_0$ 的位置向量为 $\pmb{X}$ (使用大写的 $\pmb{X}$ 是一种惯例）
> - $q_0$ 的位置是是 $\pmb{X}+d\pmb{X}$
>
> 物体经过变形，获得了新的构型；在对应的终止构型中，同样的两点，称作 $p_f$ 和 $q_f$ 
>
> 对应的质点位移向量为：
>
> - $p_0 \to p_f: \pmb{u}=\pmb{u}(\pmb{X})$
> - $q_0 \to q_f: \pmb{u}=\pmb{u}(\pmb{X}+d\pmb{X})$
>
> 有图：
>
> ![1533556273711](../picture/1533556273711.png)
>
> 一个物体的变形，即两点之间距离的变化，有：$ d\pmb{x} - d\pmb{X} $
>
> 根据==向量加减法==[^核心组件]，有：
> $$
> \begin{align}
> \Big( d\pmb{X} + \pmb{u}(\pmb{X}+d\pmb{X}) \Big) - \pmb{u}(\pmb{X}) 
> & = d\pmb{x} \\
> \\
> \Rightarrow \quad 
> d\pmb{x} & = d\pmb{X} + d\pmb{u}(\pmb{X})\\
> 
> \end{align}
> $$
> 由向量场的梯度：
> $$
> grad(\pmb{u}) 
>  = \frac{\partial u_i}{\partial X_j}  (\pmb{e}_i \otimes \pmb{e}_j)
> = \frac{d\pmb{u}}{d\pmb{X}}
> $$
> 可得：
> $$
> d\pmb{x}  =d\pmb{X} + \underbrace{grad(\pmb{u}) [d\pmb{X}]}_{变形量}
> $$
>
>
> 位移场的梯度，对未变形体的线元做的变换，得到的线元，就是物体的变形。
>
> 变形梯度并不能刻画物体在空间中是怎么位移的。

上面这个推导是从一个固定的坐标系出发的，所以是拉格朗日描述。

![1534506051427](../picture/1534506051427.png)

在拉格朗日描述下 $d\pmb{u}=d\pmb{x}$，于是对变形梯度 $\pmb{F}$，有：
$$
\pmb{F}=grad(\pmb{u})=\frac{d\pmb{u}}{d\pmb{X}}=\frac{d\pmb{x}}{d\pmb{X}}=\frac{\partial x_i}{\partial X_j} \pmb{e}_i\otimes\pmb{e}_j
$$



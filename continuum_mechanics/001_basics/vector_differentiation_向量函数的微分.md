# 0. 目录
[TOC]
# 楔子：场函数和 Nabla 算子

我们这里和之后说的函数，大部分情况下都是场函数 Field Function。

场函数，既可以简称为场，也可以简称为函数，逗。

场函数的定义：变量为空间 $\mathbf{x}$ 和时间 $t$ 的函数。

根据映射对象属性的不同，有：

- 标量场，如温度场：$\phi (\mathbf{x},t)$
- 向量场，如速度场：$\mathbf{v}(\mathbf{x},t)$
- 张量场，如应力场：$\mathbf{\sigma}(\mathbf{x},t)$

由于涉及到多个变量，所以很多操作要通过偏微分进行，我们约定了新的记法，有：

- 任意场对时间做偏微分：$\frac{\partial}{\partial t}=\dot{(\bullet)}$
- 任意场对空间做偏微分：$\frac{\partial}{\partial \mathbf{x}}= \frac{\partial}{\partial x_i} = (\bullet)_{,i}$

  - 向量场对空间做偏微分：$(\bullet)_{i,j}$
  - 向量场对空间做二次偏微分：$(\bullet)_{i,jk}$
  - 张量场对空间做偏微分：$(\bullet)_{ij,k}$

为了更加方便的描述场函数的各种操作，我们引入 Nabla 算子 $\nabla$ ，来代表对空间的偏微分算符，有：

- 梯度的计算，*Nabla 升阶乘* ：$\nabla(\bullet) = \frac{\partial}{\partial x_i}\mathbf{e}_i(\bullet):=grad(\bullet)$
- 散度的计算，*Nabla 降阶乘* ：$\nabla\cdot (\bullet) = \frac{\partial}{\partial x_i}\mathbf{e}_i\cdot(\bullet):=div(\bullet)$
- 旋度的计算，*Nabla 不变阶乘* ：$\nabla\times (\bullet) = \frac{\partial}{\partial x_i}\mathbf{e}_i\times(\bullet):=curl(\bullet)$

# 1. 变量为标量的向量函数的微分 $\mathbf{u}=\mathbf{u}(t)$

我们这里以位移函数 $\mathbf{u}=\mathbf{u}(t)$ 为中心讨论向量函数的微分

## 1.1 定义

向量函数的微分的定义和一般的标量函数是一样的，有
$$
\frac{d\mathbf{u}(t)}{dt}:=\lim\limits_{\Delta t\to0}\frac{\Delta\mathbf{u}}{\Delta t}=\lim\limits_{\Delta t\to0}\frac{\mathbf{u}(t+\Delta t)-\mathbf{u}(t)}{\Delta t}
$$

## 1.2 一般计算规律

因为从微分计算的定义上看，向量函数和标量函数具有相同的定义，所以除了点积和叉积有些特殊之外，我们熟悉的微分计算规律都可以直接使用，要注意的只是为了叉积要保证顺序，有：

- $$\frac{d}{dt}(\mathbf{u}+\mathbf{v})=\frac{d\mathbf{u}}{dt}+\frac{d\mathbf{v}}{dt}$$
- ...

## 1.3 **简明计算法则**

$$
\frac{d\mathbf{u}(t)}{dt}=\frac{du_1}{dt}\mathbf{e}_1+\frac{du_2}{dt}\mathbf{e}_2+\frac{du_3}{dt}\mathbf{e}_3=\frac{du_i}{dt}\mathbf{e}_i
$$

## 1.4 物理意义

![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\1.png)

位移向量函数对时间微分的物理意义是速度向量，即
$$
\mathbf{v}=\frac{d\mathbf{u}(t)}{dt}
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
|\mathbf{v}|
= \frac {|d\mathbf{u}|} {dt}
= \frac {ds} {dt}
\end{align}
$$

切线的方向向量，即速度向量和速率之比，有：
$$
\mathbf{\tau} 
= \frac {\mathbf{v}} {|\mathbf{v}|}
= \frac {d\mathbf{u}/dt} {|d\mathbf{u}/dt|}
$$

引入路径坐标 $s$ ，有：
$$
\mathbf{\tau}
= \frac {d\mathbf{u}/dt}{|d\mathbf{u}/dt|}
= \frac {d\mathbf{u} / dt} {ds/dt}
= \frac {d\mathbf{u}} {ds}
$$

### 例：求运动的质点的速度

> 求轨迹曲线
>
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
>
>
>二、$$t=1$$ 时，速度向量便为：
>$$
>\mathbf{v}|_{t=1}=4\mathbf{e}_1-2\mathbf{e}_2+3\mathbf{e}_3
>$$
>三、计算 $$\mathbf{a}$$ 方向上的单位向量，有：
>$$
>\mathbf{a}_e = \frac {\mathbf{a}} {|\mathbf{a}|} = ...
>$$
>四、计算求得 $$t=1$$ 时的切线速度向量在 $$\mathbf{a}$$ 上的速度向量：
>$$
>\mathbf{v}|_{t=1}\cdot \mathbf{a}_e =...
>$$
>

曲率，即曲线方向的变化率，有：
$$
\begin{align}
&\kappa : = |\frac{d\mathbf{\tau}}{ds}|=|\frac{d}{ds}(\frac{d\mathbf{u}}{ds})|=|\frac{d^2\mathbf{u}}{ds^2}| \\
&\Rightarrow |d \mathbf{\tau}| =\kappa \cdot ds
\end{align}
$$
曲率半径是曲率的倒数，可以通过圆推导出来：
$$
R=\frac{1}{\kappa}
$$

由于切线向量的 $$\mathbf{\tau}$$ 方向总是在变化的，所以空间曲线切线的变化量 $$ d\mathbf{\tau}$$ 与 $$\mathbf{\tau}$$ 是垂直的，有：

![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\4.png)

$$
\begin{align}
 & \frac{d(\mathbf{\tau} \cdot \mathbf{\tau})}{ds} = \frac{1}{ds} = 0 \\
\Rightarrow & \frac{d[\mathbf{\tau}(s)\cdot \mathbf{\tau}(s)]}{d\mathbf{\tau}(s)}\cdot \frac{d\mathbf{\tau}(s)}{ds}=0 \\
\Rightarrow & 2\mathbf{\tau}(s) \cdot \frac{d\mathbf{\tau}(s)}{ds}=0\\
\Rightarrow & \mathbf{\tau}\cdot d\mathbf{\tau} =0
\end{align}
$$

$$d\mathbf{\tau}$$ 方向上的单位向量$\mathbf{\nu}$，有：

$$
\mathbf{\nu}
= \mathbf{\nu}(s)
= \frac {d\mathbf{\tau}} {|d\mathbf{\tau}|} 
= \frac {d\mathbf{\tau}} {\kappa(s)ds}
$$

使用两个方向上的单位向量，可以定义出垂直于这两个单位向量的单位向量 
$$
\mathbf{b}(s)=\mathbf{\tau}(s)\times \mathbf{\nu}(s)
$$
![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\5.png)

# 2. 梯度

梯度的概念狭义上是针对空间的

所以在讨论梯度计算时，被微分对象，如 $\phi(\mathbf{x},t) $ 中的 $t$ 就和常数一样，写的时候带不带上是一样的。

所以我们讨论的对象都是 $\phi(\mathbf{x})$

梯度计算将使场函数升阶。

## 2.1 标量场的梯度

对标量场进行梯度计算，将使标量场升阶，成为向量场

<u>定义</u>：
$$
grad \big( \phi(\mathbf{x}) \big) 
=\nabla \phi(\mathbf{x}) 
= \frac{\partial \big( \phi(x_1,x_2,x_3) \big)}{\partial x_i}\mathbf{e}_i
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
\phi(\mathbf{x}+d\mathbf{x}) 
& = \phi(\mathbf{x}) + \frac{d\phi(\mathbf{x})}{d\mathbf{x}}\cdot \big( (\mathbf{x}+d\mathbf{x})-\mathbf{x} \big) + \underbrace{...}_{高阶小量} \\
\\
& = \phi(\mathbf{x})+ d\phi(\mathbf{x}) \\
\\
& = \phi(\mathbf{x}) + (\frac{\partial\phi}{\partial x_1} dx_1 + \frac{\partial\phi}{\partial x_2} dx_2 + \frac{\partial\phi}{\partial x_3} dx_3) \\
\\
& =  \phi(\mathbf{x}) + \underbrace{\frac{\partial \phi}{\partial x_i}\mathbf{e}_i}_{grad(\phi)} \cdot dx_j\mathbf{e}_j \\
\\
\Rightarrow d\phi(\mathbf{x})
& =   grad(\phi) \cdot d\mathbf{x}
\end{align}
$$
标量场的梯度描述了标量场中，空间点上的标量值，在每个方向的变化之和，是三维空间中的“斜率”。

由于三维空间有很多方向可以走，梯度函数指出了，在空间中，朝哪个方向的变化最大。

### 例：二维温度场的梯度

>求环状二维温度场 $\theta(\mathbf{x}) = x_1^2 +x_2^2$ 的梯度
>$$
>\begin{align}
>\nabla \theta 
>= \frac{\partial\theta}{\partial x_i}\mathbf{e}_i 
>= \frac{\partial(x_1^2+x_2^2)}{\partial x_1}\mathbf{e}_1
>+  \frac{\partial(x_1^2+x_2^2)}{\partial x_2}\mathbf{e}_2
>= 2x_1\mathbf{e_1}+2x_2\mathbf{e}_2
>\end{align}
>$$
>![1533130678058](..\picture\1533130678058.png)
>可以看出：
>
>- 标量场的梯度函数和标量场垂直
>- $\theta$ 的变化在梯度方向上最大
>- $\theta$ 的变化在垂直于梯度方向的方向上最小

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
=\nabla f\cdot \frac{d\mathbf{x}}{dt} =0
\end{align}
$$
因为 $d\mathbf{x}/dt$ 是切线向量，所以对曲面函数（标量场）求梯度就是求它的法向量。

### 标量场的方向导数

The Directional Derivative

函数 $\phi(\pmb{x})$ 在某方向 $\pmb{w}$ 的方向导数，就是函数在这个方向上的单位变化量。

> 有：

$$
d\phi=\phi(\pmb{x}+\pmb{w})-\phi(\pmb{x})
$$

引入一个新变量 $\varepsilon\subset[0,1]$ ，考察函数 $\phi(\pmb{x}+\varepsilon\pmb{w})$。



采用方向 $\pmb{w}$ 的单位向量，来代替 $d\phi(\mathbf{x}) =   \nabla\phi \cdot d\mathbf{x}$ 的 $d\pmb{x}$ 即可得到方向导数。

记标量场 $\phi(\mathbf{x})$ 在方向 $\mathbf{w}$ 上的方向导数为 $D_{\mathbf{w}} (\phi)$，有：
$$
D_{\mathbf{w}} (\phi) 
= grad(\phi) \cdot \mathbf{e}_{\mathbf{w}}
= \nabla \phi \cdot \frac{\mathbf{w}}{|\mathbf{w}|}
$$
也可以引入无穷小来进一步准确定义，这里不继续了。

## 2.2 向量场的梯度

对向量场做梯度计算，将会使向量场升阶，成为张量场。

请参见张量场的计算。

# 3. 散度

散度的概念上也是针对空间的

散度计算将使场函数降阶。

## 3.1 向量场的散度

<u>定义</u>：
$$
div \big( \mathbf{u}(\mathbf{x})\big) 
= \nabla \cdot \mathbf{u} 
= \frac{\partial}{\partial x_i}\mathbf{e}_i \cdot u_j \mathbf{e}_j 
= \frac{\partial u_i}{\partial x_i}
$$
可见是个有关位置的标量， 原向量场被降阶了。

<u>物理意义</u>：

> 散度描述的是场内的“物质”的损失，可以理解为逸散程度。
>
> 考虑处于速度场 $\mathbf{v}(\mathbf{x})$ 中的流体，立足于点 $(x_1,x_2,x_3)$ ，取一块边长分别为 $\Delta x_1, \Delta x_2, \Delta x_3$ 的立方体空间进行讨论，如下图：
>
> ![1533135514031](..\picture\1533135514031.png)
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
> = div (\mathbf{v})
> $$
> 散度为正说明有损失，散度为零说明没有损失
>
> 散度为正的流体称为可压缩流体，散度为零的流体称为不可压缩流体

向量场的散度，或者说是散度的，更一般的定义，是梯度与二阶单位张量的两点并积，有：
$$
div(\mathbf{u})= grad(\mathbf{u}): \mathbf{I} = \nabla\cdot\mathbf{u}
$$

# 4. 旋度


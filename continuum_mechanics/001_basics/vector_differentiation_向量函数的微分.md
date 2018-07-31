[TOC]
# 1. 变量为标量的向量函数的微分

我们这里以位移函数 $$\mathbf{u}=\mathbf{u}(t)$$ 为中心讨论向量函数的微分

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

### 1.4.1 速度向量 $\pmb{v}$ 

位移向量函数对时间微分的物理意义是速度向量，即
$$
\pmb{v}=\frac{d\pmb{u}(t)}{dt}
$$

### 1.4.2 速率 $|\pmb{v}|$

速率，即速度的模为：
$$
|\frac{d\mathbf{u}}{dt}|=\sqrt{(\frac{du_1}{dt}\mathbf{e}_1)^2+(\frac{du_2}{dt}\mathbf{e}_2)^2+(\frac{du_3}{dt}\mathbf{e}_3)^2}=\sqrt{(\frac{du_1}{dt})^2+(\frac{du_2}{dt})^2+(\frac{du_3}{dt})^2}
$$

### 1.4.3 使用路径坐标 $s$ 

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

### 1.4.4 切线向量 $\pmb{\tau}$

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

---

### 例题：求运动的质点的速度

求轨迹曲线
$$
\mathbf{x}=\mathbf{x}(t)=\begin{pmatrix}2t^2 \\t^2-4t\\3t-5 \end{pmatrix}
$$
在 $$t=1$$ 时，沿方向 $$\mathbf{a}=\mathbf{e}_1-3\mathbf{e}_2+2\mathbf{e}_3$$ 的速度

一、运动轨迹曲线的切线速度向量为
$$
\mathbf{v} = \frac { d\mathbf{x} } {dt} = \frac {d2t^2}{dt}\mathbf{e}_1 + \frac{d(t^2-4t)}{dt}\mathbf{e}_2+\frac{d(3t-5)}{dt}\mathbf{e}_3= 4t\mathbf{e}_1+(2t-4)\mathbf{e}_2+3\mathbf{e}_3
$$

二、$$t=1$$ 时，速度向量便为：
$$
\mathbf{v}|_{t=1}=4\mathbf{e}_1-2\mathbf{e}_2+3\mathbf{e}_3
$$
三、计算 $$\mathbf{a}$$ 方向上的单位向量，有：
$$
\mathbf{a}_e = \frac {\mathbf{a}} {|\mathbf{a}|} = ...
$$
四、计算求得 $$t=1$$ 时的切线速度向量在 $$\mathbf{a}$$ 上的速度向量：
$$
\mathbf{v}|_{t=1}\cdot \mathbf{a}_e =...
$$

---

### 1.4.5 曲率 $\kappa$ 和曲率半径 $R$

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

### 1.4.6 切线向量 $\pmb{\tau}$ 的变化量 $d\pmb{\tau}$

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

未完待续。。
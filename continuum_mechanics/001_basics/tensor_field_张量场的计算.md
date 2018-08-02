# 0. 目录

[TOC]

这里我们对向量场的微分和积分进行进一步的推广。

# 1. 张量函数

## 1.1  ${d\pmb{T}(t)}/{dt}$

张量函数的微分结果仍然是张量。

微分的定义：
$$
\frac{d\pmb{T}(t)}{dt}
= \lim\limits_{\Delta t \to 0} 
\frac{\pmb{T}(t+\Delta t) - \pmb{T}(t)}{\Delta t}
$$
微分的简明计算：
$$
\frac{d\pmb{T}(t)}{dt} 
= \frac{T_{ij}(t)}{dt} \pmb{e}_i \otimes \pmb{e}_j
$$

由于定义相同，故张量函数的微分计算法则仍然和一般的微分法则一致。

注意要保证被微分对象之间的顺序，有：

- $\frac{d}{dt}(\pmb{T}_1+\pmb{T}_2) = \frac{d}{dt}\pmb{T}_1 + \frac{d}{dt}\pmb{T}_2$
- $\frac{d}{dt}\big( \alpha(t)\pmb{T} \big) = \alpha(t)\frac{d\pmb{T}}{dt}+ \frac{d\alpha(t)}{dt}\pmb{T}$
- $\frac{d}{dt}(\pmb{T} \pmb{a}) = \pmb{T}\frac{d\pmb{a}}{dt} + \frac{d\pmb{T}}{dt}\pmb{a}$
- $\frac{d}{dt}(\pmb{T}_1 \pmb{T}_2) = \pmb{T}_1\frac{d\pmb{T}_2}{dt} + \frac{d\pmb{T}_1}{dt}\pmb{T}_2$
- $\frac{d}{dt}(\pmb{T}^T) = (\frac{d\pmb{T}}{dt})^T​$

## 1.2 向量场的梯度

梯度是斜率从一维到三维的推广。

考虑向量场函数 $\pmb{u}=\pmb{u}(\pmb{x})$ 的微小变化 $d\pmb{u}$，有：
$$
\begin{align}
d\pmb{u} 
& = \frac{\partial u_i\pmb{e}_i}{\partial x_j} dx_j 
= \frac{\partial u_i}{\partial x_j} dx_j \pmb{e}_i 
= \frac{\partial u_i}{\partial x_j} dx_k \pmb{e}_i(\pmb{e}_j \cdot \pmb{e}_k) \\
\\
& = \frac{\partial u_i}{\partial x_j} dx_k (\pmb{e}_i \otimes \pmb{e}_j) \pmb{e}_k \\
\\
& = \frac{\partial u_i}{\partial x_j}  (\pmb{e}_i \otimes \pmb{e}_j) dx_k \pmb{e}_k \\
\\ & \stackrel{!}{=}
grad(\pmb{u}) d\pmb{x} \\
\\

\Rightarrow \quad 
grad(\pmb{u}) 
& = \frac{\partial u_i}{\partial x_j}  (\pmb{e}_i \otimes \pmb{e}_j)
= \frac{d\pmb{u}}{d\pmb{x}}
\end{align}
$$
我们也可以使用 Nabla 算子来定义梯度，有多种方式：

- 直接定义，得到我们这里的梯度的转置，有：
  $$
  \nabla \otimes \pmb{u} 
  = \frac{\partial}{\partial x_i}\pmb{e}_i \otimes u_j \pmb{e}_j 
  =  \frac{\partial u_j}{\partial x_i}\pmb{e}_i \otimes \pmb{e}_j
  = \Big( grad(\pmb{u})\Big)^T
  $$
  虽然也有把这个定义为梯度的，但是为了区分，我们记它为 $\nabla \otimes \pmb{u}$ 

- 用转置的方法定义：
  $$
  grad(\pmb{u}) = (\nabla \otimes \pmb{u})^T
  $$

- 改变 Nabla 算符的意义，不再是按顺序乘，而是把算符的对象包进去，有：
  $$
  \nabla \otimes (\bullet) 
  = \frac{\partial (\bullet)}{\partial x_i} \otimes \pmb{e}_i 
  = grad(\bullet)
  $$


### 向量场梯度的物理意义

某向量场的梯度是一个线性变换，它做了一个什么事呢，让我们具体来看一看。

让我们用 MatLab 画出二维向量场 $\pmb{u} = (2x_1 + x_2)\pmb{e}_1+(x_1-x_2)\pmb{e}_2$ 的图像

```matlab
[x,y] = meshgrid(-5:1:5,-5:1:5);
u = 2*x+y;
v = x-y;
figure
quiver(x,y,u,v)
```

![1533220645218](..\picture\1533220645218.png)

其梯度为：

$$
grad (\pmb{u}) 
= \begin{pmatrix}
\frac{\partial u_1}{\partial x_1} & \frac{\partial u_1}{\partial x_2} \\
\frac{\partial u_2}{\partial x_1} & \frac{\partial u_2}{\partial x_2} \\
\end{pmatrix}
= \begin{pmatrix}
2 & 1 \\
1 & -1 \\
\end{pmatrix}
$$
让我们取向量场中任意一点的位置向量，如：
$$
\pmb{p}=\begin{pmatrix} p_1 \\ p_2\end{pmatrix} = \begin{pmatrix} 4 \\ 3\end{pmatrix}
$$

这个位置向量的单位向量为

$$
\pmb{e}_p =\frac{\pmb{p}}{|\pmb{p}|} = \frac{1}{\sqrt{p_1^2+p_2^2}} \cdot \begin{pmatrix}p_1 \\ p_2 \end{pmatrix} = \begin{pmatrix} 4/5 \\ 3/5\end{pmatrix} 
$$

用这个梯度对这个单位向量做变换，有：
$$
grad (\pmb{u}) [\pmb{e}_p]
= \begin{pmatrix} 2 & 1 \\ 1 & -1 \\ \end{pmatrix} 
\begin{pmatrix} 4/5 \\ 3/5 \\ \end{pmatrix}
= \begin{pmatrix} 11/5 \\ 1/5 \\ \end{pmatrix}
$$
其正好就是向量场在点 $\pmb{P}$ 的向量值！

*可以看出，向量场的梯度这一张量在计算的时候，就正好把向量场的在各个坐标轴的分量剥离出来，再重新组合成新的张量*。

*用这个张量对某方向上的单位向量做变换，显然就是将这个单位向量按照这个向量场做拉伸、缩放，便会得到向量场中某点的向量。*

==总之，向量场的张量一个线性变换，你给它一个场里的一个点的位置向量，它便会告诉你，这个点对应的地方的向量是多少。==

感觉脱裤子放屁。

### **变形梯度**

Deformation Gradient

变形梯度，是 “向量场的梯度” 这一数学概念在连续体力学中最重要的应用。


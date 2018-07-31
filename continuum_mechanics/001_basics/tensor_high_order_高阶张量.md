[TOC]

# 1. 高阶张量的一般形式

参照二阶张量，高阶张量的一般形式有：

- 三阶张量 Triadics
  $$
  \underline{\underline{\underline{\pmb{T}}}}=T_{jik} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k
  $$

- 四阶张量 Tetradics
  $$
  \underline{\underline{\underline{\underline{\pmb{T}}}}}=T_{jikl} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k\otimes \pmb{e}_l
  $$



一个经典的高阶张量是 permutation tensor：
$$
\underline{\underline{\underline{\pmb{E}}}} 
= \varepsilon_{jik}\pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k
$$
显然，$n$ 阶张量在 $3$ 维空间中，有 $3^n$ 个分量

# 2. 四阶张量的性质

Fourth Order Tensors

四阶张量是除二阶张量之外最常见的张量。

## 2.1 四阶张量的正整数幂

$$
\underline{\underline{\underline{\underline{T}}}}^n 
=\underbrace{\underline{\underline{\underline{\underline{T}}}}:\underline{\underline{\underline{\underline{T}}}}:...:\underline{\underline{\underline{\underline{T}}}}}_{n}
$$

## 2.2 四阶张量的转置

Transpose of a Fourth Order Tensor

> 二阶张量转置的定义
> $$
> \pmb{a} \cdot \pmb{A}^T \cdot \pmb{b} = \pmb{b} \cdot \pmb{A}\cdot \pmb{a}
> $$
>

定义：
$$
\pmb{A} : \underline{\underline{\underline{\underline{T}}}}^T : \pmb{B} 
= \pmb{B} : \underline{\underline{\underline{\underline{T}}}} : \pmb{A}
$$
分量计算方式：
$$
T^T_{ijkl} = T_{klij}
$$
性质：

- $(\underline{\underline{\underline{\underline{T}}}}^T)^T = \underline{\underline{\underline{\underline{T}}}}$
- $(\pmb{A} \otimes \pmb{B})^T = \pmb{B} \otimes \pmb{A}$

## 2.3 四阶的恒等张量

A Fourth Order Identity Tensor

定义：
$$
\begin{align}
\underline{\underline{\underline{\underline{I}}}} : \pmb{T} & = \pmb{T} \\
\\
\tilde{\underline{\underline{\underline{\underline{I}}}}} : \pmb{T} &= \pmb{T}^T
\end{align}
$$
用向量圈乘表示：
$$
\begin{align}
\underline{\underline{\underline{\underline{I}}}} 
& = \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_i \otimes \pmb{e}_j \\
\\
\tilde{\underline{\underline{\underline{\underline{I}}}}}
& = \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_j \otimes \pmb{e}_i \\
\\
\pmb{I} \otimes \pmb{I} 
& = \pmb{e}_i \otimes \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_j \\
\end{align}
$$
一些性质：

- 对对称张量 $\pmb{S}$ ，有：$\tilde{\underline{\underline{\underline{\underline{I}}}}} :\pmb{S} = \underline{\underline{\underline{\underline{I}}}}: \pmb{S} = \pmb{S}$
- $\pmb{I} \otimes \pmb{I} : \pmb{T} = tr(\pmb{T})\pmb{I}$
- $\pmb{I} \otimes \pmb{I} : \pmb{T} : \pmb{T} = \big(tr(\pmb{T})\big)^2$
- $\underline{\underline{\underline{\underline{I}}}}  : \pmb{T} : \pmb{T} = tr (\pmb{T}^T\pmb{T})$
- $\tilde{\underline{\underline{\underline{\underline{I}}}}} : \pmb{T} : \pmb{T} = tr(\pmb{T}^2)$

可以使用四阶恒等张量，求二阶张量的对称部分和反对称部分，有：
$$
\begin{align}
sym(\pmb{T}) 
& = \frac{1}{2} (\underline{\underline{\underline{\underline{I}}}} + \tilde{\underline{\underline{\underline{\underline{I}}}}}):\pmb{T} \\
\\
skew(\pmb{T}) 
& = \frac{1}{2} (\underline{\underline{\underline{\underline{I}}}} - \tilde{\underline{\underline{\underline{\underline{I}}}}}):\pmb{T} \\
\\
\end{align}
$$

## 2.4 投影张量

A Fourth-order Projection Tensor

可以使用四阶恒等张量，求二阶张量的偏量部分，有：
$$
\begin{align}
dev(\pmb{T}) & = \pmb{T} - \frac{1}{3}\cdot tr(\pmb{T})\cdot \pmb{I} 
= \underline{\underline{\underline{\underline{I}}}} :\pmb{T} - \frac{1}{3} \pmb{I} \otimes \pmb{I} : \pmb{T}\\
& = \big( \underline{\underline{\underline{\underline{I}}}} - \frac{1}{3} \pmb{I} \otimes \pmb{I} \big):\pmb{T} := \underline{\underline{\underline{\underline{P}}}}:A
\end{align}
$$
由此我们定义出了投影张量。

投影张量的性质：

- $\underline{\underline{\underline{\underline{P}}}}: \pmb{A} :\pmb{I} =0$ 
- $\underline{\underline{\underline{\underline{P}}}}^n = \underline{\underline{\underline{\underline{P}}}}$

我们前面介绍到的各种对二阶张量的算符，实际上都是四阶投影张量。

# 3. 高阶张量的对称性

高阶张量的对称性很难直观的看出来。

我们需要通过判断其分量的关系来判断其对称性。

对称的张量独立的元素较少。

## 3.1 三阶张量的对称性

一个完全对称的三阶张量，其分量怎么摆都是无所谓的，有：
$$
\begin{align}
\underline{\underline{\underline{T}}} 
& = T_{ijk} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
& = T_{ikj} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
& = T_{kij} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
& = ...
\end{align}
$$
一个不完全对称的三阶张量，其某两个分量可以随意摆，如：
$$
\begin{align}
\underline{\underline{\underline{T}}} 
& = T_{ijk} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
& = T_{jik} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
\end{align}
$$
同样的也可以判断一个三阶张量的反对称性，有：
$$
\begin{align}
\underline{\underline{\underline{T}}} 
& = T_{ijk} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
& = T_{kij} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
& = T_{jki} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
& = -T_{kji} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
& = -T_{jik} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
& = -T_{ikj} \pmb{e}_i \otimes \pmb{e}_j \otimes \pmb{e}_k  \\
\end{align}
$$

## 3.2 四阶张量的对称性

四阶张量的 minor symmetries：
$$
C_{ijkl} = C_{jikl} \\
C_{ijkl} = C_{ijlk}
$$
四阶张量的 major symmetries：
$$
C_{ijkl} = C_{jikl} \\
C_{ijkl} = C_{ijlk} \\
C_{ijkl} = C_{klij} \\
$$
对一个对称的张量 $\underline{\underline{\underline{\underline{T}}}}$，它和它的转置应该是一样的，于是也有：
$$
\pmb{A} : \underline{\underline{\underline{\underline{T}}}} : \pmb{B} 
= \pmb{B} : \underline{\underline{\underline{\underline{T}}}} : \pmb{A}
$$



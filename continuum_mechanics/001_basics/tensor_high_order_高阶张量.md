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

## 2.1 四阶张量的转置

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

## 2.2 四阶的恒等张量

A Fourth Order Identity Tensor

未完待续。。。
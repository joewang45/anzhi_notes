[TOC]

# 1. 一般的张量

![](..\picture\10.png)

张量是数的更一般的概念：

- 零阶张量是标量
- 一阶张量是向量
- 二阶张量是（狭义上的）张量
- ...

二阶张量是最重要的张量，在连续体力学、相对论、电磁学和量子力学中有重要的应用。

张量的记法

- 加粗的大写拉丁字母 $\pmb{T}$
- 加粗的小写希腊字母 $\pmb{\sigma}$

## 1.1 定义张量为线性算子

我们可以将一阶张量定义为，将另一个一阶张量映射到零阶张量上的线性算子：
$$
\underbrace{\pmb{a} }_{一}
(\underbrace{\pmb{v} }_{一})
= \pmb{a}
\cdot\ 
\pmb{v} 
= \underbrace{\alpha}_{零}
$$
同样的，二阶张量可以定义为，将一个一阶张量映射到另一个一阶张量上的线性算子：
$$
\underbrace{\pmb{T}}_{二}
( \underbrace{\pmb{v}}_{一}) 
= \pmb{T}\cdot \pmb{v}
= \underbrace{\pmb{u}}_{一}
$$
如此，两个向量叉乘 $\pmb{a} \times \pmb{b}$ 中的 “$\pmb{a} \times$” 也可以理解为一个二阶张量算子。

之后我们也会看到，三阶张量可以将一阶张量映射到二阶张量上（$三 一 \mapsto 二$）

线性算子的性质让我们有了常见的运算性质：分配律和结合律。

## 1.2 定义张量为张量积 Dyad

两个向量之间，有：

- 点乘：$\pmb{a} \cdot \pmb{b}$   是一个 scalar
- 叉乘：$\pmb{a} \times \pmb{b}$ 是一个 vector
- 圈乘：$\pmb{a}\otimes \pmb{b}$ 是一个 dyad [^文献里有时候忽略 $$\otimes$$，而直接写成 $\pmb{a}\pmb{b}$]

定义 Dyad：
$$
(\pmb{a} \otimes \pmb{b})\pmb{c}
=\pmb{a}(\pmb{b}\cdot \pmb{c})
$$
这样一个东西满足张量为线性算子的定义，于是 Dyad 是一个张量。

Dyad 的物理意义如下图：

![](..\picture\11.png)

显然，Dyad 不满足交换律：
$$
(\pmb{a} \otimes \pmb{b})\pmb{c} 
\neq
(\pmb{b} \otimes \pmb{a})\pmb{c} 
$$
有关 Dyad 的推论

- $(\pmb{a}\otimes\pmb{b})(\pmb{c}\otimes\pmb{d})=(\pmb{b}\cdot\pmb{c})(\pmb{a}\otimes\pmb{d})$
- $\pmb{a}(\pmb{b}\otimes\pmb{c}) = (\pmb{a}\cdot \pmb{b})\pmb{c}$

和叉乘一样，圈乘对顺序十分严格。

投影张量：$(\pmb{e}\otimes\pmb{e})\pmb{u}=\pmb{e}(\pmb{e}\cdot\pmb{u})$，如此可以得到向量 $\pmb{u}$ 在任意方向上的投影向量。

## 1.3 Dyadics

Dyadics 是若干 Dyads 的线性组合。

一个二阶张量总可以写成 Dyadics 的形式：
$$
\pmb{T} = \alpha(\pmb{a}\otimes\pmb{b}) + \beta(\pmb{c}\otimes\pmb{d}) + \gamma(\pmb{e}\otimes\pmb{f}) + ...
$$
形如 $\pmb{T} = \pmb{a} \otimes \pmb{b}$ 的二阶张量，被称作简单张量 simple tensor。






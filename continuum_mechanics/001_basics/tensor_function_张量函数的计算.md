# 0. 目录

[TOC]

这里我们对向量场的微分和积分进行进一步的推广。

# 1. 张量函数

## 1.1 变量为标量的张量场函数 $\pmb{T}=\pmb{T}(t)$

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
- $\frac{d}{dt}(\pmb{T}^T) = (\frac{d\pmb{T}}{dt})^T$


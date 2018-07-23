# 1. 刚体的角速度和线速度 

![](..\picture\12.png)

如图所示的刚体，正在绕着一个轴旋转。

轴被定义为从点 $O$ 出发，方向向上的线。

定义为一个向上的向量 $\pmb{\omega}$ ，为刚体旋转的角速度。

刚体中的点 $P$ ，到点 $O$ 位置向量为 $\pmb{r}$ 。

证明：$P$ 点旋转的切线速度 $\pmb{v} = \pmb{\omega} \times \pmb{r}$ 

## 解

一、点 $P$ 到旋转轴的距离 
$$
\bar{r}=|\pmb{r}|sin(\pmb{r},\pmb{\omega})
$$

二、单位时间内，走过的弧长
$$
\begin{align}
& s = \bar{r}\theta \\
\end{align}
$$
三、于是可以求得线速率的表达式
$$
\begin{align}
|\pmb{v}| & = \frac{ds}{dt} = \frac {d\bar{r}\theta}{dt}=\bar{r} \frac{d\theta}{dt} \\
& = |\pmb{r}| sin(\pmb{r},\pmb{\omega}) |\pmb{\omega}| \\
\end{align}
$$
四、模满足要求了，再结合叉乘的方向定义，便有
$$
\pmb{v} = \pmb{\omega} \times \pmb{r}
$$

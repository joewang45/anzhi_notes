# 1. 刚体的自旋 

![](..\picture\12.png)

如图所示的刚体，正在绕着一个轴旋转。

轴被定义为从点 $O$ 出发，方向向上的线。

定义为一个向上的向量 $\pmb{\omega}$ ，为刚体旋转的角速度。

刚体中的点 $P$ ，到点 $O$ 位置向量为 $\pmb{r}$ 。

## 1.1 求 $P$ 点的切线速度 $\pmb{v}$ 

### 解

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

## 1.2 角动量和惯性张量

![](..\picture\12.png)

一个物体的角动量 angular momentum $\pmb{h}$ 是一个向量。

定义为它的位置向量和动量的叉积，有：
$$
\pmb{h} = \pmb{r} \times m\pmb{v}
$$
我们可以通过惯性张量 $\hat{\pmb{I}}$ （带个帽子，为了区别于单位张量 $\pmb{I}$）这个线性算子，建立角动量和角速度的线性关系，有：
$$
\begin{align}
& \pmb{h}= \hat{\pmb{I}} ( \pmb{\omega}) \\
with \ \ & \hat{\pmb{I}} = m( |\pmb{r}|^2 \pmb{I} - \pmb{r} \otimes \pmb{r})
\end{align}
$$
有：
$$
\begin{align}
\hat{\pmb{I}}(\pmb{\omega}) 
& = (|\pmb{r}|^2 \pmb{I} - \pmb{r} \otimes \pmb{r}) \pmb{\omega} \\
& = |\pmb{r}|^2 \pmb{\omega} - \pmb{r}(\pmb{r} \cdot \pmb{\omega}) \\
& = |\pmb{r}|^2|\pmb{\omega}| \pmb{e}_\omega - |\pmb{r}| | \pmb{\omega}|cos\theta |\pmb{r}| \pmb{e}_r \\
& = |\pmb{r}|^2|\pmb{\omega}| (\pmb{e}_\omega - cos\theta \pmb{e}_r) \\ 
& = |\pmb{r}|^2|\pmb{\omega}| sin\theta \ \pmb{e}_h
\end{align}
$$
![](..\picture\13.png)

这个关系可以照着下图画一下理解

![](..\picture\14.png)

方向是正确的，现在只要看 magnitude 是否与定义的相配了，有：
$$
|\pmb{r} \times \pmb{v}| 
= | \pmb{r} \times \pmb{\omega} \times \pmb{r}| = |\pmb{r}|^2|\pmb{\omega}| sin\theta
$$
物体的惯性张量是一个只与几何属性有关的量。


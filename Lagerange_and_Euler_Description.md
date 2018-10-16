$d$ 代表空间上的变化，$D$ 代表时间上的变化





|                         拉格朗日视角                         |                           欧拉视角                           |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
|       跟着某个物质点，看着经过的地方，记录这个点的性质       |       盯着某个地方，看着经过的物质点，推断这个点的性质       |
|     观察的物质点不随时间变化<br> $\pmb{a}\neq\pmb{a}(t)$     |      观察的位置不随时间变化<br> $\pmb{c}\neq\pmb{c}(t)$      |
| 物质点的现时位置可由初始位置推出<br> $\pmb{x}=\pmb{x}(\pmb{a},t)$ | 物质点的初始位置可由现时位置推出<br> $\pmb{a}=\pmb{a}(\pmb{x},t)$ |
| 用标识物质点的坐标作为自变量进行描述<br>称作 ==物质坐标/描述== |  用空间点的位置作为自变量进行描述<br>称作 ==空间坐标/描述==  |
| 物质点在空间上的变化，根据定义可得：<br>$d\pmb{x}(\pmb{a},t)=\frac{\partial\pmb{x}}{\partial\pmb{a}}d\pmb{a}=\frac{\partial x_i}{\partial a_j}\pmb{e}_i\otimes\pmb{e}_jd\pmb{a}=\pmb{F}\cdot d\pmb{a}$ | 左边的逆映射为：<br>$d\pmb{a}=\pmb{F}^{-1}d\pmb{x}$<br><br>又根据定义，有：<br>$d\pmb{a}(\pmb{x},t)=\frac{\partial\pmb{a}}{\partial\pmb{x}}d\pmb{x}=\frac{\partial a_i}{\partial x_j}\pmb{e}_i\otimes\pmb{e}_jd\pmb{x}$<br><br>故，$\pmb{F}^{-1}=\frac{\partial a_i}{\partial x_j}\pmb{e}_i\otimes\pmb{e}_j$ |
| 物质点的速度，即物质点的坐标在时间上的变化 <br> $\pmb{v}=\frac{D\pmb{x}}{Dt}=\frac{D\pmb{x}(\pmb{a},t)}{Dt}=\frac{\partial \pmb{x}(\pmb{a},t)}{\partial t}$ |                                                              |
| 有许多时候需要研究定义在空间上的量 $\phi(\pmb{x},t)$，在物质点运动轨迹上的变化： <br> $\phi(\pmb{x},t) = \phi\Big(\pmb{x}(\pmb{a},t),t\Big)$ <br><br>其在时间上的变化为：<br>$\frac{D\phi\Big(\pmb{x}(\pmb{a},t),t\Big)}{Dt}=\frac{\partial \phi}{\partial \pmb{x}} \frac{\partial \pmb{x}}{\partial t} + \frac{\partial \phi}{\partial \pmb{t}}=grad_{\pmb{x}}(\phi)\cdot \pmb{v}+\frac{\partial \phi}{\partial t}$ |                                                              |
|                                                              | 由于位置不随时间变化，并不能直接由位置的变化导出速度<br>$\pmb{v} =\pmb{v}(\pmb{a},t)=\pmb{v}\Big(\pmb{a}(\pmb{x},t),t\Big)$ |
|                                                              |         因为，对任意初始位置总有：$d\pmb{a}=\pmb{0}$         |
|                                                              | 于是：$d\pmb{a}=d\pmb{a}(\pmb{x},t)=\frac{\partial \pmb{a}}{\partial \pmb{x}}d\pmb{x} + \frac{\partial \pmb{a}}{\partial t}dt =\pmb{0}$ |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |
|                                                              |                                                              |


# 应力

## 六面体微元上的应力

某个面上的应力，是处于该面上三个方向的应力的合力。

讨论某点处六面体微元表面上的应力，使用==局部坐标系==，描述其三个面 $\pmb{e}_1, \pmb{e}_2, \pmb{e}_3$ 上的应力，有：
$$
\vec{\sigma}(\pmb{e}_1)=\sigma_{11}\pmb{e}_1+\sigma_{12}\pmb{e}_2+\sigma_{13}\pmb{e}_3
\\
\vec{\sigma}(\pmb{e}_2)=\sigma_{21}\pmb{e}_1+\sigma_{22}\pmb{e}_2+\sigma_{23}\pmb{e}_3
\\
\vec{\sigma}(\pmb{e}_3)=\sigma_{31}\pmb{e}_1+\sigma_{32}\pmb{e}_2+\sigma_{33}\pmb{e}_3
$$
使用爱因斯坦求和进行描述，有：
$$
\vec{\sigma}(\pmb{e}_i)=\sigma_{ij}\pmb{e}_j
$$
对微元作力矩平衡方程，有：
$$
\sigma_{12} dx_2dx_3\cdot \frac{1}{2}dx_1 = \sigma_{21} dx_2dx_3\cdot \frac{1}{2}dx_1
$$
可得：
$$
\sigma_{ij}=\sigma_{ji}
$$
故 $$\pmb{\sigma}$$ 是一个对称张量。

有了应力张量，我们便可以求得对应坐标系下，六面体微元上每个面上的应力。

---

建立微元在局部坐标系下的平衡方程。

令微元体上存在体积力 $f_1, f_2, f_3$ ，列微元平衡方程，可得：
$$
\frac{\partial\sigma_{ij}}{\partial x_i}+f_j=0 \\
\\
\nabla\cdot\pmb{\sigma}+\pmb{f}=\pmb{o}
$$
该式也可以很容易转化到全局坐标系上。

## 四面体微元上的应力

讨论某点处四面体微元上的应力，已知三个正面上的应力 $\vec{\sigma}(\pmb{e}_i)$，求斜面 $\pmb{n}$ 上的应力。

由平衡条件，有：
$$
\vec{\sigma}(\pmb{n})\Delta S=\vec{\sigma}(\pmb{e}_1)\cdot n_1\Delta S+\vec{\sigma}(\pmb{e}_2)\cdot n_2\Delta S+\vec{\sigma}(\pmb{e}_3)\cdot n_3\Delta S
$$
约去 $\Delta S$ 便有：
$$
\vec{\sigma}(\pmb{n})=\vec{\sigma}(\pmb{e}_i)n_i=n_i\sigma_{ij}\pmb{e}_j = [\pmb{n}]^T[\pmb{\sigma}]=[\pmb{\sigma}]^T[\pmb{n}]
$$
有了应力张量和对应的斜面法向量，我们就可以用应力张量表示四面体微元斜面上的应力。

---

利用四面体上微元我们可以讨论边界条件。

记在边界某点局部坐标系下的应力张量为 $[\pmb{\sigma}^{lo}]$，坐标系转换矩阵为 $[\pmb{Q}]: local\mapsto global$ 

于是全局坐标系下的应力张量为 $[\pmb{\sigma}^{gl}] = [\pmb{Q}][\pmb{\sigma}^{lo}][\pmb{Q}]^T$

如果边界面在全局上的法向量为 $[\pmb{n}^{gl}]$，面上的外力为 $[\pmb{f}_0^{gl}]$，则有：
$$
[\pmb{f}_0^{gl}]=[\pmb{Q}]^T[\pmb{\sigma}^{lo}]^T[\pmb{Q}][\pmb{n}^{gl}]
$$

## 应力张量的不变量

对应力张量做特征分解，可以得到三个主应力 $\sigma_1, \sigma_2, \sigma_3$ 和三个主应力方向 $\pmb{n}_1, \pmb{n}_2, \pmb{n}_3$。

以主应力方向为基，我们便可以得到应力张量的特征值表达，有：
$$
\pmb{\sigma}^{\pmb{n}} =\sum_{i=1}^3 \sigma_{(i)} \pmb{n}_{(i)}\otimes\pmb{n}_{(i)}
$$
转动坐标系，总有：
$$
\sigma_{ij}=Q_{ip}\sigma_{pq}^{\pmb{n}}Q_{jq}
$$
如：
$$
\begin{align}
& i=1, j=2, p=1...3, q=1...3 \\
\\
\sigma_{12} 
& =
Q_{11}\sigma_{11}^{\pmb{n}}Q_{21}+Q_{11}\sigma_{12}^{\pmb{n}}Q_{22}+Q_{11}\sigma_{13}^{\pmb{n}}Q_{23} \\
& +
Q_{12}\sigma_{21}^{\pmb{n}}Q_{21}+Q_{12}\sigma_{22}^{\pmb{n}}Q_{22}+Q_{12}\sigma_{23}^{\pmb{n}}Q_{23} \\ 
& + 
Q_{13}\sigma_{31}^{\pmb{n}}Q_{21}+Q_{13}\sigma_{32}^{\pmb{n}}Q_{22}+Q_{13}\sigma_{33}^{\pmb{n}}Q_{23} \\
\\
& =  Q_{11}\sigma_{11}^{\pmb{n}}Q_{21}+ Q_{12}\sigma_{22}^{\pmb{n}}Q_{22}+Q_{13}\sigma_{33}^{\pmb{n}}Q_{23} \\
& = Q_{11}\sigma_{1}Q_{21}+ Q_{12}\sigma_{2}Q_{22}+Q_{13}\sigma_{3}Q_{23}\\
& = \pmb{n}_1 \cdot \pmb{e}_1
\end{align}
$$

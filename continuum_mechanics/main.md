[TOC]

# 向量和张量 Vector and Tensor

## 向量代数 Vector Algebra

### 标量 Scalar

1. 只以一个实数表示的量，称作标量

2. 标量用于那些只用 Magnitude 即可定义的物理量，如：温度、密度、质量、时间…… 

3. 标量常用小写的希腊字母标记

### 向量 Vector

1. 向量被设计来描述既有 Magnitude 又有方向的物理量，如：力、位移、速度、加速度……

2. 向量的记法：
   - 小写字母加粗：$$\mathbf{u}$$，$$\mathbf{v}$$
   - 小写字母加上箭头：$$\vec{u}$$，$$\vec{v}$$
   - 小写字母加下划线：$$\underline{u}$$，$$\underline{v}$$ 

3. 向量的模 the magnitude of a vector 是表示向量大小标量，一定是一个非负数，记作 |\underline{u}|

4. 模为 1 的向量为单位向量，单位向量和基向量的概念不同！

### 向量代数 Vector Algebra

1. 向量代数的意义：
   - 对向量的操作，称作向量代数
   - 数学上，我们是先抽象的定义了操作规则，才由操作规则定义出了名叫“向量”的概念
   - 所以所有介绍的计算规则本质上都是定义，定义的意思是，只有满足这些规则的东西才是向量；不满足的我们不讨论
   - 换句话说，我们不需要追问这些规则的由来，向量代数没有意义
2. 向量代数的基本规则：
   - 向量加法：平行四边形法则
   - 标量乘法
   - 满足加法交换律、加法结合律
   - 有零向量和负向量的概念
   - 满足乘法交换律、分配律
3. 满足向量代数基本规则的实体，称作向量；向量的集合称作向量空间 vector space 或线性空间 linear space
4. 自由向量

### 向量点积

### 向量叉积

### 用向量表示点

## 向量空间

向量空间/线性空间

内积空间

范数空间

度量空间

仿射空间

## 笛卡尔向量

### 笛卡尔坐标系向量

### 指标表示法

### 向量的矩阵记法

### 笛卡尔坐标系

## 矩阵的计算

## 向量的坐标变换

## 对向量做微分

### 变量为标量的向量函数的微分

1. 我们这里以位移函数 $$\mathbf{u}=\mathbf{u}(t)$$ 为中心讨论向量函数的微分

2. 向量函数 的微分的定义和一般的标量函数是一样的，有
   $$
   \frac{d\mathbf{u}(t)}{dt}:=\lim\limits_{\Delta t\to0}\frac{\Delta\mathbf{u}}{\Delta t}=\lim\limits_{\Delta t\to0}\frac{\mathbf{u}(t+\Delta t)-\mathbf{u}(t)}{\Delta t}
   $$

3. 因为从微分计算的定义上看，向量函数和标量函数具有相同的定义，所以除了点积和叉积有些特殊之外，我们熟悉的微分计算规则都可以直接使用，要注意的只是为了叉积要保证顺序，有：
   - $$\frac{d}{dt}(\mathbf{u}+\mathbf{v})=\frac{d\mathbf{u}}{dt}+\frac{d\mathbf{v}}{dt}$$
   - ...

4. **一般的计算法则为**：
   $$
   \frac{d\mathbf{u}(t)}{dt}=\frac{du_1}{dt}\mathbf{e}_1+\frac{du_2}{dt}\mathbf{e}_2+\frac{du_3}{dt}\mathbf{e}_3=\frac{du_i}{dt}\mathbf{e}_i
   $$

5. 位移对时间微分的物理意义显然是速度；位移向量对时间微分的物理意义是速度向量

6. 上面这个想法的数学表示是，由位置点的构成的集合，即轨迹曲线，每一点的切线向量，如下图：

   ![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\1.png)

7. 速度的模，即速率为：

   $$
   |\frac{d\mathbf{u}}{dt}|=\sqrt{(\frac{du_1}{dt}\mathbf{e}_1)^2+(\frac{du_2}{dt}\mathbf{e}_2)^2+(\frac{du_3}{dt}\mathbf{e}_3)^2}=\sqrt{(\frac{du_1}{dt})^2+(\frac{du_2}{dt})^2+(\frac{du_3}{dt})^2}
   $$

8. 结合上面两个式子，可以得到切线方向的单位向量 $$\mathbf{\tau}$$ ，有：

   $$
   \mathbf{\tau}=\frac{d\mathbf{u}/dt}{|d\mathbf{u}/dt|}
   $$

9. 不看位移向量，而看路径函数 $$s=s(t)$$ ，显然有：
   $$
   ds=|d\mathbf{u}|=\sqrt{(du_1)^2+(du_2)^2+(du_3)^2}
   $$

10. 于是，这一小段的速率就为：
    $$
    \frac{ds}{dt}=\frac{\sqrt{(du_1)^2+(du_2)^2+(du_3)^2}}{dt}=\sqrt{\frac{(du_1)^2}{(dt)^2}+\frac{(du_2)^2}{(dt)^2}+\frac{(du_3)^2}{dt}}=|\frac{d\mathbf{u}}{dt}|
    $$

11. 于是，曲线切线方向的单位向量 $$\mathbf{\tau}$$ 就可以写成：
    $$
    \mathbf{\tau}=\frac{d\mathbf{u}/dt}{|d\mathbf{u}/dt|}=\frac{d\mathbf{u}/dt}{ds/dt}=\frac{d\mathbf{u}}{ds}
    $$

12. 我们现在可以求空间中的运动轨迹，在某一时刻某一方向的速度了

    如：求轨迹曲线 $$\mathbf{x}=\mathbf{x}(t)=\begin{pmatrix}2t^2 \\t^2-4t\\3t-5 \end{pmatrix}$$ 在 $$t=1$$ 时，沿方向 $$\mathbf{a}=\mathbf{e}_1-3\mathbf{e}_2+2\mathbf{e}_3$$ 的速度

    - 运动轨迹曲线的切线速度向量为
    $$
    \mathbf{v} = \frac { d\mathbf{x} } {dt} = \frac {d2t^2}{dt}\mathbf{e}_1 + \frac{d(t^2-4t)}{dt}\mathbf{e}_2+\frac{d(3t-5)}{dt}\mathbf{e}_3= 4t\mathbf{e}_1+(2t-4)\mathbf{e}_2+3\mathbf{e}_3
    $$

    - $$t=1$$ 时，速度向量便为：
       $$
       \mathbf{v}|_{t=1}=4\mathbf{e}_1-2\mathbf{e}_2+3\mathbf{e}_3
       $$

    - 计算 $$\mathbf{a}$$ 方向上的单位向量，有：
    $$
    \mathbf{a}_e = \frac {\mathbf{a}} {|\mathbf{a}|} = ...
    $$
    - 计算求得 $$t=1$$ 时的切线速度向量在 $$\mathbf{a}$$ 上的速度向量：
    $$
    \mathbf{v}|_{t=1}\cdot \mathbf{a}_e =...
    $$

13. 空间曲线上某一点的曲率（标量）定义为：
    $$
    \kappa := |\frac{d\mathbf{\tau}}{ds}|=|\frac{d}{ds}(\frac{d\mathbf{u}}{ds})|=|\frac{d^2\mathbf{u}}{ds^2}|
    $$
    物理意义为曲线沿路径切线的方向的变化率

14. 曲率半径是曲率的倒数，可以通过圆推导出来

15. 由于切线向量的 $$\mathbf{\tau}$$ 方向总是在变化的，所以空间曲线切线的变化量 $$\Delta \mathbf{\tau}$$ 与 $$\mathbf{\tau}$$ 是垂直的，如下：

    ![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\4.png)

    $$
    \begin{align}
     & \frac{d(\pmb{\tau} \cdot \pmb{\tau})}{ds} = \frac{1}{ds} = 0 \\
    \Rightarrow & \frac{d[\pmb{\tau}(s)\cdot \pmb{\tau}(s)]}{d\pmb{\tau}(s)}\cdot \frac{d\pmb{\tau}(s)}{ds}=0 \\
    \Rightarrow & 2\pmb{\tau}(s) \cdot \frac{d\pmb{\tau}(s)}{ds}=0\\
    \Rightarrow & \pmb{\tau}\cdot d\pmb{\tau} =0
    \end{align}
    $$

16. $$\pmb{\tau}$$ 是切线方向的单位向量，但是 $$d\pmb{\tau}$$ 不是单位向量，这个显而易见的事实在一堆数学符号下面，显得有点晦涩
    $$d\pmb{\tau}$$ 方向上的单位向量$\mathbf{v}$，有：

    $$
    \pmb{\nu}=\pmb{\nu}(s)=\frac{d\pmb{\tau}}{|d\pmb{\tau}|} = \frac{d\pmb{\tau}}{\kappa(s)ds}
    $$

17. 使用两个方向上的单位向量，可以定义出垂直于这两个单位向量的单位向量 $$\pmb{b}(s)=\pmb{\tau}(s)\times \pmb{\nu}(s)$$
    ![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\5.png)


## 对向量做积分

### 线积分

1. 对变量为标量的向量函数 $$\mathbf{u}=\mathbf{u}(t)$$ 做积分，和对标量函数做积分的方法是一样的，有：

   $$
   \int^{2}_{1} \mathbf{u}(t)dt=\int^{2}_{1} \begin{pmatrix} t-t^2 \\ 2t^2 \\ -3 \end{pmatrix} dt= \begin{pmatrix} -5/6 \\ 14/3 \\ -3 \end{pmatrix}
   $$
   或
   $$
   \int^{2}_{1} [(t-t^2)\mathbf{e}_1+(2t^2)\mathbf{e}_2-3\mathbf{e}_3]dt=-\frac{5}{6}\mathbf{e}_1+\frac{14}{3}\mathbf{e}_2-3\mathbf{e}_3
   $$


---

1. 对一个关于向量的向量函数 $$\mathbf{u}=\mathbf{u}(\mathbf{x})$$ 进行积分，则需要积分对象是点积还是叉积
2. 点积的情况：
   - 计算力场 $$\mathbf{f}(\mathbf{x})$$ 对在其中运动轨迹为 $$\mathcal{C}$$ 的质点做的功，有：
   $$
   \int_{\mathcal{C}}\mathbf{f}(\mathbf{x})\cdot d\mathbf{x}=\int_{\mathcal{C}}(f_1\mathbf{e}_1+f_2\mathbf{e}_2+f_3\mathbf{e}_3)\cdot d\mathbf{x} \\ 
   = \int_{\mathcal{C}} f_1\mathbf{e}_1\cdot d\mathbf{x}+\int_{\mathcal{C}} f_2\mathbf{e}_2\cdot d\mathbf{x}+\int_{\mathcal{C}} f_3\mathbf{e}_3\cdot d\mathbf{x} \\ 
   =  \int_{\mathcal{C}} f_1dx_1+\int_{\mathcal{C}} f_2dx_2+\int_{\mathcal{C}} f_3dx_3
   $$
   - 当  $$\mathbf{f} = (3x_{1}^{2}+6x_{2})\mathbf{e}_{1}-(14x_1x_2)\mathbf{e}_2+(20x_1x_3^2)\mathbf{e}_3$$ 时，上式就变成：
     $$
     \int_{\mathcal{C}} (3x_{1}^{2}+6x_{2})dx_1+\int_{\mathcal{C}} (14x_1x_2)dx_2+\int_{\mathcal{C}} (20x_1x_3^2)dx_3
     $$

   - 积分操作不是很方便，可以使用参数方程简化计算，如一条直线  $$\mathbf{x}=\begin{pmatrix} x_1 \\ x_2 \\ x_3 \end{pmatrix} = \begin{pmatrix} t \\ t \\ t \end{pmatrix}$$ 时，上式就变成：
     $$
     \int_{\mathcal{C}} (3t^{2}+6t)dt+\int_{\mathcal{C}} (14t^2)dt+\int_{\mathcal{C}} (20t^3)dt=\int_{0}^{1}(20t^3-11t^2+6t)dt=\frac{13}{3}
     $$

   - 使用参数方程的换元过程，可以表示为：
     $$
     \int_{\mathcal{C}}\mathbf{f}(\mathbf{x})\cdot d\mathbf{x}
     = \int_{\mathcal{C}}\mathbf{f}(\mathbf{x})\cdot \frac{d\mathbf{x}}{dt}dt = \int_{\mathcal{C}}\mathbf{f}(\mathbf{x})\cdot \frac{dx_i}{dt}\mathbf{e}_idt
     $$


#### 保守场
1. 如果一个向量场，可以用一个**标量场的梯度**来表示，即 
   $$
   \mathbf{f}(\mathbf{x})=\nabla\phi(\mathbf{x})
   $$
   则可以得到一个有趣的推论

2. 我们再求一次上面的力场对运动轨迹的做功，有：
   $$
   \int_{\mathcal{C}}\mathbf{f}\cdot d\mathbf{x}
   = \int_{\mathcal{C}}\nabla \phi \cdot d\mathbf{x}
   = \int_{\mathcal{C}} \frac {\partial\phi}{\partial x_i} dx_i
   = \int_{\mathcal{C}} d\phi
   $$
   积分的结果变成了常数，于是做功只与路径的起始点，即积分的上下限有关，而与路径无关了

3. 这样的向量场，称作**保守向量场 conservative vector field**；对应的标量场，称作**标量势 scalar potential**

4. 一个保守向量场的旋度是零。该结论可以作为判断一个向量场是否是保守场的充要判断条件。
5. 例：计算证明 $$\mathbf{f}(\mathbf{x})=\begin{pmatrix} 2x_1x_2+x_3^3 \\ x_1^2 \\ 3x_1x_3^2\end{pmatrix}$$ 是保守场，并求出其标量势
   1. 计算该向量场的旋度
   $$
   \underline{curl} \mathbf{f} = \nabla \times \mathbf{f}
   = det 
   \begin{pmatrix} 
   \mathbf{e}_1 & \mathbf{e}_2 & \mathbf{e}_3  \\
   \frac{\partial}{\partial x_1} & \frac{\partial}{\partial x_2} & \frac{\partial}{\partial x_3} \\
   f_1 & f_2 & f_3
   \end{pmatrix}
   = 
   det 
   \begin{pmatrix} 
   \mathbf{e}_1 & \mathbf{e}_2 & \mathbf{e}_3  \\
   \frac{\partial}{\partial x_1} & \frac{\partial}{\partial x_2} & \frac{\partial}{\partial x_3} \\
   2x_1x_2+x_3^3 & x_1^2 & 3x_1x_3^2
   \end{pmatrix}
   = \mathbf{0}
   $$
   2. 求该保守场的标量势
      1. 使用标量势写出原向量场
      $$
      \mathbf{f} = \nabla \phi =
      \frac{\partial \phi}{\partial x_1}\mathbf{e}_1 + 
      \frac{\partial \phi}{\partial x_2}\mathbf{e}_2 + 
      \frac{\partial \phi}{\partial x_3}\mathbf{e}_3 
      $$
      2. 用上式比较向量场的系数
      - $$
        f_1 = \frac{\partial \phi}{\partial x_1} \Rightarrow f_1 \partial x_1 = \partial \phi \\
        \Rightarrow \int \partial \phi = \int (2x_1x_2+x_3^3) \partial x_1 \\
        \Rightarrow \phi = x_1^2x_2+x_1x_3^3+p(x_2,x_3)+C
        $$

      - $$
        \phi = x_1^2x_2+q(x_1,x_3)+C
        $$

      - $$
        \phi = x_1x_3^3+r(x_1,x_2)+C
        $$
        于是综合来看 $$\phi = x_1^2x_2+x_1x_3^3+C$$
#### 赫尔姆兹定理 Helmholtz Theory
1. 向量场无旋度 $$\Leftrightarrow$$ 向量场是个保守场，有个标量势
2. 进一步的，向量场无散度 （solenoidal）$$\nabla \cdot \mathbf{f} =0\Leftrightarrow$$ 向量场有个向量势

3. 赫尔姆兹定理说，任意向量场总可以写成**标量势的梯度**和**向量势的旋度**，即

   $$
   \mathbf{f} \equiv \nabla \phi + \nabla \times \mathbf{a}
   $$
   也被称作赫尔姆兹分解 The Helmholtz' Decomposition
4. **小结**
   | | | | | |
   |----------| ---------------| ---------| ------------| --------------|
   | 任意向量场 | $$\mathbf{f}$$ | 总可以写成 | 其标量势的梯度和向量势的旋度之和 | $$\mathbf{f} \equiv \nabla \phi + \nabla \times \mathbf{a} $$|
   | 无旋度的向量场| $$ \nabla \times \mathbf{f} =0 $$ | 可以写成 | 其标量势的梯度 | $$\mathbf{f}=\nabla \phi$$ |
   | 无散度的向量场| $$ \nabla \cdot \mathbf{f} =0 $$ | 可以写成 | 其向量势的旋度 | $$\mathbf{f}=\nabla \times \mathbf{a}$$|

### 二重积分与雅可比矩阵
1. 面积分是二重积分最直观的形式，$$\iint_{\mathcal{R}} f(x_1,x_2) dx_1dx_2$$ 就是该函数对面 $$\mathcal{R}$$ 积分，得到如图所示的体积
   ![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\2.png)

2. 计算二重积分时，可以采用换元的方法

3. 换元对应的物理意义，是更换坐标系，如下图：

   ![](C:\Users\wang\Documents\gitHub\anzhi_notes\continuum_mechanics\picture\3.png)

   - 在平面上存在平面直角坐标系 $$x_1-x_2$$ 和一般坐标系 $$t_1-t_2$$

   - 在 $$t_1-t_2$$ 坐标系下，面积微元 $$dS=|d\mathbf{x}_{t_1} \times d\mathbf{x}_{t_2}|$$

   - 其中，$$\mathbf{x}$$ 是有关 $$t_1$$ 和 $$t_2$$ 的向量函数，即 $$\mathbf{x}=\mathbf{x}(t_1,t_2)=x_1(t_1,t_2)\mathbf{e}_1+ x_2(t_1,t_2)\mathbf{e}_2$$

   - 故有：
     $$
     \begin{align}
     d\mathbf{x}_{t_1} &= \frac{\partial \mathbf{x} }{\partial t_1}dt_1+\frac{\partial \mathbf{x} }{\partial t_2}dt_2=\frac{\partial \mathbf{x} }{\partial t_1}dt_1 \\
     d\mathbf{x}_{t_2} &= \frac{\partial \mathbf{x} }{\partial t_1}dt_1+\frac{\partial \mathbf{x} }{\partial t_2}dt_2=\frac{\partial \mathbf{x} }{\partial t_2}dt_2
     \end{align}
     $$

   - 于是，面积微元就可以写成：
     $$
     \begin{align}
     dS & \ = |d\mathbf{x}_{t_1} \times d\mathbf{x}_{t_2}| \\
        & \ = |\frac{\partial \mathbf{x} }{\partial t_1} \times \frac{\partial \mathbf{x} }{\partial t_2}| dt_1dt_2 \\
        & \ = |\frac{\partial x_i}{\partial t_1} \mathbf{e}_i \times \frac {\partial x_j}{\partial t_2}\mathbf{e}_j|dt_1dt_2 \\
        & \ = |\frac{\partial x_i \partial x_j}{\partial t_1 \partial t_2} \varepsilon_{ijk}\mathbf{e}_k|dt_1t_2\\
        & \ = |\frac{\partial x_1 \partial x_2}{\partial t_1 \partial t_2} - \frac{\partial x_2 \partial x_1}{\partial t_1 \partial t_2}  |dt_1dt_2\\
        & \ = \begin{vmatrix} 
                 \frac{\partial x_1}{\partial t_1} & \frac{\partial x_2}{\partial t_1} \\
                 \frac{\partial x_1}{\partial t_2} & \frac{\partial x_2}{\partial t_2} 
                 \end{vmatrix} 
                 dt_1dt_2\\
     \end{align}
     $$

4. 于是我们得到了**雅可比矩阵 Jacobian Matrix**，有：
   $$
   \mathbf{J}= \frac{\partial x_i}{\partial t_j}
   $$

5. 应用雅克比矩阵变换坐标系：
   $$
   \int f(x) dx = \int f[x(y)] dx =\int f(y) \cdot det(\frac{\partial x_i}{\partial y_j}) dy
   $$

6. 例题：使用极坐标，计算单位圆在第一象限（$$0 \leq y \leq \sqrt{1-x^2} ,\quad 0 \leq x \leq 1$$）的面积
   - 使用极坐标，有：$$\begin{cases} x=r\cdot cos\phi \\ y=r\cdot sin\phi\end{cases}$$
   - 计算雅可比矩阵的行列式：
     $$
     det(\mathbf{J})=\begin{vmatrix} 
     \frac{\partial x}{\partial r} & \frac{\partial x}{\partial \phi} \\
     \frac{\partial y}{\partial r} & \frac{\partial y}{\partial \phi} \\
     \end{vmatrix}
     = \begin{vmatrix}
     cos \phi & - r\cdot sin \phi \\
     sin \phi & r \cdot cos \phi
     \end{vmatrix} = r
     $$

   - 计算面积
     $$
     \int_{0}^{1}\int_{0}^{1}1dxdy = \int_{0}^{\pi/2}\int_{0}^{1}rdrd\phi = \frac{1}{4}\pi
     $$

7. 上面所说的是最为简单的情况，接下来我们来处理较为复杂的情况
8. 三维空间中的任意曲面总可以写成 $$\mathbf{x}=x_i\mathbf{e}_i$$

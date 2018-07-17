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

   有了单位向量，我们就可以引入更多的概念了
9. 
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
     = \int_{\mathcal{C}}\mathbf{f}(\mathbf{x})\cdot \frac{d\mathbf{x}}{dt}dt =
     $$

















保守场

二重积分


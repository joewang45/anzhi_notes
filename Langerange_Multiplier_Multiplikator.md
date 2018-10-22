一个多元函数，当其变量受到一个或多个约束条件时，可以使用拉格朗日乘子 $\lambda$ 寻找其极值。

使用该乘子，可以将一个有 $n$ 个变量与 $k$ 个约束条件的求极值问题，转化为对 $n+k$ 个未知数的方程组求解的问题。

即，对函数 $y=f(x_1,x_2,x_3,...,x_n)$，求其满足 $g_i (x_1,x_2,x_3,...,x_n)=c_i, i=1,2,3,...,k$ 情况下的极值，就是对以下拉格朗日函数 $\mathcal{L}$ 求偏微分，有：
$$
\mathcal{L}(x_1,...,x_n,\lambda_1,...,\lambda_k) = f(x_1,...,x_n) - \sum_{i=1}^{k}\lambda_i\cdot\Big(g_i(x,y)-c_i\Big)
$$
https://www.matongxue.com/madocs/939.html
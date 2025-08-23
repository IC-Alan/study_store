= Recurrence Relations
$a_n = f(a_0 ,a_1 ,a_2 ,... , a_n-1)   n≥n_0$
Normally, there are many sequences which satisfy a recurrence relation. We should distinguish them by initial conditions.

#box(width: 100%, height: 0.5pt, fill: blue)
== The degree of a recurrence relation 
递推关系的阶数（degree）是指递推关系中最高项的序号与最低项的序号之差。

$a_n=a_(n-8)$
阶数是8

#box(width: 100%, height: 0.5pt, fill: green)
= Linear Homogeneous Recurrence Relations

$a_n = c_1a_(n-1) + c_2a_(n-2) + …… + c_k a_(n-k)$

where $c_1,  c_2,..., c_k$are real numbers, and $c_k$ ≠0 


- *linear*(线性): the right-hand side is a sum of the previous terms of the sequence each multiplied by a function of n

$a_n = f(n)a_(n-1) + g(n)a_(n-2) + ……$

即没有$a_(n-1)^2 ， a_(n-1)a_(n-2)$这种

- *constant coefficients*(常系数) :the coefficients in the sum of the $a_i$' s are constants,  independent of n.

- degree k: $a_n$is expressed in terms of the previous k terms of the sequence

- *homogeneous* (齐次): ：递推式右侧仅为前项的线性组合，无额外非齐次项（如常数、
n 的函数等）。 Otherwise inhomogeneousor nonhomogeneous.

#image("image-51.png")

#box(width: 100%, height: 0.5pt, fill: blue)
= solving
#image("image-52.png")

线性齐次递推关系的两个解的线性组合也是它的解


具体是什么线性组合还要看他的初始条件约束
== #image("image-53.png")
== #image("image-54.png")
== #image("image-55.png")

#box(width: 100%, height: 0.5pt, fill: green)
= Linear Nonhomogeneous Recurrence Relation With Constant Coefficients 
#image("image-56.png")

== solve
#image("image-57.png")
#image("image-58.png")
#image("image-59.png")
s t m已知

=== 叠加原理

在求解线性非齐次递推关系时，若递推式的右侧（非齐次项）是多个不同类型的函数之和，我们需要对每一类函数分别猜测特解形式，最后将所有猜测的特解相加，得到完整的特解形式

#image("image-60.png")
ANSWER： $a n + b + n c 2^n$
#box(width: 100%, height: 0.5pt, fill: green)
= Generating function


#box(width: 100%, height: 0.5pt, fill: green)
= 容斥原理 The Principle of Inclusion-Exclusion
#image("image-170.png")
对于 n 个集合的容斥原理公式，有 $2^n-1$项。
#image("image-171.png",height:4cm)
#box(width: 100%, height: 0.5pt, fill: green)
= 扩展二项式系数 (extended binomial coefficient)
#image("image-174.png")

#image("image-184.png")

欧拉公式 点-边+面=2
#image("image-185.png")


二部图不能有奇数长度的环

 A weakly connected directed graph with deg+(v)=deg-(v) for all vertices v is 
always strongly connected.

有欧拉环

存在一个可数无限集 A，使得存在一个双射（bijection）f:A→A×A。

$N arrow N × N$
#image("image-186.png")
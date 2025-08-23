= register

搭大型register 

1.用现成的

2.把register串联起来(像全加器一样)

== 带有Load的

方案一：门控时钟(clock gating)
#image("image-175.png")
当 Load=0 时，始终有 C=1，存不进去了

问题：由于添加了非门，时钟脉冲到达 Control 的时候会出现额外的传播延时，即*时钟偏移(clock skew)*。而这微小的延时会导致在整个同步系统中，不同组件得到的时钟脉冲有偏差

方案二：
#image("image-137.png")
拿个二选一
#box(width: 100%, height: 0.5pt, fill: green)
== register transfer operations

Notation：

#image("100.png")
条件传输(conditional transfer)：

如 K1: (R2 `<-` R1) 

表示当 K1 寄存器的值为 1 时执行 R2 `<-` R1。

#image("image-176.png")
#image("image-177.png")
#image("image-178.png")
#image("image-179.png")
移位操作 补零

#image("image-180.png")
#box(width: 100%, height: 0.5pt, fill: green)
= 寄存器传输结构

== 1.基于多路复用器的传输 (Multiplexer-Based Transfers)
#image("image-181.png")
== 2. 基于总线的传输 (Bus-Based Transfers)

#image("image-182.png")
n位宽

verliog里的非阻塞赋值
#image("image-183.png")
（不能同时传了）

== 3.三态总线 (Three-State Bus)

#image("image-184.png")

#image("image-185.png")
#box(width: 100%, height: 0.5pt, fill: green)
= shift register

#image("image-186.png")
关键组件与信号
输入信号：

D₀-D₃：4位并行数据输入（加载模式时写入寄存器）。

SI（Serial Input）：串行输入（移位模式时逐位输入）。

Shift：移位使能信号（高电平时允许移位）。

Load：并行加载使能信号（高电平时加载 D₀-D₃）。

Clock：同步时钟信号。

输出信号：

Q₀-Q₃：4位并行输出（寄存器当前状态）。
#image("image-187.png")

== 以下可以shift amount  比如三接$D_3$
#image("image-188.png")

= Counter

== Ripple Counter（链式计数器）
#image("image-189.png")
A B 都在0 1 0 1的循环 只是B的时钟是A的时钟2倍（A从1变到0 时候 B开始变）

但是有延时 （1，1，1）到（0，0，0）时候延时最大
#image("image-190.png")
#image("image-191.png")



== 同步计数器

没有延时的 用组合逻辑 实现加一
Load = 1  载入D load = 0 正常计数
#image("image-192.png")
#image("image-193.png")
在时钟沿来之前要准备好数据

时钟频率由最长路径决定



#image("image-194.png")

== BCD 码循环计数

#image("image-195.png")
BCD码是mod n的计数器 n = 10


记到n 后立刻用clear清零 （异步）
#image("image-198.png")
但是有问题 不能保证三位都清掉 清掉一位就继续了

或者011 $arrow$ 100 中间有 111

用load可以
#image("image-197.png")

中途load中间值都行
#image("image-196.png")

记到n-1 一个时钟后清零 （同步）


= 串行操作 (Serial Operation)
按位处理  储存 比并行慢（依靠时钟）

#image("image-199.png")
用时间换面积




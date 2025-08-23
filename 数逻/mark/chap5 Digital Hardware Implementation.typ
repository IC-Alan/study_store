= MOS
#image("image-130.png")

作用相当于一个开关，通过控制门极(Gate)的电压，来控制 MOS 的开闭。
#box(width: 100%, height: 0.5pt, fill: blue) 
== n-channel MOS(NMOS) Normally Open
G端是0 $D arrow S$ 不连通 open的

G端是1 $D arrow S$ 联通

#image("image-131.png")
#box(width: 100%, height: 0.5pt, fill: blue) 
== p-channel MOS(PMOS) Normally Close

G端是0 $D arrow S$ 联通

G端是1 $D arrow S$ 不联通 open的
#image("image-132.png")

Series 串联 相当于 AND
#image("image-133.png")

 并联 相当于 OR
 #image("image-134.png")

 但是不好 我们要能输入0 和 1的 （0是接地 1是接电源） 

 所以用CMOS

#box(width: 100%, height: 0.5pt, fill: green) 
= CMOS  Fully-Complementary CMOS Circuit 互补
CMOS 的通用结构

分为上下两部分

上半部分接电源，由 PMOS 设计出 F 的逻辑

下半部分接地，由 NMOS 设计出 $overline(F)$的逻辑

先把下面的画出来（输入按照$overline(F)$的） 在对偶过去形成上面的

例子：我要实现$overline(X Y)$ 

下面是$X Y$

上面的电路是$X+Y$ 但是因为我是 输入0 才接通 所以相当于$overline(X) + overline(Y)$ 也就是原来的逻辑 $overline(X Y)$ 

（对偶+变量取反=反函数）

#image("image-135.png")

这样上下只有一个联通的 不会短路

静态的时候不耗电 不形成通路

与非门 没有浪费非门 更省 因为输入直接是 正的 不用反向器

例子：
#image("image-136.png")
#box(width: 100%, height: 0.5pt, fill: green) 

= 可编程技术 Programming Technologies

可编程技术在硬件层面主要有三种实现手段：

+ 控制连接来实现(Control Connections)：
  Mask programing

  Fuse（类似于保险丝，通过高电压来切断部分电路来实现）

  Anti-fuse（Fuse 的反操作，通过高电压来联通部分电路来实现）

  Single-bit storage element

+ 使用查找表(Lookup Tables)：

  Storage elements for the function

  比如使用一个 MUX，并将输入端接内存，通过修改内存的值来修改 MUX 的行为，进而实现函数重编程

+ 控制晶体管开关实现(Control Transistor Switching)

可编程技术可以分为 永久编程技术 和 可重编程技术：

+ 永久(permanent)编程技术：出厂后经过一次编程，便永久成型；
  Mask programming

  Fuse
  
  Anti-fuse

+ 可重(reprogrammable)编程技术：允许重复进行编程；
 
  Volatile：断电后编程信息会丢失；  
  Single-bit storage element

  Non-Volatile：编程信息仅在擦除操作后才会消失，不受断电影响；
  Flash (as in Flash Memory)
#box(width: 100%, height: 0.5pt, fill:blue)

= 常见的可编程技术
== ROM

$2^N×M$
ROM 由 
N 个输入（地址线），
M 个输出（数据线），以及  $2^N$个译码后的最小项组成。

固定的 AND 用于设计译码器，实现所有的 $2^N$个最小项；

通过选择性连接最小项，形成 M 个输出函数（每个输出是最小项之和）。
#image("image-206.png")
ROM 是不可编程的，PROM 才是可编程的

ROM/PROM 的程序是一个 多输出真值表：

若某输出位为 1，则连接对应最小项到该输出的 OR 门。

若为 0，则不连接。
#box(width: 100%, height: 0.5pt, fill:blue)
== PAL
具有固定的 OR(个数固定 有时候项不足 用既有的当输入绕回来) 和一批可编程的 AND。
#image("129.jpg")

#image("image-207.png")
#box(width: 100%, height: 0.5pt, fill:blue)

== PLA

双可编程阵列：

可编程 AND 阵列：生成任意乘积项（与 ROM 的固定译码不同）。

可编程 OR 阵列：每个输出可选择任意乘积项组合（与 PAL 的固定 OR 不同）。
#image("130.jpg")
AND OR有限 要优化
#image("image-208.png")
小规模可以用卡诺图优化 大规模用软件了

#image("image-209.png")
#box(width: 100%, height: 0.5pt, fill:blue)

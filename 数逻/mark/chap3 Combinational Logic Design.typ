按照功能，逻辑电路分为两类：

- 组合电路(Combinational Circuit)

    拥有 m 个输入和 n 个输出，其中包含了 

    $2^m$种输入组合，以及对应的 n 个不同的函数；

    最关键的是，它的 输出只依赖于这 m 个输入的组合（不包含回路）；

- 时序电路(Sequential Logic Cirtuit)
    与之对应的，时序电路具有记忆功能，即它的输出可能会依赖之前的结果；

#box(width: 100%, height: 0.5pt, fill: green) 

= Integrated Circuits (informally, a “chip”)

#box(width: 100%, height: 0.5pt, fill: green) 

= 参数
- Fan-in	一个门可支持的输入数量

 fan-in = 3 的与门
#image("image-200.png",height: 3cm)

- Fan-out 单个逻辑门能够驱动的标准负载数量

    #image("image-201.png",height: 6cm)
    所谓的标准负载，是衡量“负载”的一个“单位砝码”。其大小等于一个非门(反向器inverters)贡献的负载压力。

    那么要如何评估负载呢？首先我们引入 

    过渡时间(transition time)：

    描述信号从一种逻辑状态（如低电平）转换到另一种逻辑状态（如高电平）所需的时间。

    change from H to L : t#sub[HL]
    
    change from H to L : t#sub[LH]
    
    The maximum fan-out :without exceeding its specified maximum transition time

- Logic Levels（逻辑电平）：输入端和输出端上1和0的信号值范围（见图1-1）。

- Noise Margin（噪声容限）：叠加在正常输入值上的最大外部噪声电压，该电压不会导致电路输出发生不期望的变化。

- Cost for a gate （单个门的成本）

- Power Dissipation（功耗）：从电源汲取并被门电路消耗的功率

- Propagation Delay	信号改变后从输入到输出所需的变化时间

    传播延迟通常是在高电平（H）和低电平（L）输出电压水平的50%点处进行测量的。

    高到低（HL）和低到高的（LH）转换是相对于输出端定义的，而不是输入端。
    #image("image-3.png")

*Delay Models*


- 传输延迟（transport delay):输出对输入变化的响应会在一个固定的指定延迟后发生。即输入信号发生变化后，输出信号会在一个固定的时间间隔后才发生变化，这个时间间隔就是传输延迟。

- 惯性延迟(inertial delay): 引入了 拒绝时间(rejection time)，元件对输入信号的变化具有一定的“惯性”，只有当信号变化持续足够长的时间后，输出才会发生变化 如（c）

#image("image-205.png")

#image("image-4.png")

Fan-out 会影响Propagation Delay	

buffer 能减少delay 但是增加成本

在数字电路中，最长路径（Longest Path）是指信号从输入端到输出端需要经过的逻辑门数量最多、传播延迟最大的路径。它决定了电路的关键路径延迟（Critical Path Delay），即信号通过电路的最长时间。

是的，从每个输入到输出的传播延迟需要考虑所有可能的路径。
在数字电路中，传播延迟是指信号从输入端传播到输出端所需的时间，而电路中可能存在多条路径。每条路径的传播延迟可能不同

#box(width: 100%, height: 0.5pt, fill: green) 

= 设计过程 Design Procedure
+ 系统描述(specification): 指定所需的行为。
+ 形式化(formalization)：以布尔方程或真值表的方式对系统的输入输出关系进行形式化
+ 优化(optimization)：优化逻辑的表示，减少成本。
+ 工艺映射(technology mapping)：将优化后的逻辑设计工艺映射到可以实现的工艺上。
+ 验证(verification)：验证设计的正确性。

#box(width: 100%, height: 0.5pt, fill: blue) 


== 分层设计 Hierarchical Design
-自顶向下的设计(top-down design)：分解功能设计

-自底向上的设计(bottom-up design)：根据现有的元件去组合成目标功能。

== 工艺映射 Technology Mapping

工艺映射是指将优化后的逻辑设计工艺映射到有限的工艺上。

比如：因为 NAND 门和 NOR 门是通用门(universal gate)，我们可以将任意逻辑电路映射到仅使用 NAND 门或仅使用 NOR 门的电路上。

== 验证(verification)

简单的行为可以用真值表、布尔代数式、HDL 代码等描述。

=== manual analysis

找到最终电路的真值表或布尔代数式，判断其是否和预期行为一致；

=== simulation仿真

激励：即输入

把输入结果都输入验证结果 波形图仿真

#box(width: 100%, height: 0.5pt, fill: green) 


The functions considered are those found to be 
very useful in design 

Corresponding to each of the functions is a 
combinational circuit implementation called a functional block.
#box(width: 100%, height: 0.5pt, fill: blue) 

= Rudimentary Logic Function 基本逻辑功能
+ 输出定值的，就是一根线 ， can be used on the inputs
    #image("pic/1241f5b9d69ce1d5ecc5fed1b398deb.jpg")

    实现恒输出0，接地

+ Multiple-bit Rudimentary Functions


    #image("image-7.png")
    粗线用于表示总线，总线是一个向量信号。
    
    在示例(b)中，$F=(F_3,F_2,F_1,F_0)$ 是一个总线。
    
    总线可以分割成单独的比特，如在(b)中所示。
    
    可以从总线中分割出比特集，如在(c)中所示，为F的第2位和第1位。
    
    比特集不需要连续，如在(d)中所示，为F的第3位和第0位。

+ enabling Function
    #image("image-12.png")

    #image("image-139.png")
    Hi-Z 相当于断路了

#box(width: 100%, height: 0.5pt, fill: blue) 
== (Decoder)解码器
#image("image-8.png")
然后我们发现他输出的实际上是输入变量的所有minterm

所以它可以实现任何函数（只要或起来就行）

3-to-8-line decoder：
#image("image-140.png")

4-16器：两个2-4 再加16个与门 24个门
一个3-8 和一个1-2 28个门
#image("image-10.png")

#image("image-141.png")

带使能的decode
#image("image-11.png")

decode可以实现任何组合逻辑功能 实现任何布尔代数式，因为decode的output是minterm，或起来

decode只能输出一个1

例子：

Implement a binary Adder

#image("image-142.png")

#image("image-15.png")
可以用更小的decode简化比如A6和A7在一起，P1和P2有重复的，项多是因为四个输入只涉及三个（用卡诺图简化再用decode呢？？）

BCD-to-Segment Decoder
#image("image-144.png")

Truth Table for BCD-to-Seven-Segment Decoder
#image("image-145.png")

#image("image-143.png")

#box(width: 100%, height: 0.5pt, fill: blue) 

== (Encoder)编码器
a decimal to BCD

If input bit D#sub[i] is a 1,then output is the BCD code for i.

== priority Encoder
如果有多个输入值为 1，那么刚刚设计的编码器就无法正常工作。

#image("image-16.png")

#image("image-17.png")

among the 1 ,select the most important,即使多个1也输出最大位那个 

#box(width: 100%, height: 0.5pt, fill: blue) 
== mulitiplexer（多路选择器）
 n 个控制输入 $2^n$个信息输入

因为Decode输出只有一个1，所以用decode
#image("image-18.png")
#image("image-19.png")
== 多位宽：
#image("image-146.png")

== Other Selection Implementations
三态门：
#image("image-147.png")

这是两次二选一选出来的
#image("image-148.png")

== Combinational Logic Implementation- Multiplexer
方法1：

做真值表，按真值表输入0 1 ，比如
#image("image-149.png")
（A,B,C）=(0,0,0) X=0 就D00输入0

方法2：
直接拿题举例子吧：

#box(width: 100%, height: 0.5pt, fill: green) 
== 半加器 Half-Adder
2-input bit-wise 
#image("image-153.png")
#image("image-154.png")
== 全加器 Full-Adder
3-input bit-wise
#image("image-155.png")
#image("image-156.png")
== 行波加法器
#image("image-157.png")
但是一位位传太慢了

所以！
== 
== 减法
反码(one's complement)

补码(two's complement)

补码算法：取反+1
- 无符号减法
    #image("image-62.png")
    有进位，结果整数，舍进位
    #image("image-64.png")
    没有进位，说明结果应该是负数，比如结果应该是-2，得到的就是$2^n$-2，也就是2的补码，要取得到的结果的补码加负号


- 有符号减法
    
    有符号补码算术
    - 加法：
    包括符号位在内的数字相加，忽略符号位的进位（2的补码）。
    如果两个数的符号位相同，而结果的符号位不同，则发生了溢出。
    结果的符号在步骤1中计算得出。
    - 减法：
    形成你正在减去的数的补码，并遵循加法规则。
    #image("image-63.png")和 无符号 差不多

    
- 符号位的约定：
    计算机使用二进制数，按照惯例，最高有效位（most significant bit，MSB）被解释为符号位：
    其中：
    S = 0 表示正数
    S = 1 表示负数




 溢出（Overflow）：
 1. 溢出的定义
在计算机的 n位二进制运算（如加法或减法）中，如果结果的实际值超出 n位能表示的范围，则需要 n+1位 才能正确存储，这种情况称为 溢出（Overflow）。

示例：

在 8位有符号数（范围：-128 ~ +127）中，计算 127 + 1 = 128，但 128 超出表示范围，导致溢出。

在 8位无符号数（范围：0 ~ 255）中，计算 255 + 1 = 256，但 256 需要 9 位存储，因此溢出。

2. 溢出的发生条件
溢出 仅可能 在以下两种运算中出现：

两个同符号数相加（正 + 正，或 负 + 负）

正 + 正 → 结果为负（溢出）

例（4位有符号数）：0111 (+7) + 0001 (+1) = 1000 (-8)（实际应为 +8，但溢出导致错误）

负 + 负 → 结果为正（溢出）

例（4位有符号数）：1000 (-8) + 1001 (-7) = 0001 (+1)（实际应为 -15，但溢出导致错误）

符号不同的数相减（可视为“加相反数”）

正 - 负 = 正 + 正 → 可能溢出

负 - 正 = 负 + 负 → 可能溢出
3. 溢出检测方法
通过 观察运算结果的符号是否合理 来判断是否溢出：

加法：若 两个正数相加得负数，或 两个负数相加得正数，则溢出。

减法：若 正数减负数得负数，或 负数减正数得正数，则溢出。
符号组合运算（正确结果）
    0   0   1   1   (操作数1的符号：0=正，1=负)
   +0  -1  -0  +1   (操作数2的符号)
   ---------------
    0   0   1   1   (正确结果的符号)
    *通过检查结果符号是否与顶部操作数的符号一致来进行溢出检测*
无符号数：仅关注 最高位进位 Cn（CF），表示数值超出位数范围。
例如：1111（15） + 0001（1） = 0000（0）且 CF=1。
有符号数：需额外检查 C n ⊕C n−1（OF），因为符号位必须被保护。
== 自增或自减
== 乘4 左移两位
    乘5，左移2再自增
== zero fill
    位宽不一样的时候要补0   
== Extension（最高位进行扩展）
高位是0，补0
高位是1，补1
#image("image-71.png")
#image("image-72.png")
#image("image-73.png")

6 个无效的 BCD 码组合（1010, 1011, 1100, 1101, 1110, 1111）
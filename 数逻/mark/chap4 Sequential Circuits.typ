= 时序电路则拥有存储信息的能力，对于时序电路来说，输出除了与输入有关（甚至可以没有输入），也可以与自身 状态(state) 有关。

组合电路没法实现信息的存储，所有的功能模块对于特定的输入给出相同的输出
#image("image-44.png")
- State（状态）：从存储元件读出来，反馈给组合逻辑使用

- Next State（下一状态）：组合逻辑计算出的结果，送到存储元件中

- 存储元件存储当前状态，在时钟信号到来时更新为下一状态，从而实现电路的“记忆”与状态变换。

时序电路包含两个主要部分：

+ 存储元件（Storage Elements）

    例如：锁存器（Latches） 或 触发器（Flip-Flops）

    用于保存当前状态（State），是电路中的“记忆”部分。

+ 组合逻辑（Combinational Logic）

    不带记忆功能，仅依赖当前输入和当前状态来决定输出和下一个状态。

Next state = f(inputs,state)

outputs = g(inputs,state) ( Mealy)

outputs = h(state) ( Moore)
#box(width: 100%, height: 0.5pt, fill: green) 

= 同步和异步
时序电路行为依赖于“什么时候”观察输入并改变状态。

主要分为两类：

- 同步时序电路(synchronous sequential circuit) 

    行为是基于在*特定的时间点（discrete instances）*上观察信号。

    这些特定的时间点是由*时钟信号（clock pulses）*定义的。

    存储元件（如触发器）只有在时钟到达时才会读取输入并改变状态。

    比如触发器（Flip-Flop）

- 异步时序电路(asynchronous sequential circuit)。
    行为基于任何时间点的输入信号变化，不依赖于统一的时钟。

    输入何时改变，电路就会立即响应，不等待任何时钟。

    如果我们把时钟也看作一种输入信号，那所有电路其实都是异步的（从物理角度看）。

    比如锁存器（Latch）
#table(
    columns:4 ,
    [类型],[是否依赖*时钟沿*],[状态变化时机],[控制机制],
    [同步电路],[是],[在时钟沿（上升/下降）发生(统一)],[边沿敏感],
    [异步电路],[否],[只要输入变了（任意时刻）],[电平敏感]
)
#box(width: 100%, height: 0.5pt, fill: green) 

= Storage Elements
时序电路中最重要的就是信息存储元件。当输入信号不发生变化时（重点是变化，即输入和存储信息未必存在对应关系）存储元件就能够保持其内部存储的二进制数据。
== buffer相当于storage
#image("image-45.png")
== 离散事件模拟”（Discrete Event Simulation）
在模拟中，门电路的输入到输出的转换是瞬时的，但有一个固定的延迟时间。
#image("image-46.png")
组合逻辑

S从1到0 选A 那B那条路为0，此时A是1，Y应该是1，但是非门有延迟 中间0.2时候全是0了，有毛刺
#image("image-47.png")

时序逻辑
#image("image-48.png")形成一个震荡，1.1ns，可以做时钟
#box(width: 100%, height: 0.5pt, fill: blue) 


存储元件主要由 锁存器(latch) 和 触发器(flip-flop)（也叫寄存器） 两种

= 锁存器(latch) 异步

== SR 锁存器


#image("image-74.png")

#table(
    columns:4,
   [S],[R],[Q(下一个状态)],[含义],
    [0],[0],[保持（不变）],[维持原状态],
    [1],[0],[1],[设置 Q=1],
    [0],[1],[0],[清除 Q=0],
    [1],[1],[无效/非法],[禁止状态]
)
在 SR 锁存器中，S=1, R=1 的输入是禁止的(forbidden) 或者说未定义的(undefined)，此时输出端 Q=0 和 $overline(Q)$=0
同时成立(两个输出都为0，违反互补关系)。一般不使用这种状态

#box(width: 100%, height: 0.5pt, fill: blue)
== S'R'锁存器 
#image("image-75.png")

S=0时候set，Q存S反

如果 $overline(S)$ 和 $overline(R)$ 同时从0变到1，则输出是不稳定的(unstable)。如果两个与非门的时延完全相同，则输出会在 01 之间震荡

否则会稳定在 Q=0 或 Q=1 中的一个状态，取决于两个与非门的时延。

如果同时为0，则输出全为1 ，违反互补 所以不要了

#box(width: 100%, height: 0.5pt, fill: blue)
== 带控制输入的 SR 锁存器(SR Latch with Control Input)

由于电路存在延时，所以 S 和 R 的输入很难同时到达，所以我们可以在前面加一个控制端，当确保两个输入都到位的时候再使能。
#image("image-49.png")
c=0,直接保持，不管S R变化

c=1，正常的 S'R'锁存器

注意！SR 锁存器通过 或非门 实现，但带输入控制的 SR 锁存器则通过 与非门 实现！

#box(width: 100%, height: 0.5pt, fill: blue)
== D latch （D 锁存器）
为了解决 SR 锁存器非法状态的问题，D 锁存器只允许一个输入：D（数据）
#image("image-50.png")
#table(
    columns:3,
   [Enable],[D],[Q(输出)],
    [0],[X],[保持（不变）],
    [1],[0],[0],
    [1],[1],[1]
)
当 C 为 1 (高电平)时，输出就等于输入 D（立即跟随 D）

当 C 为 0 （低电平）时，D 锁存器的数据就不会变化


#image("image-51.png")

#box(width: 100%, height: 0.5pt, fill: blue)


锁存器的标准符号 Standard Symbols for Latches:
#image("iFJ7MCYp.png")

锁存器是透明(transparent) 的。

当锁存器的使能（Enable）为有效电平时，输出 Q 会“透明地”跟随输入 D 的变化，这种状态称为锁存器是“透明”的。

```
if (Enable == 1)    // 例如高电平有效
    Q <= D;         // Q 跟着 D 实时变化（透明状态）
else
    Q 保持原值      // 锁存状态，D 变化无影响
```

如果 latch 长期处于透明状态，输入稍有抖动、毛刺也会被传进来，导致不稳定。

所以 latch 通常用于小范围的时序控制（如 pipeline stage），而不是系统主存储元件（那用 flip-flop）。

透明的问题——空翻(the latch timing problem)：

#image("image-52.png")

C=1，Y 一直在变，取决于C=1的延时

而我们期望的功能时，一整段 C=1 只会导致 Y 的值改变一次。

#box(width: 100%, height: 0.5pt, fill: blue)
*时序问题：*

当时钟脉冲保持为 1 时，锁存器的输入信号可能因为其余锁存器的输出信号的改变而改变，从而在一个时钟周期内发多次变化，这是我们要引入触发器的原因

#box(width: 100%, height: 0.5pt, fill: blue)
= 触发器(flip-flop)(寄存器) （同步）
触发器是一种边沿敏感的时序元件，只有在*时钟信号的上升沿（或下降沿）*到来时，才会将输入值锁存进来。

分为主从式（是同步吗）和边沿触发式
== 主从触发器 Master-Slave Flip-Flop
#image("image-53.png") 
一般通过将两个 SR 锁存器先后连接起来所得到

其中前者称为主锁存器(master latch)

后者称为从锁存器(slave latch)，

两者的控制信号是相反的。

当C=1时，第一个锁存器对输入信号进行采样。

当C=0时，第二个锁存器改变输出信号。

一高一低，把S传过去
#box(width: 100%, height: 0.5pt, fill: blue)
毛刺捕捉（1s catching）

定义：这种行为被称为“毛刺捕捉”。

在时钟控制的触发器中，即使输入信号（如 S 或 R）的变化非常短暂（即产生毛刺），也可能被触发器捕捉并影响其输出状态。

C=1，S=0,R=0,如果S 或 R 输入短暂地跳变到 1,（S R全为0导致的保持影响）,就会导致 Slave 写入异常数据

#box(width: 100%, height: 0.5pt, fill: blue)
== 边缘触发式(edge-triggered) 触发器
    忽略了保持阶段的时钟脉冲（C = 1这种），只有在时钟信号发生跳变时（正边沿到来时或负边沿到来时）触发。
== D Flip-Flop(边缘触发式)
a negative-edge triggered flip-flop

#image("image-91.png")

Positive-Edge Triggered D Flip-Flop

C=0 第一个读入 

C=1 第二个读入 
#image("image-92.png")

#box(width: 100%, height: 0.5pt, fill: blue)
= 初始化状态
#image("image-55.png")

当0被应用到R（复位）输入时，触发器被重置到0状态。

当0被应用到S（置位）输入时，触发器被设置到1状态。

#box(width: 100%, height: 0.5pt, fill: blue)
Standard Symbols for Storage Elements
#image("image-54.png")



#box(width: 100%, height: 0.5pt, fill: blue)

== J-K触发器  J-K Flip-Flop
可以1 1，直接取反
#image("image-56.png")
#image("image-93.png")
== T触发器 T=0不变，T=1取反
#image("image-57.png")
#image("image-94.png")

#box(width: 100%, height: 0.5pt, fill: green)

= 触发器的基本描述方法
- *状态表(Characteristic Table, or State Table)*用输入和当前状态来描述下一状态；

- *激励表(Excitation Table)*用当前状态和下一状态来描述输入（展示从当前状态转移到下一状态所需要的输入）；
- *Characteristic equation* defines the next state 
of the flip-flop as *a Boolean function* of the flip-flop inputs and the current state
#image("image-58.png")
#image("image-76.png")

状态表的状态变量是由其内部的存储元件（如触发器 Flip-Flops 或锁存器 Latches）的内容决定的

每个触发器的输出 (通常是 Q 端) 代表一个状态变量。如果一个电路有 n 个触发器，那么它就有 n 个状态变量，理论上可以有 $2^n$ 个不同的状态。

特性表中的“输入” (Input in this Characteristic Table - a D column):

指的是 D 输入引脚 在 时钟有效边沿（例如上升沿）到来时 的逻辑电平值。我们通常可以将其表示为 D(t)，即在时间 t（时钟触发瞬间）D输入的值。
它 不是 指触发器当前的输出状态 Q(t)。

特性表中的“输出” (Output in this Characteristic Table - a Q(t+1) column):
指的是 Q 输出引脚 在 该时钟有效边沿作用之后 将会变成的逻辑电平值。这正是 下一时刻的状态 (Next State)，表示为 Q(t+1)。

#box(width: 100%, height: 0.5pt, fill: blue)



= State Diagrams（状态图）

如果输出既依赖于当前状态，也依赖于输入的时序电路，则称为 米勒型电路(Mealy model circuit)；而如果输出只依赖于当前状态，则称为 摩尔型电路(Moore model circuit)。

==  米勒型 

#image("image-77.png")
因为米勒型电路的 *输出*与*当前状态*和*输入*都有关，所以输出会和输入放在一起，即放在 edge 里。

节点表示状态，边表示输入/输出（这一输入下会转移到的状态及对应的输出）
#image("image-79.png")

#box(width: 100%, height: 0.5pt, fill: blue)

==  摩尔型 

因为摩尔型电路的 *输出*只与*当前状态*有关，所以输出会和当前状态放在一起，即放在 node 里。

节点表示状态/输出，边表示输入（这一输入下会转移到的状态）
#image("image-158.png")



#box(width: 100%, height: 0.5pt, fill: blue)
== 优化：合并等价状态

对于两个状态，如果它们对于同一输入序列的响应是完全相同的（包括相同的输出和相同的状态转移），那么这两个状态是等价的。

#image("image-150.png")
#image("image-80.png")


#box(width: 100%, height: 0.5pt, fill: blue)

#image("image-83.png")
这是一个计数器
#image("image-85.png")
#image("image-84.png")、


#box(width: 100%, height: 0.5pt, fill: green)
= The Design Procedure
#image("image-88.png")
== 状态分配
#image("image-89.png")
每个m个状态必须被分配一个唯一的编码

所需的最小比特数n满足：n≥⌈log 2 m⌉

米勒型

the output 0表示还没识别到
#image("image-86.png")
摩尔型

the output 0表示还没识别到
#image("image-87.png")
结果比米勒型晚一个时钟
#box(width: 100%, height: 0.5pt, fill: blue)
*state assignment*

状态分配对电路cost有影响
常见的状态赋值方法如下：
#table(

    columns: 2,
    [赋值方法],[特性],
    [按照计数的顺序(counting order) 分配],[],
    [按照格雷码顺序(Gray code order) 分配],[在使用卡诺图作化简时非常方便],
    [独热码],[触发器很多]
)
#box(width: 100%, height: 0.5pt, fill: green)
在时序电路（Sequential Circuit）

现态（Current State）

指电路当前时刻（当前时钟周期）的状态

次态（Next State）

指电路下一个时钟周期即将进入的状态
#image("image-90.png")
#box(width: 100%, height: 0.5pt, fill: green)
= 状态机（State Machine Diagram）
#image("90.png")
状态机由三大部分构成：

输入条件（Input Conditions） 输入条件告诉我们整个状态机要如何变化

状态转移（Transitions） 状态转移描述了状态机的内部转移行为，即图论上的有向联通关系

输出行为（Output Actions） 输出行为描述动态变化过程中状态机的对外表达


输入条件分为TC和OC


#table(
    columns:5,
    [TC],[Transition Condition],[状态跳转的触发条件],[写在状态转移的有向边上],[控制状态变更],
    [OC],[Output Condition],[输出动作的触发条件],[写在输出动作（输出变量）前],[控制是否进行输出]
)

「状态转移」在图中表现为有向边，当 TC 成立时，状态转移发生；或者对于无条件转移，只要得到时钟脉冲就会转移到下一个状态。



「输出行为」在状态机中有四种触发方法（即四种 OC）： 
- Moore型输出（Moore Output）
    输出只与状态有关

    图中表现：直接从状态节点中引出输出行为

    类比：只要电梯在“上行”状态，就点亮“上行”灯（和按钮无关）

- Mealy型输出（Mealy Output）
    输出与输入/转移有关

    根据依赖程度，分为3类：

    #table(
        columns: 4,
        [TCI],[Transition-condition Independent],[与状态 + 输出条件有关],[所以在图中从状态节点引出写在 OC 后面 OC/TCI],
        [TCD ],[Transition-condition Dependent],[与转移条件有关],[直接写在 TC 后面],
        [TOCD],[Transition & Output-condition Dependent],[TC 和 OC 都满足时才输出],[TC——OC/TOCD]

    )
    #image("image-151.png")

= 状态机（State Machine）设计中的约束检查（Constraint Checking）

+ TC Constraints（转移条件约束）

    不能同时满足多个转移条件，否则会导致状态机不知道该往哪个状态走（状态冲突）。

    所有可能的转移条件加起来要“覆盖完所有输入情况”

+ OC Constraints（输出条件约束）

    如果一个输出变量在同一状态 Sᵢ 下（或转移时）有多个值的情况（比如某时输出1，某时输出0）；

    那么这些对应的输出条件必须互斥，不能同时成立；

    否则会导致同一个输出变量被赋值为多个冲突的值。  

    任何时候系统都必须知道这个输出变量应该输出什么；
    没有漏掉、不明确的情况。




    clock到寄存器时间有延时 为了同时我们可以用二叉树画法


= sequential circuit timing(延迟分析)

$t_(P L)$等等
delay model:
+ transport delay
+ inertial delay
详见chap3


#image("image-95.png")
$t_s$ : setup time（在时钟沿过来之前 数据输入要保持一段时间） 

$t_h$ : hold time （时钟变化之后 数据输入保持一段时间 让数据能传过去）

$t_p$ : clock period（时钟周期）

比如$t_(P H L) t_(P L H) t_(p d) = max(t_(P H L) t_(P L H))$

$t_(p x)$:propagation delay


$t_(p d,C O M B)$ 组合电路延迟

$t_p > t_(p d)$

$t_(s l a c k)$ 额外多点时间啊防止高温影响什么的
#image("94.png")
#image("image-152.png")


后面犯懒了之后在做吧
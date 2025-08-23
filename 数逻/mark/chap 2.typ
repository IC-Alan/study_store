= literals
在数字逻辑（数逻）中，*literals* 指的是一个自变量或其反变量。具体来说，它是一个逻辑变量的两种可能形式之一：变量本身（如 A）或其非（如 $overline(A)$）。

#box(width: 100%, height: 0.5pt, fill: green)
= logical operators 逻辑运算符
The three basic logical operations:

与(AND)，或(OR)，非(NOT) 

- AND is denoted by a dot (·), ×, ∧, or even none. 

- OR is denoted by a plus (+) or ∨, 

- NOT is denoted by an overbar ( ¯ ), a single quote mark (') after, or (`~`) before the variable.

*Note*: 

The statement:  1 + 1 = 2 (read “one plus one equals two”)

is not the same as

1 + 1 = 1 (read “1 or 1 equals 1”).

这是逻辑运算中的“或”（OR）运算/*也不是二进制*/

_一个函数的 arguments 是指传递给函数的输入值_
#box(width: 100%, height: 0.5pt, fill: green)
= Truth Table
用0和1
#image("pic/truth.png")
#box(width: 100%, height: 0.5pt, fill: green)


= logic gates逻辑门

逻辑门(logic gate) 是在硬件层面上实现布尔代数的逻辑单元。其操作对象为高低电平。但是由于是物理层面的实现，所以会有一些逻辑运算层面不会出现的问题，比如  延时(delay)。

#image("pic/V0JNs4Cc.png")
#box(width: 100%, height: 0.5pt, fill: green)

= Gate Delay逻辑门有延时的

The delay between an input change(s)
and the resulting output change is the gate delaydenoted by $t_G$:

按位或（Bitwise OR）：针对每一位进行运算，适用于位操作和硬件电路。

按值或（Logical OR）：针对整个值进行逻辑判断，适用于条件判断和布尔逻辑
#box(width: 100%, height: 0.5pt, fill: green)

= 运算
A(（BC）+D)=ABC+AD
#box(width: 100%, height: 0.5pt, fill: green)

= 逻辑门的实现
继电器 $arrow$ 真空管 $arrow$ 晶体管

NAND（与非门）：也是一个门 实现所有门
#image("image-26.png")

比如 与门：NOT+NAND


NOR（或非门）
#image("image-27.png")
#image("image-28.png")

XORe  "exclusive-OR"（异或）
#image("image-29.png")
#image("image-30.png")

XNOR：XOR+NOT
#image("image-31.png")
#box(width: 100%, height: 0.5pt, fill: green)

= Multiple-input gates（输入口有多个）
#box(width: 100%, height: 0.5pt, fill: green)
= although X+Y=X+Z,XY=XZ,it is uncertain,Y=Z
   
   X+Y=X+Z  : X=1 恒等
   
   XY=XZ  : X=0 恒等

#box(width: 100%, height: 0.5pt, fill: green)   
= Boolean Algebra: also called Logic Algebra 
   + Logical variables
      - Is a binary variable. 
      - Two logical values only take 0,1 (true, false). 
      - 逻辑值没有大小之分

   + Three basic functions：AND、OR、NOT

一个函数可以用多种表达式表示，函数表达式并不是唯一的。可以是单输出或多输出，后者需要多个函数表达式来表示输出，也可以使用真值表，布尔函数与真值表是一一对应的。

#box(width: 100%, height: 0.5pt, fill: green)   
= 运算 
Algebraic manipulation “代数运算”
#image("image-32.png")
#image("image-34.png")

- c)  $overline(X)$Y + $overline(Y)$Z + X$overline(Z)$  = X$overline(Y)$  + Y$overline(Z)$  + $overline(X)$Z

- d) $overline(X)$$overline(Y)$ + $overline(Y)$Z + XZ + XY + Y$overline(Z)$ 


   =$overline(X)$$overline(Y)$ + XZ + Y$overline(Z)$+$overline(Y)$Z(X+$overline(X)$)+XY(Z+$overline(Z)$)

#image("image-65.png")
#box(width: 100%, height: 0.5pt, fill: green)  

= boolean function equal

truth table is completely identical 

#box(width: 100%, height: 0.5pt, fill: green)  

= complementing function（反函数）F $overline(F)$  
- 0 1 互换 
- AND OR互换
- variable inverses

1.priority unchanged（加括号）

2.公共非运算不变：在布尔代数的转换过程中，如果多个变量共享同一个非运算（即逻辑非），那么这个公共非运算在转换过程中保持不变。
#image("image-33.png")

#box(width: 100%, height: 0.5pt, fill: green)  
= 对偶规则（对偶的对偶就是自己）Duality rules
- AND OR互换
- 0 1互换
- （variable unchanged）
- 运算顺序不变
- If the two logical functions F and G are equal

 then the Duality formula F' and G' are also equal.

#image("image.png")
10与11对偶
#box(width: 100%, height: 0.5pt, fill:blue)

- self-dual

Example: H = A ·B + A · C + B · C

dual H = (A + B)(A + C)(B + C)= (A +BC) (B+C) = AB + AC + BC. 

*Unless it happens to be self-dual,
   the dual of an expression does not equal the expression itself.*

#box(width: 100%, height: 0.5pt, fill: green)  

= 替换规则 Substitution rules 
任何包含变量A的逻辑方程，如果A的所有位置都用逻辑函数F代替，该方程仍然成立
#image("image-35.png")/*反函数*/
#image("image-36.png")/*香农公式*/
#image("image-37.png")
#box(width: 100%, height: 0.5pt, fill: green) 

= 优先级
- 括号 / ()；
- 非 / NOT / 
- 与 / AND /
- 或 / OR / 
- *AND>OR*
#box(width: 100%, height: 0.5pt, fill: green) 

= 布尔代数是组合逻辑(即时性变化)
#box(width: 100%, height: 0.5pt, fill: green) 

= boolean function 都可以表示成som 和pom 
- Minterms are AND terms with every variable present in either true or complemented form.（×） 
   - minterm每一个表达式都要出现，如果没出现就 ：∧（A+$overline(A)$ ）
   - 变量值是0取反，1不取
   - 使用的最小项是对应于1的项。
   #image("image-40.png")
- Maxterms are OR terms with every variable in true or complemented form（+）
   - 1时候取反，0不取
   - 使用的最大项是对应于0的项。
   - 缺项时候：+ （A×$overline(A)$ ）再用分配律
   #image("image-41.png")
#image("image-38.png")下标
- Mintermand Maxterm Relationship
#image("image-39.png")
 

#box(width: 100%, height: 0.5pt, fill: green)  
=== 函数补集（Function Complements）
对于以最小项和（sum of minterms）形式表示的函数，其补集可通过选择原函数中未包含的最小项来构建。

或者，一个函数的补集，如果该函数表示为最小项之和，那么就是具有相同索引的最大项的积。

示例：

给定 F(x,y,z)=Σ m(1,3,5,7)（即最小项之和形式）

F(x,y,z)=Σ m(0,2,4,6)（补集为最小项之和形式）

F(x,y,z)=Π m(1,3,5,7)（补集为最大项之积形式）
#box(width: 100%, height: 0.5pt, fill: green)  

=== 在布尔代数中，最小项（Minterm）和最大项（Maxterm）的下标通常是根据变量的顺序（如 A,B,C）来确定的

布尔表达式：如果布尔函数定义为 F(A,B,C)，那么变量的顺序就是 A、B、C。

真值表：在真值表中，变量的顺序通常在表的顶部明确列出。例如：
#table(
   columns:4,
[A],	[B],	[C],	[F(A, B, C)], 
[0],	[0],	[0],	[0],          
[0],	[0],	[1]	,[1],
[0],	[1],	[0]	,[0],
[0],	[1],	[1]	,[1],
[1],[0],	[0]	,[1],
[1],[0],	[1],	[0],
[1],[1],	[0],	[1],
[1],	[1],	[1],	[1]
)

在这个真值表中，变量的顺序是 A、B、C。（A是最高值，A变化最缓慢）

#box(width: 100%, height: 0.5pt, fill: green)  

== SOP和POS

#image("image-42.png")

SOP：对于 n 个变量的最小项和形式可以直接从真值表中写出。

比如$F(A,B,C) = overline(A)B C + A overline(B) C$

实现这种形式是一个两级门网络，具体如下：

第一级由 n 输入的与门（AND gates）组成

每个最小项用一个 AND 门实现。

第二级是一个单一的或门（OR gate）（输入少于 $2^n$ ）。

这种形式通常可以简化，从而使相应的电路更简单。
#box(width: 100%, height: 0.5pt, fill: green) 
- Literal cost (L)

   the number of literal(重复出现也算，取反的也算) 
- Gate input cost (G)=L+项数
- Gate input cost with NOTs (GN)

A+BC+$overline(B)$$overline(C)$

单个不再算了 G=7

#image("image-43.png")

F = X Gate Cost 是0
#box(width: 100%, height: 0.5pt, fill: green) 

= 画卡诺图(K-maps)
#image("image-1.png")
第一行是格雷码

其实是环状的

框起来 框四个 删两个变量

#image("pic/5a5f4d20a89795b6d2f52d1d2bbfb5cf.png")
-   用最少的圈覆盖所有 1 是卡诺图简化的核心目标之一。通过用最少的圈覆盖所有 1，可以确保最终的布尔表达式是最简化的形式。以下是具体的步骤和注意事项：

   1. 用最少的圈覆盖所有 1
   每个圈（合并组）必须覆盖 2 的幂次方个 1（如 1, 2, 4, 8 等）。

   每个圈必须是矩形，且可以跨越卡诺图的边界（因为卡诺图是循环的）。

   目标是使用尽可能少的圈覆盖所有 1，同时尽量让每个圈尽可能大。

   2. 如何确保圈的数量最少
   优先覆盖最大的可能合并组：先尝试覆盖包含最多 1 的合并组，这样可以减少需要的圈数。

   避免重复覆盖：如果一个 1 已经被某个圈覆盖，通常不需要再将它包含在另一个圈中，除非这样做可以形成更大的合并组。

   检查所有 1 是否被覆盖：在完成圈选后，确保没有 1 被遗漏。

   3. 处理无关项（Don't Care Conditions）
   如果卡诺图中有无关项（标记为 X），可以根据需要将它们视为 1 或 0，以帮助形成更大的合并组。

   无关项不需要被强制覆盖，但如果覆盖它们可以减少圈数，则可以包含它们。
   圈的个数要尽可能的少，因为一个圈对应一个与项，既与项最少

#box(width: 100%, height: 0.5pt, fill: blue) 
卡诺图化简后得到的通常是布尔函数的最简“与-或”表达式（SOP，Sum-of-Products）或最简“或-与”表达式（POS，Product-of-Sums），具体格式取决于化简的目标和需求。

1. 最简“与-或”表达式（SOP）
这是最常见的化简结果格式，表示为若干“与”项的“或”组合。
这种格式适用于逻辑电路设计中，能够直接指导电路的实现。

2. 最简“或-与”表达式（POS）
如果需要得到“或-与”形式，可以通过对卡诺图上的“0”方格进行化简，得到若干“或”项的“与”组合。
#box(width: 100%, height: 0.5pt, fill: blue) 

= Prime Implicant和Essential Prime Implicant

-   *一个质蕴涵项（Prime Implicant）*是通过在卡诺图中将*最大数量的相邻方格*组合成一个矩形而得到 的乘积项，这些方格的数量必须是2的幂。
   （全都要）

- 如果一个质蕴涵项覆盖了至少一个不被其他任何质蕴涵项覆盖的最小项，那么这个质蕴涵项就是*必要质蕴涵项（Essential Prime Implicant）。*这里的“最小项”通常指的是函数真值表中使函数值为1的项，而不是don't care条件（X）

这个被唯一覆盖的最小项确保了该质蕴涵项在最终的化简表达式中是必需的，因为没有其他质蕴涵项可以覆盖这个最小项。

- 每个质蕴涵项是由多个最小项合并而成的。在布尔代数中，质蕴涵项是通过合并卡诺图中相邻的“1”方格得到的，它代表了一组最小项的组合

#box(width: 100%, height: 0.5pt, fill: blue) 
= 不定项(Don't Cares) 
输入组合不会出现 我们可以随意定义它们的输出，此时就可以利用这些项来方便我们的优化

#box(width: 100%, height: 0.5pt, fill: green) 
= Primitive Gates
#image("image-2.png")
#box(width: 100%, height: 0.5pt, fill: green) 
= buffer
相当于放大器
#box(width: 100%, height: 0.5pt, fill: green) 
= 三态缓冲器(3-State Buffer)
#image("pic/28.png")
使能端(enable)
- en为1，相当于buffer
- en为0，Hi-z高阻态，相当于断开
#box(width: 100%, height: 0.5pt, fill: green) 
= 两个或非门不能接在一起，一个1，一个0，会短路
#box(width: 100%, height: 0.5pt, fill: green) 
= HDL
RTL即HDL
#box(width: 100%, height: 0.5pt, fill: green) 
= DUT
测试代码


#box(width: 100%, height: 0.5pt, fill: green) 



#image("pic/image-7.png")
#image("pic/image-8.png")

#box(width: 100%, height: 0.5pt, fill: green) 

#image("pic/image-9.png")
#image("pic/image-10.png")

#box(width: 100%, height: 0.5pt, fill: green) 
质蕴涵项（Prime Implicant）在逻辑函数化简中需要覆盖（包含）逻辑函数的所有最小项（即真值表中对应输出为1的项）

并非所有质蕴涵项都需要进入最终的表达式。最终的表达式只需要一个最小覆盖（Minimal Cover），即用最少的质蕴涵项覆盖所有最小项（或最大项）


(a) F(W, X, Y, Z) = Σm (0, 2, 5, 7,  8, 10, 12, 13, 14, 15)、
#image("pic/image-12.png")

(b) F(W, X, Y, Z) = Σm  (0, 2, 4, 5, 8, 14, 15),  d(W, X, Y, Z)= Σm  (7, 10, 13)
#image("pic/image-13.png")
#box(width: 100%, height: 0.5pt, fill: green) 
#image("image-66.png")

#box(width: 100%, height: 0.5pt, fill: green) 
#image("image-67.png")
原式 = (A+C)($overline(A)$+B) = AB+$overline(A)$C(A+B)+BC = $overline(A)$BC+BC = BC
#box(width: 100%, height: 0.5pt, fill: green) 
#image("image-68.png")

(b) $overline(A + B + C)$$overline(A B C)$ 取两次反可得$overline(A)$$overline(B)$$overline(C)$

c)   AB$overline(C)$ + AC

literal计算  

A(B+C) (3)

AB+AC (4)


#box(width: 100%, height: 0.5pt, fill: green) 
#image("image-69.png")可能要加个括号吧
#box(width: 100%, height: 0.5pt, fill: green) 
logic diagram → 逻辑图（数字电路中的门级示意图）

 Redundant 冗余 在求F之后为了求Prime 又加上的
2-21 2-26

#image("image-203.png")

$X+Y = (X xor Y) + X Y$
#image("image-204.png")

$A C+ overline(A) B + B C = A C+ overline(A) B $
看不出来就用卡诺图
= 信息表达 | Information Representation
现实世界中的信息往往是 连续(continuous) 的，但在人造物的世界中，大部分信息都是 离散(discrete) 的。

在电子信息系统中，信号分为 模拟信号(analog signal) 和 数字信号(digital signal) 两种。其中，在 数字信号(digital signal) 中又有多种表示方法，如今我们最常用的是 二进制(binary)。对应到电路层面，我们常常用 高电位(HIGH) 和 低电位(LOW) 来表征 1 和 0。

#box(width: 100%, height: 0.5pt, fill: blue)

== 1.2
#image("pic/image-18.png")
- 模拟信号(analog signal)：取值是连续(continous) 的。
- 数字信号(digital signal)：取值是离散(discrete) 的。
- 异步(asynchronous)：在变化的时间点上是连续的。
- 同步(synchronous)：在变化的时间点上也是离散的；由时钟脉冲控制。
#box(width: 100%, height: 0.5pt, fill: blue)
== 1.3
Voltage（电压）

Threshold Region（阈值区域）

decimal（小数/十进制）

Dynamic RAM（动态随机存取存储器）

#image("pic/image-19.png")

- HIGH 和 LOW 是噪声容限。
- 图中 HIGH 和 LOW 的接受范围内存在一段阈值区间，落在这一部分的电平是未定义(undefined)  的，也被称为是浮动(floating)  的。如果输出的电平是在浮动区间的，那么其认定值将是随机的。
- 硬件层面上，将模拟信号转化为数字信号的工作一般通过晶体管(transistors)  实现。

* “宽进严出”规则 *

输出时的接受范围会比输入时的略小一些。其目的是为了进一步提高电路在噪音等异常影响下也能正常表现的能力。

#box(width: 100%, height: 0.5pt, fill: green)
= Types of Digital Systems

== 1.1 Combinational Logic System（组合电路）

- 没有状态 No state present

- 只需要推导出一个函数即可 Output Function: Output = Function(Input)

#box(width: 100%, height: 0.5pt, fill: blue)

== 1.2 Sequential Logic System（时序电路）

- 存在状态 State present
-- Synchronous Sequential System <=> State updated at discrete times

-- Asynchronous Sequential System <=> State updated at any time

- 次态方程 State Function: Next State = Function(Current State, Input)

- 输出方程 Output Function: Output = Function(State, Input(optional))

#box(width: 100%, height: 0.5pt, fill: blue)

== 1.3
- 数字计算机(digital computer)

  Instructions can be executed in the computer指令可以在计算机中执行

  Analog done automatically converted into a digital-value used on analog-to-digital conversion apparatu（模拟信号通过模数转换装置自动转换为数字值）

- 嵌入式系统(embedded system)

- Organization Of Computer

#image("pic/p6SvckWy.png")

#box(width: 100%, height: 0.5pt, fill: green)

= Number System 数字系统

constraints(约束条件)

Numeric（数值型）

#box(width: 100%, height: 0.5pt, fill: blue)

== Positional Number System 位值计数制

Three important factors： radix、cardinality、Weight

- *Cardinality*—Represents the number of digital 
collection (basic symbols) within Counting system

- *radix*—Size of the collection(base)

- *Weight or Bit weights*：Determine the digit position 
(Weight value of Digit at some position )

_Instance represents a decimal number_

- _radix ： R=10_

- _basic symbols ： 0,1,2,3…9_

- _Weight ：_ 


_$W_i = 10^i$_

#image("image-127.png")

#table(
  columns: 4,
  [Decimal],[Binary],[Octal],[Hexadecimal],[base 10],	[base 2]	,[base 8],	[base 16])
#box(width: 100%, height: 0.5pt, fill: blue)
=== Rules of operation （binary）

+ ADD：
  #table(
    columns: 1,
  [0 + 0 ＝ 0],[ 0 + 1 ＝ 1],
  [1 + 0 ＝ 1],
  [1 + 1 ＝ 10])

+ MUL：
  #table(
    columns: 1,
  [0 × 0 ＝ 0],[ 0 × 1 ＝ 0],
  [1 × 0 ＝ 0],
  [1 × 1 ＝ 1])
#image("pic/{D331414F-7DFC-44C4-95AD-D17630B9033C}.png")
#box(width: 100%, height: 0.5pt, fill: blue)
== Converting 
=== binary to octal
#image("pic/cvdog8vo7p5sp345fgsg.png")
=== binary to Hexadecimal
#image("pic/cvdogvj12h63cd3lh13g.png")

===  Decimal to Binary
#image("pic/cvdohpc6toi4nld54htg.png")

#image("pic/cvdorbdm2cig9getiv80.png")

Number of Elements Represented

Given n digits in radix r, there are $r^n$ distinct elements that can be represented

But, you can represent m elements, m < $r^n$

#box(width: 100%, height: 0.5pt, fill: green)

*用二进制编码数值：*

Information Types：

- Numeric 数值型

  常见算术运算能简单直接地执行

- Non-numeric 非数值型

  Non-numeric Binary Codes：

  给定 n 个二进制位，二进制编码是将一组待表示元素映射到 $2^n$个二进制数子集的过程。

  比如 #image("image-128.png")
#box(width: 100%, height: 0.5pt, fill: blue)

若需用二进制编码表示 M 个元素，则所需的最小比特数 n 满足：

$2^n >= M >= 2^(n-1)$

$n = ceil log_2(M) ceil.r$

#box(width: 100%, height: 0.5pt, fill: blue)

DECIMAL CODES - Binary Codes for Decimal Digits

#image("image-129.png")

#box(width: 100%, height: 0.5pt, fill: green)

*Numeric*

= 1.BCD编码 Binary Code Decimal
最常用的就是 BCD码(binary-coded demical)。其核心思路就是，将十进制的*每一位* _分别_  *用 4 位二进制* 表示，即 0 ~ 9 分别用 0000 ~ 1001 表示。


_直接将十进制的每一位数字映射到一个固定的 4 位二进制编码上，而不需要像纯二进制那样对整个十进制数进行复杂的转换。_

The BCD code is the 8,4,2,1 code. 8, 4, 2, and 1 are weights

BCD is a weighted code

#image("pic/{B65A88A8-2B06-4F77-9B01-EDDF11EA8EB8}.png")

BCD 码在做加法时，类比十进制加法一样按 4 位一组计算。

当两位相加的结果大于 9 或者进位 时需要做一个 +6 的修正。（加6强行进位）
```

  1001 (9)
+ 1001 (9)
----------
1 0010
+ 0110 (加6修正)
----------
1 1000（18 √）  

```
e.g.:
- 8 + 9 = 17 = 16 + 17 - 16

  16 + 17 - 16 + 6 = 16 + 17 - 10 = 16 + 7 ( 7是正常剩位 ) 

- 4 + 8 + 1 = 13 = 10 + 3 = 16 - 6 + 3

  13 + 6 = 16 + 3 (加6让他能进位了，剩下3，能在BCD运算中表示正常的剩位)

#box(width: 100%, height: 0.5pt, fill: blue)
= 2.余三码(Excess3)。
其核心思路是在 BCD码的基础上，增加一个大小为 3 的偏移量。

#table(
  columns: 3,
  [Decimal],
[Excess3],[BCD],[0], [0011],[0000],[1],[0100],[0111],[2],[0101],[3],[0110],[4],[0111],[5],[1000],[6],[1001],[7],[1010],[8],[1011],[9],[1100])
8 4 -2 -1是什么
3:也就是 8421 码的容量减去我们需要表示的数字数量，再除以二

这样的好处是，十进制下能进位的两个数，在余三码下相加也刚好进位。
#box(width: 100%, height: 0.5pt, fill: blue)
*Warning: Conversion or Coding?*(转换还是编码)

Do NOT mix up conversion of a decimal number to a binary number with coding a decimal number with a BINARY CODE.

- 13（十进制）= 1101（二进制）

  这是转换。

- 13（十进制）→ 0001 0011（二进制码）

  这是编码。

编码中的“0”不能省略！
#box(width: 100%, height: 0.5pt, fill: blue)

= 3.格雷码
Shaft Encoder
轴编码器

相邻的就一位不同 放轴编码器上不会出问题 
列出来？
#box(width: 100%, height: 0.5pt, fill: blue)
= 4.奇偶校验位(Parity Bit)
在码字上附加一个额外的位，使得1的个数为奇数或偶数

它分为 奇校验(Odd Parity) 和 偶校验(Even Parity)。分别通过引入额外的一
位，来保证整个信息串中 1 的数量是奇数/偶数。

偶校验：

让码字中1的个数为偶数（even）

奇校验：

让码字中1的个数为偶数（odd）

码字“1111”具有偶校验，码字“1110”具有奇校验。两者都可以用来表示3位数据。

/* c) 011  0010  011  0101  011  0101 ASCII 
   d) 0011  0010  1011  0101  1011  0101 ASCII with Odd Parity 
   奇怪捏*/



#box(width: 100%, height: 0.5pt, fill: green)

*Non-numeric*

== ASCLL 用7位
#image("pic/{ACE4897F-5645-49A3-BE3B-D1037FB31F59}-1.png")
A:100 0001 

a:110 0001

A a只差一位

Punching all holes in a row erased a mistake
所以擦除全是1；

#box(width: 100%, height: 0.5pt, fill: blue)
#image("pic/{75B94A60-0EC8-47E6-8409-851E08BC72C1}.png")
UTF-8 : 1-4 字节 可变长度的字符编码

单字节与ASCII兼容

多字节序列的第一个字节以一个或多个1开头 第一个字节的开头几个1来指示后续还有多少个字节 

码点范围 U+0000 0000 到 U+0000 007F：

这个范围包括了从 U+0000 0000（也就是0）到 U+0000 007F（也就是127）的所有码点（这种表述用16进制）

通过0 110判断编码是一位表示还是两位表示

UTF-8解码的过程不是简单地删除前面的标志位，然后将剩下的位放在一起。解码过程需要根据每个字节的引导位来确定该字节属于哪个字节序列，并且它在该序列中的位置。以下是解码的基本步骤：
- 确定字节序列的长度：首先检查字节的引导位，确定它属于1字节、2字节、3字节还是4字节的序列。
- 提取有效位：对于每个字节，提取出除了引导位之外的有效位。
- 组合有效位：将所有字节的有效位组合起来，形成一个完整的二进制数。
- 转换为Unicode代码点：将组合后的二进制数转换为对应的Unicode代码点

#box(width: 100%, height: 0.5pt, fill: blue)

*UTF-8和ASCII都是字符编码方式，用于将字符（如字母、数字、标点符号等）
转换为计算机可以处理的数字形式。它们之间的主要区别在于编码方式、兼容性和字符集的大小：*

1. == 编码方式：
   - ASCII：使用7位二进制数来表示字符，总共可以表示128个不同的字符（0-127）。ASCII编码是固定长度的，每个字符都占用相同的位数。
   - UTF-8：使用1到4个字节来表示字符，是一种变长编码方式。它设计得与ASCII编码兼容，这意味着所有的ASCII字符在UTF-8编码中都占用一个字节，并且它们的字节值与ASCII编码中的相同。

2. == 兼容性：
   - ASCII：由于只使用7位，ASCII编码只能表示英文字符和一些特殊符号，不支持其他语言的字符。
   - UTF-8：UTF-8是Unicode的一种实现方式，可以表示世界上几乎所有的书写系统。它与ASCII编码兼容，这意味着任何ASCII文本也是有效的UTF-8文本。

3. == 字符集的大小：
   - ASCII：字符集有限，只能表示128个字符。
   - UTF-8：可以表示Unicode字符集中的所有字符，包括成千上万的字符，支持多语言文本。

4. == 多字节序列：
   - ASCII：所有字符都是单字节的。
   - UTF-8：为了表示更多的字符，UTF-8使用多字节序列。例如，一个字符可能由两个字节（110xxxxx 10xxxxxx）、三个字节（1110xxxx 10xxxxxx 10xxxxxx）或四个字节（11110xxx 10xxxxxx 10xxxxxx 10xxxxxx）组成。

5. == 网络传输：
   - ASCII：由于所有字符都是单字节的，因此在网络传输中通常更高效。
   - UTF-8：虽然多字节序列可能会增加数据量，但UTF-8的变长特性使得它在表示ASCII字符时仍然非常高效，而且能够处理多语言文本。

总结来说，UTF-8是一种更通用、更灵活的编码方式，它不仅支持ASCII字符，还能够表示世界上几乎所有的书写系统，而ASCII则主要用于表示英文字符和一些特殊符号。


#box(width: 100%, height: 0.5pt, fill: green)
*ADDITION*

+  K (kilo) means 1024 (or $2^10$).

  M (mega) means $1024^2$(or $2^20$).
  
  G (giga) means $1024^3$(or $2^30$).

#image("image-202.png")
+    1 Tb = $2^40$

+ #image("image-21.png")

+ 7562.45 to Octal
  
  #image("image-22.png")

+ 规则调整：十六进制的基数为16，因此进位阈值是8（对应十进制的“5”），而非十进制的5。具体规则为：

 - 若舍去部分的首位数 ≥ 8（十六进制），则向前一位进位；

 - 若 < 8，则直接截断。  

 （直接看0.5也行）

+ #image("image-23.png")
  保留0，可能是当编码了

+ 商（quotient）和余数（remainder）

+  Base 20 system → 基数为20的数字系统（或称“二十进制”）

  Digit representation scheme → 数码表示方案

  Hexadecimal (base 16) → 十六进制
  （10用A）
+ #image("image-24.png")
  #image("image-25.png")
  *考虑溢出了！！！*
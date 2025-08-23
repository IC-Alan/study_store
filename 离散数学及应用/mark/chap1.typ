= Chap1
== 1.1 命题 Propositions
- 悖论(paradox) 不属于命题
- Compound Propositions:constructed from logical connectives and other propositions
- 逻辑运算符(logical operator) or 逻辑连接词(logical connective):
  be used to form compound propositions from existing propositions
#table(
  columns: 3,
  [Connectives],[Expression],[],
  [Negation (NOT)],[¬p],[],
  [和取 Conjunction (AND)],[p∧q],[True when both p and q are true.],
  [析取 Disjunction (OR)],[p∨q],[False when both p and q are false.],
  [亦或 Exclusive Or (XOR)],[p⊕q],[True when exactly one of p and q is true.],
  [条件 Conditional (IF-THEN)(Implication)],[p→q],[False when p is true and q is false.],
  [双条件 Biconditional (IF AND ONLY IF)],[p↔q]

)

=== Conditional or Implication:#image("image-4.png")
In p →q , p is the hypothesis (antecedent or premise) and q is the
conclusion (or consequence).
在 p →q 中，前因或结果之间不需要有任何联系。p →q 的 “意义” 仅取决于 p 和 q 的真值。
#image("image-5.png")
p→q等价于¬q→¬p ¬p∨q
Different Ways of Expressing p →q
+ If p, then q
+ p implies q
+ If p, q
+ q if p
+ q when P
+ q follows from p
+ q whenever p
+ p is a sufficient condition for q
+ q is a necessary condition for p
+ *q unless ¬p*
+ *p only if q*
对于推断 p→q 我们可以定义以下条件语句：
- 逆命题(converse)：q→p
- 否命题(inverse)：¬p→¬q
- 逆否命题(contrapositive)：¬q→¬p
逆否命题与原命题等价
The contrapositive has the same truth values as the original implication.
=== Biconditional (if and only if)双条件语句
the biconditional proposition p ↔ q (p if and only if q)
True when p and q have the same truth values.
#image("image-6.png")
Some alternative ways：
+ p is necessary and sufficient for q
+ if p then q and conversely (vice verse)
+ p iff q
/*双条件句通常使用‘如果，那么’或‘只有……才’的结构来表达。‘当且仅当’的另一部分是隐含的*/
=== equivalent Propositions
Two propositions are equivalent if they always have the same truthvalue.
*Note:*In English “or” has two distinct meanings.
• Inclusive or:∨
• Exclusive or: ⊕
A⊕A = ∅（集合与自身的对称差为空集）。
=== Precedence of Logical Operators(运算符优先级)
括号优先级最高 Then ¬	∧	∨	→	↔


=== 
A bit string is a sequence of zero or more bits.
The length of this string is the number of bits in the string.
Bitwise operations are bit operations extended to bit strings.
The bitwise operations of two strings of the same length:
Bitwise OR
Bitwise AND
Bitwise XOR
=== 命题逻辑的应用 Applications of Propositional Logic
+ 翻译句子 Translating Sentences

将英语句子翻译成逻辑表达式，来减少自然语言的不准确(inaccuracy) 和模糊(ambiguous)。

+ 系统描述 System Specification

可以用于精确地描述系统需求、解决一些逻辑谜题等。
*Consistent* System Specifications
Definition: A list of propositions is consistent if it is possible to assign 
truth values to the proposition variables so that each proposition is *true*.
+ 逻辑谜题 Logical Puzzles
===  逻辑等值式 Propositional Equivalences
- + 永真(tautology)：A proposition which is always true. (e.g. p∨¬p)
  + 永假(contradiction)：A proposition which is always false. (e.g. p∧¬p)
  + 可能式(contingency)：A proposition which is neither a tautology nor a contradiction. (e.g. p)
- Logically Equivalent
The propositions p and q are called logically equivalent if p ↔ q is a 
tautology. 
Notation: p ⇔ q or p ≡ q
Compound propositions that have the same values in all possible cases are called logically equivalent.
We can also define as:
- 逻辑定律 Logical Laws
#image("image-7.png") 还有
#image("image-8.png")/*代办*/
#image("image-36.png")

一个复合命题是可满足的(satisfiable)：if there is an assignment of truth values to its variables that makes it true. 称这组赋值为该复合命题的解。
一个复合命题是不可满足的(unsatisfiable)：when it is false for all assignments of truth values to its variables.
=== Other logical operators

+ Peirce arrow ↓: 
p ↓ q ≡ ¬(p ∨ q) NOR
非（NOT）：
¬p=p↓p
或（OR）：
p∨q=¬(p↓q)
与（AND）：
p∧q=¬(¬p∨¬q)=¬(¬p↓¬q)
异或（XOR）：
p⊕q=¬(p↓q)↓¬(p↓q)
+ Sheffer stroke |（↑）: 
p|q ≡ ¬(p ∧ q) NAND
¬p=p↑p
与（AND）：
p∧q=¬(p↑q)
或（OR）：
p∨q=(p↑p)↑(q↑q)
异或（XOR）：

p⊕q=(p↑q)↑(p↑q)
=== The Dual of a Compound Proposition 复合命题的对偶
仅包含逻辑运算符 ∨（析取）、∧（合取）和 ¬（否定）的复合命题的对偶，是通过将每个 ∨ 替换为 ∧，每个 ∧ 替换为 ∨，每个 T（真）替换为 F（假），每个 F（假）替换为 T（真）所得到的命题。
命题 S 的对偶用 S ∗表示。
#image("image-9.png")
*【Theorem】 let s and t are two compound propositions, s ≡ t if and only if s* ≡ t
* .*
=== 全功能集 Functionally Complete Collection of Logical Operators
2.4.1. DNF/CNF
先给出以下基本定义：

+ A 字面量(literal) is a variable or its negation.

+ Conjunctions with literals as conjuncts are called 合取子句(conjunctive clauses) (clauses). 通过 AND 连接起来的一组字面量。

+ 标准式(Propositional Normal Forms) 有以下两种：

- 析取范式(Disjunctive Normal Form, DNF)：A formula is said to be in disjunctive normal form if it is written as a disjunction, in which all the terms are conjunctions of literals. (e.g. (p∧q)∨(p∧¬q).)
- 最外面一层的运算符都是析取 ∨：
- 括号内的运算符都是合取 ∧；
- 括号不能嵌套；
- ¬ 只能出现在变量前。
- 合取范式(Conjunctive Normal Form, CNF)：和 DNF 的定义相反；把 ∧ 和∨ 互换。
Full DNF/CNF
+ A 极小项(minterm) is a conjunctive of literals in which each variable is represented exactly once.
+ A 极大项(maxterm) is a disjunctive of literals in which each variable is represented exactly once.
可以从真值表中得到主析取范式(Full Disjunctive Normal Form)：

每个最小项对应真值表中 f=T 的恰好一行。（和数逻一样）
#image("image-11.png")
#image("image-12.png")

#image("image-10.png")
=  DNF 和 CNF 的关系
DNF：

从真值表的“真”行推导。

适合表示布尔函数的“真”情况。

CNF：

从真值表的“假”行推导。

适合表示布尔函数的“假”情况。
== 完全合取范式（Full Conjunctive Normal Form, FCNF） 和 合取范式（Conjunctive Normal Form, CNF） 的区别主要在于它们对变量的覆盖程度。
合取范式（CNF）:
一个公式处于 CNF，如果它是析取式的合取。
每个析取式（子句）包含一个或多个文字（变量或其否定）。
CNF 并不要求每个子句都包含所有变量。
完全合取范式（FCNF）:
一个公式处于 FCNF，如果它是 CNF，并且每个子句都包含所有变量的肯定或否定形式。
这意味着每个子句都是一个最大项（maxterm），即包含所有变量的析取式。
== 谓词 Predicates

量词的优先级高于所有逻辑运算。The quantifiers ∀ and ∃ have higher precedence than all the logical operators.

所以平时我们再说，对于所有 x，满足 p(x) 和 q(x) 时可能会表示为 ∀xp(x)∧q(x)，但正确的做法应该是 ∀x(p(x)∧q(x))。
#image("image-13.png")
#image("image-14.png")
嵌套量词(nested quantifier)：出现在另一个量词的辖域下的量词。

除非所有量词都是 ∀ 或所有量词都是 ∃，否则量词的顺序是有意义的。
== 全称量词和存在量词的顺序：
∀x∃yR(x,y)：

对于每一个 x，存在一个 y 使得 R(x,y) 成立。这表示对于每个 x，我们都可以找到一个 y 与之相关

∃y∀xR(x,y)：

存在一个 y，对于每一个 x，R(x,y) 成立。这表示存在一个 y，它与所有 x 都相关。
== 两个全称量词的顺序：
∀x∀yR(x,y)：

对于每一个 x 和每一个 y，R(x,y) 成立。这表示 R(x,y) 对所有 x 和 y 都成立。


∀y∀xR(x,y)：

对于每一个 y 和每一个 x，R(x,y) 成立。这与 ∀x∀yR(x,y) 等价，因为全称量词的顺序可以交换。
== 两个存在量词的顺序：
∃x∃yR(x,y)：

存在一个 x 和一个 y 使得 R(x,y) 成立。这表示至少有一对 (x,y) 使得 R(x,y) 成立。

∃y∃xR(x,y)：

存在一个 y 和一个 x 使得 R(x,y) 成立。这与 ∃x∃yR(x,y) 等价，因为存在量词的顺序可以交换。
== 全称量词和存在量词的混合：
∀x∃y∀zR(x,y,z)：

对于每一个 x，存在一个 y，对于每一个 z，R(x,y,z) 成立。这表示对于每个 x，我们可以找到一个 y，使得 R(x,y,z) 对所有 z 都成立。


∃y∀x∀zR(x,y,z)：

存在一个 y，对于每一个 x 和每一个 z，R(x,y,z) 成立。这表示存在一个 y，它与所有 x 和 z 都相关。

= 推理准则 Rules of Inference

= p→q≡¬p∨q
#image("{2B291EAF-E458-46A6-AFF5-4ABCEEBFCC5F}.png")
∀x P(x) ∨ Q(x) 表示 (∀x P(x)) ∨ Q(x)
∀x (P(x) ∨ Q(x))表示不同的意思
= 所有 
这个班里的每个学生都学过 Java
当定义域是“这个班里的所有学生”时，用 ∀xJ(x)。
当定义域是“所有人”时，用 ∀x(S(x)→J(x))。
∀x(S(x)∧J(x)) 是错误的，因为它表示“所有人都是这个班里的学生且学过 Java”，这显然不符合实际情况。
“这个班里的某个学生去过墨西哥。”
= 存在
- 设 M(x) 表示“x 去过墨西哥”，S(x) 表示“x 是这个班里的学生”，U 是所有人。
  ∃x (S(x) ∧ M(x))
- ∃x (x是这个班级的学生)∧¬ (x喜欢数学)
  使用合取（∧）更直接地表达了“存在一个学生，他既是班级的学生，又不喜欢数学”的意思。
  如果使用条件（→），逻辑表达会变成：
  ∃x(Student(x)→¬LikesMath(x))
  这种形式在语义上是不正确的，因为它可以被解释为“存在一个个体 x，如果 x 是学生，那么 x 不喜欢数学”。这种表述在逻辑上是不严格的，因为它没有明确限定 x 必须是学生。
/*假如这个班没有学生，正常应该是F，但是表达1是F，2是T*/

= Some drivers do not obey the speed limit.
Original Proposition:
∃x(Driver(x)∧¬ObeySpeedLimit(x))
Negation:
¬(∃x(Driver(x)∧¬ObeySpeedLimit(x)))≡∀x(Driver(x)→ObeySpeedLimit(x))
In English: All drivers obey the speed limit.
#image("{4F9D92F4-8C5D-4A0F-93A8-E0D5D010D12E}.png")
加括号！
= (4) 
Write English statement using the following predicates and any needed quantifiers.
Suppose the variable x represents students and y represent courses, and :
M(y): y is a math course A(x): x is a part-time student T(x,y): student x is taking course y.
There is a part-time student who is not taking any math course
*∃x∀y(A(x) ⋀ (M（y）→¬T(x,y)))*
（如果数学课那里用⋀，那么不是数学课就F了，正常不影响所以应该是T）

Let p and q be the propositions
 p : I bought a lottery ticket this week.
 q : I won the million dollar jackpot.
 Express each of these propositions as an English sen
tence.
 h ¬p∨(p∧ q)
 I did not buy a lottery ticket this week, or I bought a lottery ticket this week and I won the million dollar jackpot.
 (A∨B)∧(C∨D)=(A∧C)∨(A∧D)∨(B∧C)∨(B∧D)
 ∃!和∃x(P(x)∧∀y(y≠x→¬P(y)))是等价的。





(p∧q)∨(p∧¬q)  Disjunctive Normal Form



formal form 形式化表述（一堆符号）


Write
all
the
assignments
that
make this
formula
false.

(0,0,0),(0,0,1),(0,1,0),(0,1,1),(1,1,0),(1,0,1)
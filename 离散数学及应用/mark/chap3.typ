= Chap3
 When f(x) is Θ(g(x)) it must also be the case that g(x) is Θ()
 Note that if and only if it is the case that  and 
Big-Theta Notation
Theorem: Let where are real numbers with an ≠0. 
 Then f(x) is of order xn (or Θ(xn)).
Big-Theta Estimates for Polynomials
在数学和计算机科学中，特别是在大O符号（Big-O notation）的上下文中，**“order”** 通常指的是函数的增长阶数或数量级。它用来描述函数在输入值（通常是 \( n \)）变得非常大时，其增长速度的快慢。

具体来说，当我们说一个函数的“order”时，我们关注的是函数中最高次项的增长趋势。例如：

- \( f(n) = n^2 + 3n + 5 \) 的“order”是 \( n^2 \)，因为当 \( n \) 很大时，\( n^2 \) 这一项的增长速度远远超过其他项。
- \( g(n) = 2^n + n^3 \) 的“order”是 \( 2^n \)，因为指数函数的增长速度比多项式函数更快。

在大O符号中，我们用“order”来表示函数的上界。例如，\( f(n) = O(n^2) \) 表示函数 \( f(n) \) 的增长速度不会超过 \( n^2 \) 的增长速度。

总结来说，在这个上下文中，“order”就是指函数的增长阶数或数量级，用来描述函数在输入值增大时的主要增长趋势。

+ The proposition “'if he is absent, then he is present" is equivalent to “he is present” (√) 
+ p→(q→ p) and ¬p→(p→ q) are equivalent.(√)
+ If ∀x(P(x) V Q(x)) are true, then ∀xQ(x) V ∀xP(x)) is also true, where the domains of
all quantifiers are the same.(×)
+  There is a countable infinite set A with a bijection :A -> A×A (√)
#image("image-16.png")
= 
3. (10 points) Show that the following argument is valid: Each natural number is either even
number or odd number. A natural number is an even number if and only if it is divided by 2. Not
all natural numbers are divided by 2. Then some natural numbers are odd numbers.
条件：Each natural number is either even
number or odd number. A natural number is an even number if and only if it is divided by 2. Not
all natural numbers are divided by 2.
证明： Then some natural numbers are odd numbers.
= 1.3.3. Difference
A−B={x∣x∈A∧x∉B}The difference of A and B.
= one-to-one 不能两个人指同一个
= P(A)={∅, {1}, {2}, {1,2}}
A = {1, 2}

B = {1, 3}
/*∅ 是个集合，即{ }；*/ 
P(A)∪B={∅, 1, 3, {1}, {2}, {1,2}} 
∅ ∪ P(∅):
计算 P(∅)
空集 ∅ 的子集只有它自己：
P(∅)={∅}
计算 ∅ ∪ P(∅)

∅ 是空集，不包含任何元素。

P(∅) = {∅}
因此：

∅∪P(∅)=∅∪{∅}={∅}
（因为空集与任何集合的并集就是那个集合本身）
判断函数是否单射（Z→Z）
Z是整数 有正负
f(n)=n^2+1
不是单射
（例如 f(1)=f(−1)=2）
#image("image-17.png")
Sort4(a, b, c, d):
    === 第一步：两两比较
    if a > b: swap(a, b)
    if c > d: swap(c, d)
    
    === 第二步：确定全局最小值
    if a > c:
        swap(a, c)
        swap(b, d)  保持原有顺序
    
  === 第三步：比较剩余三个数中的最小值
    if b > c:
        swap(b, c)
    
    === 第四步：比较最后两个数
    if c > d:
        swap(c, d)
    
    return (a, b, c, d)
#image("image-18.png")
#image("image-19.png")
x/7 对

函数是从一个集合（定义域）到另一个集合（值域）的映射，满足以下条件：
每个输入值（定义域中的元素）必须有对应的输出值（值域中的元素）。
每个输入值只能对应一个输出值
∃y∀xP(x,y)为真 ⇒ ∀x∃yP(x,y)为真（对的）
 若 P(A)∈P(B)，则 A∈B
分析：
P(A)∈P(B) 等价于 P(A)⊆B（因为 P(B) 的元素是 B 的子集）。
但 A∈P(A)，所以 A∈B。
#image("image-20.png")

$sum_(j=1)^n (j^3+j)$ is $O(n^4)$

$n!$ is $O(n^n)$

$log(n!)$ is $O(n log(n))$

$n log(n)$ is $O(log(n!))$
#image("image-37.png")

1.#image("image-181.png")

#image("image-182.png")

#image("image-183.png")

#image("image-187.png")
#image("image-188.png")

#image("image-189.png")

可数个有限集（每个集大小不超过 2）的并集仍然是可数的。


= Division
== Definition：
If a and b are integers with 𝒂 ≠ 𝟎, then 𝒂 divides 𝒃 if there 
exists an integer 𝒄 such that 𝒃 = 𝒂𝒄.
- When a divides b we say that a is a factor or divisor of b and that b is a multiple of a.
- The notation 𝑎 | 𝑏 denotes that a divides b.
- If 𝑎 | 𝑏, then 𝑏/𝑎 is an integer.
- If a does not divide b, we write 𝑎 ∤ b.
注：对于正整数n,d, 存在$ floor(n/d)$个不超过n的正整数满足被d整除

*Theorem 1:*  Let a, b, and c be integers, where 𝒂 ≠ 𝟎. 
+ If 𝑎 | 𝑏 and 𝑎 | 𝑐, then 𝑎 | (𝑏 + 𝑐);𝑎 | (𝑏 - 𝑐)
+ If 𝑎 | 𝑏 , then 𝑎 | 𝑏𝑐 for all integers c;
+ If 𝑎 | 𝑏 and 𝑏 | 𝑐, then 𝑎 | 𝑐.

*Corollary:* If a, b, and c be integers, where 𝒂 ≠ 𝟎, such that 𝒂 | 𝒃 and 𝒂 | 𝒄, 
then 𝒂 | 𝒎𝒃 + 𝒏𝒄 whenever m and n are integers. 
= Division Algorithm: 
If a is an integer and d a positive integer, then there are unique 
integers q and r, with 𝟎 ≤ 𝒓 < 𝒅, such that 𝒂 = 𝒅q + 𝒓
- d divisor
- q quotient
- a dividend
- r remainder
- 𝑞 = 𝑎 𝑑iv 𝑑
- 𝑟 = 𝑎 mo𝑑 𝑑
- a div d = $floor(a/d)$
- a mod b = a - d$floor(a/d)$
*当被除数为负数时，记住一条原则：余数不能是负数*
-17 mod 5 = 3
= Congruence Relation(同余)
Definition: If a and b are integers and m is a positive integer, then a is congruent 
to b modulo m if m divides a − b. 即$a equiv b (mod m)$ which is a congruence and  m is its modulus.
否则 $a equiv.not b (mod m)$

*Theorem 3:* Let a and b be integers, and let m be a positive integer. Then 
$a equiv b(mod m)$ if and only if $a mod m$ = $b mod m$ 
*Theorem 4:* Let m be a positive integer. The integers a and b are 
congruent modulo m if and only if there is an integer k such that 
𝒂 = 𝒃 + 𝒌𝒎.

所有与 a 模 m 同余的整数构成了 a 模 m 的同余类 (congruence class)
*同余类是一种等价类*

*Theorem 5:* Let m be a positive integer. If $a equiv b (mod m)$ and $ a equiv d(mod m)$, 
then $a+c equiv b+d(mod m)$ and $a c equiv b d(mod m)$.

*so：*
$a equiv b (mod m)$  $arrow.r.double$ $a dot c equiv b dot c (mod m)$

$arrow.r.double$ $a + c equiv b + c (mod m)$

proof：#image("image-21.png")


r = a mod m

r 与 a 同余
*推论：*  (a+b) mod m = ((a mod m) + (b mod m)) mod m 
(ab) mod m = ((a mod m)(b mod m)) mod m 

如果$a equiv b (mod n)$ 且 d 是 a b n 的公约数 即（$d divides a,d divides b,d divides n$）则可以两边同时除以d：
$ a/d equiv b/d (mod n/d) $
#image("image-22.png")
在模 m 的算术中，一个整数 a 的乘法逆元是指一个整数 b，使得 a⋅b≡1(modm)。然而，并非所有整数在模 m 下都有乘法逆元。只有当 a 和 m 互质（即 gcd(a,m)=1）时，乘法逆元才存在。
在例子中，2 模 6 没有乘法逆元，因为 $gcd(2,6) eq.not 1  $。

= primes(素数)
Theorem 1: Every positive integer greater than 1 can be written uniquely as 
a prime or as the product of two or more primes where the prime factors are written in order of nondecreasing size. 
即 100 = $2^5 dot 5^2$

composite(合数)

1 既不是质数，也不是合数

== Trial Division（试除法）
Theorem 2: If n is a composite integer, then n has a prime divisor less than or equal to $sqrt(n)$. 
#image("image-23.png")
#image("image-24.png")
== The Sieve of Eratosthenes
埃拉托斯提尼筛 (the sieve of Eratosthenes)：用来找到不超过指定正整数的所有质数
方法：找出所有不超过 $sqrt(n)$的质数，然后从小到大依次将它们的倍数 ( 不超过 n) 删去，剩下的数就是不超过 n 的质数。

*定理 3：*有无穷多个质数
#image("image-25.png")
== 梅森质数 (Mersenne primes)：形如 
$2^p$−1 的质数，其中 p 为质数。

一般认为最大的质数 ( 虽然无法找到 ) 就是一种梅森质数
如果 p 不为质数，则 $2^p$−1也不是质数
#image("image-26.png")
#image("image-27.png")
不超过 x 的素数数量可以用  
$x/ln(x)$来近似
不存在一个具有整数系数的多项式，使得 f(n) 对于所有正整数 n 都是素数
== 关于质数的猜想
#image("image-28.png")

= 最大公约数 (greatest common divisor)，记作 gcd(a,b)
 The integers a and b are relatively prime（互质） if their greatest common divisor is 1. 
  The integers $a_1$,…, $𝒂_𝒏$ are pairwise relatively prime if 𝒈𝒄𝒅($𝒂_𝒊$, $𝒂_𝒋$) = 1 whenever 𝟏 ≤ 𝒊 < 𝒋 ≤ 𝒏.

  要证明一个整数 a  模  m  有乘法逆元当且仅当  gcd(a, m) = 1 ，我们可以分两部分来证明：

== 必要性：如果  a  模 m  有乘法逆元，那么 gcd(a, m) = 1 

1. *假设*：假设 a  模  m  有乘法逆元，即存在一个整数  b  使得  $a dot b equiv 1 (mod m) $。
2. *定义*：根据同余的定义，$a  b = k m + 1 $ 对于某个整数 k 。
3. *重写*：重写为  ab - km = 1 。
4. *结论*：根据贝祖定理，如果存在整数  x  和  y  使得  ax + my = 1 ，那么 gcd(a, m) = 1 。在这里， x = b  和  y = -k ，因此 gcd(a, m) = 1 。

== 充分性：如果 gcd(a, m) = 1 ，那么  a  模  m 有乘法逆元

1. *假设*：假设 gcd(a, m) = 1 。
2. *贝祖定理*：根据贝祖定理，存在整数  x和  y  使得  ax + my = 1 。
3. *重写*：重写为  ax = 1 - my 。
4. *同余*：根据同余的定义， $a x equiv 1 (mod m )$。
5. *结论*：因此， x  是  a  模  m  的乘法逆元。

== 总结
通过以上两部分的证明，我们得出结论：一个整数  a 模  m 有乘法逆元当且仅当 gcd(a, m) = 1 。
如果 a,m 互质，且 m>1，那么 a 模 m 的逆存在，且该逆对模 m 是唯一的
即 a 模 m 的逆 (inverse)：`b`,b mod m值唯一（随便得到一个b就得到同余式了）


= 中国余数定理 
#image("image-29.png")
#image("image-30.png")
有时候不互质不能这样算了，要回代
#image("image-31.png")
= 费马小定理
#image("image-32.png")
#image("image-33.png")




test

1.$a divides b$ a不得0 b得0 

2.lcm() 最小公倍数


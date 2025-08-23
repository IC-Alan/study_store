= The Division Rule
如果一个任务可以通过某种步骤完成，且该步骤有 n 种 不同的执行方式，但在这 n 种方式 中，每 d 种方式实际上对应同一种真正的完成方法，那么该任务的实际不同的完成方法数是 $n/d$。

问题：一个 4 人小组要选出 2 名代表，有多少种不同的选法？（不考虑顺序）

n = 12（排列方式总数）

d = 2（每组代表被计算了 2 次，如 AB 和 BA 算同一组）

实际选法 = n/d = 12/2 = 6 种

将四个人围坐在圆桌旁，有多少种不同的座位安排方式？其中，如果每个人的左右邻居相同，则认为两种座位安排是相同的。

解答：将圆桌的座位按顺时针方向编号为 1 到 4。选择坐在座位 1 的人有 4 种可能，座位 2 有 3 种可能，座位 3 有 2 种可能，座位 4 只有 1 种可能。因此，四个人的排列方式共有 4!=24 种。
但由于旋转桌子不会改变每个人的左右邻居关系（即座位 1 的不同选择实际上对应相同的座位安排），因此每 4 种线性排列对应同一种环形排列。

根据除法规则，不同的座位安排方式共有 24/4=6 种。

= Tree Diagrams: 
We can solve many counting problems through the use of tree diagrams, where a branch represents a possible choice and the leaves represent possible outcomes. (就枚举)

= The Pigeonhole Principle
If k is a positive integer and k+1 or more objects are placed into k boxes, then there is at least one box containing two or 
more of the objects. 

鸽巢原理又被称为狄利克雷抽屉原理 (Dirchlet drawer principle)

Proof: We use a proof by contraposition. Suppose none of the k boxes has more than one object. Then the total number of objects would be at most k. This contradicts the statement that we have k + 1 objects.

== Corollary 1
 A function f from a set with k+1 or more elements to a set with k elements is not one-to-one.

= The Generalized Pigeonhole Principle
If N objects are placed into k boxes, then there is at least one box containing at least$ceil n/k ceil.r$ objects. 
#image("image-40.png")

The minimum number of objects such that at least r of these objects must be in one of k boxes when these objects are distributed among the boxes?

N = k(r − 1) + 1

#image("image-41.png")
= Permutations（排列）/*an ordered arrangement of the elements of a set*/
对集合中 r 个元素的有序安排被称为 r排列 (r-permutation)，记作 P(n,r)
#image("image-42.png")

- P(n,0) = 1, since there is only one way to order zero elements.
- P(n, n)=n! 
/*Proof: Using the product rule.
 n choices for the first element, (n – 1) for the second one, (n – 2) for the third one…*/


= Combinations（）组合
An r-combination is simply a subset of a set with r elements.

记作C(n，r) = $binom(n,r)$ = $n!/(r!(n-r)!)$ = $P(n,r)/P(r,r)$

=== 【 Corollary 1 】 Combination Corollary 
 Let n and r be nonnegative integers with r ≤ n. Then C（n，r）= C（n，n-r）


= Combinatorial Proof 
通过两种不同的方式计数同一组合问题，证明等式两边相等。
+ 双计数证明（Double Counting Proofs）
通过两种不同的方式对同一组组合对象进行计数，证明恒等式两边描述的是同一事物的不同计数方式，从而自然相等。
$sum_(k=0)^n binom(n,k)^2$ = $binom(2n,n)$

左边 #image("image-44.png")

右边直接计算从 2n 个元素中选 n 个的方式数

+ 双射证明（Bijective Proofs）
通过构造一个一一对应（双射）的函数，证明恒等式两边所描述的集合之间存在完美的一一匹配关系，从而说明两者基数相同。
#image("Quicker_20240419_114257.png")

= The Binomial Theorem 
#image("image-45.png")

$sum_(k=0)^n binom(n,k) = 2^n$

$2^n = (1+1)^n = sum_(k=0)^n binom(n,k)1^k 1^(n-k) = sum_(k=0)^n binom(n,k) $
#image("image-46.png")


$sum_(k=0)^n (-1)^k binom(n,k) = 0$

$sum_(k=0)^n 2^k binom(n,k) =3^n$


== 【 Theorem 2 】 PASCAL’S Identity 
 Let n and k be positive integers with k ≤ n. Then 
 $binom(n+1,k) = binom(n,k-1) + binom(n,k)$
 #image("image-47.png")




== 帕斯卡三角形 (Pascal's triangle)，又称杨辉三角
 #image("image-48.png")

== 【 Theorem 3 】 Vandermonde’s Identity 
Let m, n and r be nonnegative integer with r not exceeding either m or n. Then 
$binom(m+n,r) = sum_(k=0)^r binom(m,r-k) binom(n,k)$

#image("image-49.png")

#image("image-63.png")





#image("image-62.png")





#image("image-61.png")
{1,2}{3,4}{5,6}⋅⋅⋅{2n−1,2n}，n 个 set，但需要 n+1 个正数，必存在两个数是相邻的，相邻的数互质

#image("image-38.png")
ANSWER:
P(24,20) 0
#image("image-39.png")
$4^10$ C(13,10) C(9,3)

#image("image-50.png")

$C(N+1,7)$
关于“下一个更大排列”或“下一个更大组合”的问题，通常都是按照字典序（lexicographic order）来确定的

字典序（Lexicographic order）
通过逐位（或逐元素）比较大小来确定整体的顺序

“交朋友原理”（Friendship Theorem）

假设有一个社交网络，其中包含 n 个人（n≥2），每个人都有朋友。那么在这个网络中，一定存在两个人，他们有相同数量的朋友。
#image("image-172.png")
#image("image-173.png")
n个数 但是0 1 ... 19 不成立
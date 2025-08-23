= Mathematical Induction (数学归纳法)
Mathematical induction is used to prove propositions of the form 
∀nP(n), where the universe of discourse is the set of positive integers.
#image("image-34.png")
The procedure for mathematical induction:
(1) Inductive base： Establish P(1)
(2) Inductive step： Prove that P(k) → P(k+1) for k≥ 1
Conclusion : The inductive base and the inductive 
 step together imply P(n) ∀ n ≥ 1.
不从1开始也行

= well-ordering property
A set S is well ordered if every subset has a least element.
For example, 
1) N is well ordered (under the ≤ relation)
2) Z is not well ordered under the ≤ relation (Z has no smallest element).

*The well-ordering property*
 Every nonempty subset of the set of positive integers has a least element. 
= Why Is Mathematical Induction Valid?
The validity of mathematical induction follows from the well-ordering 
property.

Proof:
Assume that there is at least one positive integer for which P(n) is false.

S: the set of positive integer for which P(n) is false.Then S is nonempty.

By the well-ordering property, S has a least element, which will be denoted by m.

Then m≠1, m -1 is a positive integer. m-1 is not in S. So P(m -1) is true.

Since the implication P(k)→ P(k +1) is also true, P(m) must be true. 
= Strong Induction 
The Second Principle of Mathematical Induction 
(Strong Induction, complete induction)
 (P(n0)∧∀k ( k>=n0∧P(n0)∧P(n0+1)∧…∧P(k) → P(k+1)))→ ∀n P(n)

The procedure :
(1) Inductive base: Establish $P(n_0)$
(3) Inductive step: Prove $P(n_0)∧P(n_0+1)∧ . . . ∧P(k)$ → P(k+1) 
Conclusion: The inductive base and the inductive step allow one to conclude that P(n) $∀n≥n_0$

*The validity of both mathematical induction and strong induction follow from the well-ordering property.*

*In fact, mathematical induction, strong induction, and well-ordering are all equivalent principles.*

== 计算几何 (computational geometry)：离散数学的分支，研究关于几何图形的计算问题
定义：

- 多边形 (polygon)：由一系列线段 
$s_1,s_2,…,s_n$ ( 它们被称为边 (sides)) 构成的封闭几何图形
  
  如果没有两条非连续的边相交，那么被称为简单 (simple)多边形

- 顶点 (vertex)：多边形中每对连续的边上的公共端点
- Every simple polygon divides the plane into two regions: its interior, its exterior.
- 凸 (convex)多边形：任意两个顶点间的线段位于多边形的内部或边界上。否则被称为凹 (nonconvex)多边形
- 对角线 (diagonal)：在简单多边形中，连接两个非连续顶点的线段
- 内部对角线 (internal diagonal)：如果除了端点外完全在内部的对角线
- triangulation：三角剖分，指将多边形划分为若干个不重叠的三角形的过程。

【LEMMA 1】Every simple polygon with at least four sides has an  interior diagonal.

【Theorem 1】A simple polygon with n sides, where n is an integer with n≥3, can be triangulated into n-2 triangles.
#image("image-35.png")


= Recursive definition
/*比如 Fibonacci sequence 要不不好定义*/
In a recursive definition, an object is defined in terms of itself.
We can recursively define sequences, functions and sets.

== Recursively defined functions,
with the set of nonnegative integers as its domain
Recursively defined functions are *well-defined*（不会引起歧义的）

Let P(n) be the statement “f is well-defined at n .
(1) P(0) is true.
(2) Assume that P(n-1) is true. Then f is well-defined at n.
 Since f(n) is given in terms of some f(n-1)
 根据归纳假设，我们知道 f(n−1) 是良定义的，即 f(n−1) 有一个唯一且确定的值。由于 f(n) 是根据 f(n−1) 来定义的（即 f(n) 依赖于 f(n−1) 的值），因此如果 f(n−1) 是良定义的，那么 f(n) 也必须是良定义的。


LAME’S Theorem Let a , b be positive integers with a≥b. Then the number of 
divisions used by the Euclidean algorithm to find gcd (a, b) is less than or equal to five times the number of decimal digits in b.
所以 欧几里得算法 gcd(a,b) 中的除法次数为 O(logb)

== Recursively defined sets

- Basis Step: Specify an initial collection of elements.
- Recursive Step: Give the rules for constructing elements of the set from other elements already in the set.

Sometimes the recursive definition has an *exclusion rule*,We will always assume that the exclusion rule holds, even if it is not explicitly mentioned. 

*Example：*
Subset of Integers S:
Basis Step: 3 ∈ S
Recursive Step: if x ∈S and y ∈S , then x+y ∈S 

=== The set of rooted trees, extended binary trees and full binary trees can be defined recursively.

==== rooted trees
- BASIS STEP: A single vertex r is a rooted tree.
- RECURSIVE STEP: Suppose that T1, T2, …,Tn are disjoint rooted trees with roots r1, r2,…,rn, respectively. Then the graph formed by starting with a root r, which is not in any of the rooted trees T1, T2, …,Tn, and adding an edge from r to each of the vertices r1, r2,…,rn, is also a rooted tree.
==== binary trees
二叉树的递归定义：

- 空树是一棵二叉树。

- 若 $T_1$和 $T_2$是二叉树，则一个节点附带 $T_1$,$T_2$作为左右子树也是一棵二叉树。
====  Full binary trees
- BASIS STEP: There is a full binary tree consisting of only a single vertex r.
- RECURSIVE STEP: If T1 and T2 are disjoint full binary trees, there is a full binary tree, denoted by T1∙T2, consisting of a root r together with edges connecting the root to each of the roots of the left subtree T1 and the right subtree T2.
*这种二叉树除了叶子节点外，其余节点要么有 2 个孩子，要么没有孩子*
= Structural Induction⚓︎
结构归纳法 (structural induction)：用于证明递归定义的合法性

BASIS STEP：证明结果适用于所有在递归定义的基本步骤中说明的元素
RECURSIVE STEP：证明如果对于每个用于在定义的递归步骤中构建新元素的元素，语句均正确，那么结果也适用于这些新构建的元素

= Generalized Induction
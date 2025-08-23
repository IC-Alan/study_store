= Relation
  A binary relation R from a set A to a set B is a subset of A×B.

A binary relation R is a set. 

$R subset.eq A  dot B$



$R = {(a,b)| a in A,b in B,a R b}$

A function f from a set A to a set B is a relation form A to B. 

Relations are a generalization of graphs of function. 

#box(width: 100%, height: 0.5pt, fill: green)

= n-ary Relations
 Let $A_1 , A_2 ,..,A_n$   be sets. An n-ary Relation on these sets is a subset of $A_1 times A_2 times ...A_n$

#box(width: 100%, height: 0.5pt, fill: green)

= Relations On A Set
A relation on the set A is a relation form A to A.

$R subset.eq A times A$
#image("image-64.png")
= Representing Relations 
- list its all ordered pairs
- using a set build notation/specification by predicates 
- 2D table/Tabular Form（表格形式
- Connection matrix /zero-one matrix
- Directed graph/Digraph 

#box(width: 100%, height: 0.5pt, fill: green)
= Tabular Form
#image("image-167.png",height:4cm )

也是A是行 B是列

= Connection Matrices
Let R be a relation from $A = {a_1,a_2,...,a_m} , $to $A = {b_1,b_2,...,b_n}$ 
$m times n$ connection matrix $M_R = [m_(i j)]$for R is defined by 

$m_(i j) = cases(
  1 "if" (a_i,b_j) in R,
  0 "if" (a_i,b_j) in.not R,

)$

行（rows）对应集合 A 的元素，列（columns）对应集合 
B 的元素。
#image("image-65.png")

#box(width: 100%, height: 0.5pt, fill: green)

= Directed graph/Digraph 有向图
由包含顶点 (vertice/nodes)的集合 V，以及包含 V 中元素的有序对 ( 被称为边 (edge/arc)) 的集合 E 构成。对于边 (a,b)，顶点 a 被称为这条边起点 (initial vertex)，顶点 b 被称为这条边的终点 (terminal vertex)

边 (a,a) 被称为环 (loop)

#image("image-66.png")

#box(width: 100%, height: 0.5pt, fill: green)

= Properties of Binary Relations
== Reflexive 自反性
A relation R on a set A is reflexive If

$(x,x) in R$ for every element $x in A$

$forall x (x in A arrow (x,x) in R)$

#box(width: 100%, height: 0.5pt, fill: green)

== Irreflexive 非自反性

$forall x (x in A arrow (x,x) in.not R)$

#box(width: 100%, height: 0.5pt, fill: green)

== Symmetric 对称性

$forall x forall y ((x,y) in R arrow (y,x) in R)$

#box(width: 100%, height: 0.5pt, fill: green)

== Antisymmetric 反对称性

$forall x forall y ((x,y) in R and (y,x) in R arrow x = y)$

$forall x forall y ((x,y) in R and x eq.not y arrow (x,y) in.not R)$

一个关系可能同时具有对称性和反对称性

（1，1） （2，2） （3，3）（4，4） symmetric 且 antisymmetric


#box(width: 100%, height: 0.5pt, fill: green)

== Transitive 传递性 

$forall x forall y forall z ((x,y) in R and (y,z) in R arrow (x,z) in R)$

#box(width: 100%, height: 0.5pt, fill: green)

== Counting relations

How many relations are there on a set with n  elements that are
- reflexive: 
#image("image-67.png")
- Symmetric
#image("image-68.png")
- Antisymmetric

pair< (x,y) (y,x)> : (1,0) (0,1) (0,0)

#image("image-69.png")

#box(width: 100%, height: 0.5pt, fill: green)

= Combining Relations

关系也能像一般的集合那样被结合
-  Set operations

  回忆一些集合的运算 

  并集 ∪、交集 ∩、差集 −、对称差集⊕，补集 

- Composition 
  关系也可以像函数一样被复合 (composite)
  #image("image-70.png")

- Inverse relation 
  $R = {(a,b) divides a in A,b in B ,a R b}$

  逆关系：
    $R^-1 = {(b,a) divides (a,b) in R,a in A,b in B}$
#box(width: 100%, height: 0.5pt, fill: green)


== The properties of relation operations

+ #image("image-74.png")
#image("image-75.png")
#image("image-76.png")
#box(width: 100%, height: 0.5pt, fill: green)
= The Power of a relation R
Let R be a relation on the set A.The powers $R^n$,n = 1,2,3,... are defined inducticely by
$R^1 = R ,$and $R^(n+1) = R^n compose R$

#image("image-71.png")
？？？
#image("image-72.png")
#image("image-73.png")

#box(width: 100%, height: 0.5pt, fill: green)

=  Closures of Relations 关系的闭包
定义： 给定一个集合 A 和在其上的一个关系 R⊆A×A，我们常常关心它是否满足某些性质，比如：

- 自反性（Reflexive）

- 对称性（Symmetric）

- 传递性（Transitive）

如果 R 不满足某个性质，我们可以最小地扩展它使其满足该性质。这就叫做 关系的闭包（closure）。

#box(width: 100%, height: 0.5pt, fill: green)
== 1. Reflexive Closure（自反闭包）  
最小地添加必要的对，使关系自反。

- 定义：若 $forall a in A$ if $(a, a) in.not R$，则添加它。
- 记作：$r(R)$
- 示例：
  $R = {(1, 2), (2, 3)}$
  → 自反闭包为 $R^r = {(1, 2), (2, 3), (1, 1), (2, 2), (3, 3)}$


A 上的对角关系 (diagonal relation) ：$I_A = {(x,x) divides x in A}$

$r(A)$ is $R union I_A$

Suppose that R' is a reflexive relation containing R, then 
$R subset.eq R', I_A subset.eq R' arrow r(R) = R union I_A subset.eq R'$

#image("image-77.png")
#image("image-78.png")
#box(width: 100%, height: 0.5pt, fill: green)

== 2. Symmetric Closure（对称闭包）  
最小地添加必要的对，使关系对称。

- 定义：若 $(a, b) in R$ ，但 $(b, a) in.not R$，则添加 $(b, a)$。
- 记作：$s(R)$ is $R union R^-1$
#image("image-79.png")
- 示例：
  $R = \{(1, 2)\}$
  → 对称闭包为 $R^s = \{(1, 2), (2, 1)\}$
#image("image-80.png")
#image("image-81.png")
#box(width: 100%, height: 0.5pt, fill: green)

== 3. Transitive Closure（传递闭包）  
最小地添加必要的对，使关系传递。

- 定义：如果 $(a, b), (b, c) in R$，但 $(a, c) in.not R$，则添加 $(a, c)$。
- 记作：$t(R)$
- 常用算法：*Floyd-Warshall*（对图求传递闭包）或 *Warshall's algorithm*。
- 示例：
  $R = \{(1, 2), (2, 3)\}$
  → 传递闭包为 $t(R) = \{(1, 2), (2, 3), (1, 3)\}$
#image("image-83.png")

若关系S是传递的，则对于任意正整数n ，都有$S^n subset.eq S$
#image("image-84.png")
#box(width: 100%, height: 0.5pt, fill: green)

== 4. Connectivity Relation 连通关系
 
is the set of 
ordered pairs (a, b) such that there is a path (in R) from a to b:  记作：$R^{*}$

即使两个对象没有直接关系，只要通过若干中间对象“接力”（在R中的）能建立联系，那么它们就是连通的，属于 `R*`
 
$R^* = union.big_(n=1)^infinity R^n$

`R*` 就是包含 𝑅 的最小传递关系。

t(R) = `R*`

$R = t(R) arrow.l.r.double.long$ R is Transitive

对有限集合上的关系 𝑅，构造传递闭包 `R*`时，只需考虑长度不超过集合大小的路径。

If |A | = n, then any path of length > n must contain a cycle.

If we write down a list of more than n vertices representing a path in R, some vertex must appear at least twice in the list (by the Pigeon Hole Principle).


#image("image-85.png")
#image("image-86.png")

#box(width: 100%, height: 0.5pt, fill: green)

= Equivalence Relations
A relation R on a set A is an equivalence relation if R is reflexive symmetric transitive 

a and b are equivalent 记作`(a~b)`

 a and b are related by an equivalence relation R
 即R是一个等价关系 且 $(a,b) in R$

#box(width: 100%, height: 0.5pt, fill: green)
= Equivalence Class 

等价关系将集合划分为等价类（Equivalence Classes），每个类中的元素彼此等价

令R是集合A 上的等价关系 ，所有与集合中的元素 a 相关的元素构成的集合被称为 a 的等价类 (equivalence class) 记作 $[a]_R$

如果只考虑一个关系，则可以简写为[a]

$[a]_R = {s divides (a,s) in R}$

如果 $b in [a]_R$，则称b 为这个等价类的代表 (representative)，因此等价类中的每个元素都可以作为这个等价类的代表。

#image("image-88.png")
#box(width: 100%, height: 0.5pt, fill: green)
= Partition of a Set
#image("image-87.png")
#box(width: 100%, height: 0.5pt, fill: green)
= Equivalence Classes and Partitions

#image("image-89.png")
#image("image-90.png")

#box(width: 100%, height: 0.5pt, fill: green)
= The operations of equivalence relations 

+ If $R_1,R_2$ are equivalence relations on A ,then $R_1 inter R_2$ is equivalence relations on A

+ If $R_1,R_2$ are equivalence relations on A ,then $R_1 union R_2$ is reflexive and symmetric relation on A


If $R_1,R_2$ are equivalence relations on A ,then $(R_1 union R_2)^*$ is equivalence relations on A


#box(width: 100%, height: 0.5pt, fill: green)
= Partial Orderings 
Let R be a relation on S. Then R is a partial ordering or 
partial order（偏序） if R is reflexive *antisymmetric* transitive 

关系并不总是用来判断两个元素是否“相等”，它们有时候是用来表示一种“顺序”或“层级”

Notation：  (S, R) 称为 partially ordered set or a poset（偏序集）
#box(width: 100%, height: 0.5pt, fill: green)
== comparable/ incomparable 

 The elements a and b of a poset$(S, <=)$ are called 
*comparable* if either .$a <= b$ or $b <= a$ 

When a and b 
are elements of S such that neither $a <= b$ nor $b <= a$ , a and b are called incomparable. 

#image("image-93.png")
指的是在你定义的偏序关系下可以比较

能通过你定义的偏序关系判断出“谁在前谁在后”或者“谁包含谁”等关系。

_关系符号 $<=$并不一定是“数值意义上的小于等于”，而是表示集合 𝐴上定义的任意一个偏序关系。_

#image("image-94.png")
#box(width: 100%, height: 0.5pt, fill: green)
== total order/linear order

If $(S, <=)$is a poset and every two 
elements of S are comparable, S is called *a totally 
ordered or linearly ordered set*, ≤ is called *a total order or linear order.* In this case $(S, <=)$
is called 
*a chain. *

全序（total order）或 线性序（linear order）:

集合中任意两个元素都“有顺序关系”

$forall a,b in S , a <= b$ or $b <= a$
#box(width: 100%, height: 0.5pt, fill: green)

== well-ordered set（良序集）

(S, ≼) is a well-ordered set if it is a 
poset suth that ≼ is a total ordering and every nonempty subset of S has a least element. 

全序 = 偏序 + 任意两个元素都可比较

良序集 = 全序 + 每个非空子集都有最小元素。

$(Z, <=)$ 不是良序集 （这个子集就是他自己）

#box(width: 100%, height: 0.5pt, fill: green)

= The principle of well-ordered induction 良序归纳原理

 Suppose that S is a well-ordered set. Then P(x) is true for all x∈S 
 
 if Inductive Step: for every y∈S, if P(x) is true for all x∈S with x < y, then p(y) is true.


#image("image-91.png")

 在使用良序归纳原理的证明中，我们不需要一个基础步骤

 #box(width: 100%, height: 0.5pt, fill: green)

= Lexicographic Order 词典序
有两个偏序集 $(A_1 , <=_1) (A_2 , <=_2)$

要在它们的笛卡尔积（也就是$(A_1 dot A_2)$上定义一个新的偏序关系 $<=$。

对于两个元素 $(x_1,x_2) (y_1,y_2) in A_1 dot A_2$ (显然$x_1,y_1 in A_1, x_2,y_2 in A_2$)

定义 $(x_1,x_2) < (y_1,y_2)$ 当且仅当  $cases(
  x_1  <_1  y_1 "or",
  x_1  =  y_1 "and" x_2  <=_2  y_2
)$

A lexicographic ordering is a partial ordering defined on a Cartesian product of two posets. 
#image("image-92.png")

The definition of lexicographic order extends naturally to multiple Cartesian products of partially ordered sets. 

#box(width: 100%, height: 0.5pt, fill: green)
== lexicographic order of string

the string $a_1,a_1,...a_m$ is less than $b_1,b_2,...,b_n$ if and only if 

$(a_1,a_1,...a_t) < (b_1,b_2,...,b_t)$ or

$(a_1,a_1,...a_t) = (b_1,b_2,...,b_t)$ and $m < n$

where t = min(m,n)

#box(width: 100%, height: 0.5pt, fill: green)

= Hasse Diagrams 
Hasse 图 是一种用于表示偏序关系（Partial Ordering）的方法。它可以用来清楚地展示集合中元素之间的“部分排序”关系。

构建步骤：


1. 构建有向图（Digraph）表示偏序集 $(A, R)$：

  其中 $A$ 是元素集合，$R$ 是偏序关系。
  图中所有的弧（arcs）都向上画（除非是环）。

2. 去除所有环（loops）：（即自反关系）

3. 去除由于传递性而产生的冗余边：

  如果 $a <= b$ 且 $b <= c$，那么 $a <= c$ 是传递的。
  在图中不画 $a arrow c$ 这条边，只保留 $a arrow b$ 和 $b arrow c$。

4. 去除箭头（arrowheads）：
因为所有边都朝上，所以箭头没有必要。

#box(width: 100%, height: 0.5pt, fill: green)

= Chain and Antichain(链与反链)

偏序集 $(A, <=)$中，若某个子集 $B subset.eq A$中任意两个元素都是可比较的，
即对任意 $a,b in B$，总有 $a <= b$或 $b <= a$，那么我们称：

B 是 A 中的一个链（Chain）

The length of chain：|B|, B is a definite set

同样的B 
如果 对任意$a eq.not b in B$ 既不满足 $a <= b$ 也不满足 $b <= a$ 则：

B 是 A 中的一个反链（Antichain）

举例：

$A = {{1},{2},{1,2}}$ 用集合包含关系 $subset.eq$来做偏序关系，

那么子集 $B={{1},{2}}$ 是一个反链，因为这两个集合不包含彼此。

#box(width: 100%, height: 0.5pt, fill: green)

= Maximal and Minimal Elements 
Let $(A, <=)$be a poset. $a in A$, then a is a 
maximal element if there does not exist an element b in 
A such that $a < b$.
Similarly for a minimal element.


Maximal and minimal elements are the “top” and “bottom” elements in the Hasse diagram.


There can be more than one minimal and maximal element in a poset.
#box(width: 100%, height: 0.5pt, fill: green)

= Greatest and Least Element 

Let $(A, <=)$be a poset. Then an element 
a in A is a greatest element of A if$(b <= a)$
for every b in A, and a is a least element of A if $a <= b$for every b in A. 
#image("image-95.png")
若存在最大 / 小元素，则它是唯一的

#image("image-96.png")

#box(width: 100%, height: 0.5pt, fill: green)
= Upper and Lower Bounds 

Let A be a subset of S in the poset $(S, <=)$. 
If there exists an element a in S such that $b <= a$for all b in A, then a is called an upper bound of A. 
 Similarly for lower bounds. 
#box(width: 100%, height: 0.5pt, fill: blue)
== Least Upper and Greatest Lower Bounds 

If a is an upper bound for P which is 
less than every other upper bounds then it is the 
least upper bound, denoted by lub(S). 

 Similarly for the greatest lower bound, glb(S). 

 #box(width: 100%, height: 0.5pt, fill: green)
 = Lattices 
一个偏序集（poset）被称为格（lattice），当且仅当其中的任意两个元素都存在：

最小上界（lub, least upper bound），也叫上确界（join）

最大下界（glb, greatest lower bound），也叫下确界（meet）

#image("image-97.png")
#image("image-98.png")
#box(width: 100%, height: 0.5pt, fill: green)
= Topological Sorting

给定一个偏序集 （A,R）我们希望构造一个全序关系（total ordering） $<=$，使它：
*兼容（compatible）*于原偏序 𝑅，即：
若$a R b ,$则$a <= b$

从一个偏序构造一个兼容的全序，称为拓扑排序（topological sorting）

Every finite nonempty poset (S, ≤ ) 
has a minimal element.

#image("image-99.png")

#image("image-100.png")、

拓扑排序的算法（简单介绍）
有两种常见方法：

✅ 方法一：Kahn 算法（基于入度）
找出入度为 0 的点（没有依赖的任务）

将它加入排序结果

删除这个点的边，更新其他点的入度

重复直到所有点都加入排序结果

✅ 方法二：DFS 深度优先搜索
对每个未访问节点进行 DFS

每当一个节点的所有邻居都访问完后，把它加入结果

最后把结果反转



test

1.#image("image-163.png")

2. 在集合 S={a,b} 上，列出所有自反（reflexive）且对称（symmetric）的关系

自反 要集合里的都有

所以
{(a,a),(b,b)}。

{(a,a),(b,b),(a,b),(b,a)}。

3. 传递闭包求解 #image("image-165.png")或者反复布尔乘法

4.#image("image-166.png")

用归纳法

5.Transitive Closure of Symmetric Relation is Symmetric

6. 0的因数是所有的非零整数

  对于任何整数 $n ≠ 0$，有 $gcd(0,n)=∣n∣$

 lcm(a,b) 仅在 a 和 b 都不为零时有定义。

 7.) List all the ordered pairs in the relation
 R ={(a,b) | a divides b} on the set {1,2,3,4,5,6}

 别忘了（a，a）

8.（2，4） （4，2） 不transitive 没有（2，2）

 （1，2） （2，3）（3，4） 不transitive

 9. a and b have a common grandparent 不传递

 10. Determine whether the relation R on the set of all Web
 pages is reflexive,symmetric,antisymmetric,and/or tran
sitive, where (a,b) ∈ R if and only if

 a) everyone who has visitedWeb page a has also visited
 Web page b.

访问 a 的一组人员是访问 b 的一组人员的适当子集

自反   not symmetric not antisymmetric transitive

 c) there is at least one common link on Web page a and
 Web page b.

 不自反  because for any page a that has no links on it

10. Show that the relation R =∅ on a nonempty set S is sym
metric and transitive, but not reflexive.
#image("image-168.png")

11.  Show that the relation R =∅ on the empty set S =∅ is
 reflexive, symmetric, and transitive.
#image("image-169.png")

空真（vacuous truth）

一个形如“对于所有 x∈X,P(x)”的命题，如果 X 是空集，那么这个命题总是真，因为没有反例。
 

12.
both symmetric and antisymmetric.

the empty set on {a} (vacuously symmetric and antisymmetric)

neither symmetric nor antisymmetric

{(a,b),(b,a),(a,c)} on {a,b,c}


13.#image("image-178.png")

14.Maximal and Minimal Elements

在哈斯图中，它们分别是最顶部( 上面没有顶点 ) 和最底部( 下面没有顶点 ) 的元素

极大元素和极小元素可以有多个
如果对于所有 
b∈S，满足 
b⪯a，则称 
a 为最大元素 (greatest element)
如果对于所有 
b∈S，满足 
a⪯b，则称 
a 为最小元素 (least element)
注：若存在最大 / 小元素，则它是唯一的
#image("image-180.png")

Hasse diagram中 只要存在一条路径（由多条边组成）从一个元素到另一个元素，就表明它们之间存在偏序关系

#image("image-190.png")
#image("image-192.png")
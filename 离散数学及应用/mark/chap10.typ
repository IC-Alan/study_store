= Graph
A graph G=(V,E) consists of V, a nonempty set of vertices (顶点)(or 
nodes节点) and E, a set of edges. 
 
 Each edge has either one or two vertices associated with it, 这些顶点被称为它的端点. An edge is said to connect its endpoints端点.

#image("image-101.png")


- infinite graph: a graph with an infinite vertex set or an infinite 
number of edges 

#image("image-102.png")

- finite graph: a graph with a finite vertex set and a finite 
number of edges 
#box(width: 100%, height: 0.5pt, fill: blue)
== Types of graph:

*undirected graph*:无向图.

*directed graph *: 有向图.

*mixed graph:* 边有向无向都有.
#box(width: 100%, height: 0.5pt, fill: blue)

*undirected graph* can be classified into：

- Simple graph:一个图中，每条边连接两个不同的顶点，并且没有两条边连接相同的顶点对。

- Multigraph： 可能存在多条边连接相同顶点的图。

- Pseudograph: 可能存在环，并且可能有多条边连接相同顶点对的图。
#box(width: 100%, height: 0.5pt, fill: blue)
* A directed graph (or digraph)*：(V, E) consists of a nonempty setof vertices V and a set of *directed edges* (or *arcs*) E.

 Each directed edge is associated with an ordered pair ofvertices. The directed edge associated with the ordered pair(u,v) is said to start at u and end at v.

 Types ：

-  simple directed graph: a directed graph has no loops and has no multiple directed edges.

-  directed multigraph: 可能有（多重）自环 和多重边 

may have multiple
directed edges from a vertex to a second (possibly the same)vertex.

注：如果题目没有明确说明，默认将图当作无向图
#box(width: 100%, height: 0.5pt, fill: green)
*基本术语*
= 无向图 G=(V,E)里
+    if {u, v} is an edge of G. 
    称这两个顶点是相邻的 adjacent (or neighbors) in G, 

+    An edge e connecting u and v is called （相关）*incident with vertices u and v*, or is said to *connect* u and v. 

+ The vertices u and v are called *endpoints* of edge {u, v}.

+ Loop：自环

+ The *neighborhood* of v (N(v)): the set of all neighbors of a vertex v

+  在无向图中，顶点的度数是与它相关的边的数量（算附近的边数就行）

    a loop at a vertex contributes twice to the degree of that vertex

    度的Notation: deg(v)

    - If deg(v) = 0, v is called isolated.

    - If deg(v) = 1, v is called pendant.
    #image("image-103.png")

    deg(d) = 5

#box(width: 100%, height: 0.5pt, fill: green)
= The Handshaking Theorem 
Let G = (V, E) be an undirected graph G with e edges. 
Then

$sum_(v in V) deg(v) = 2 e$

所有顶点的度数之和等于边数的两倍。

= An undirected graph has an even number of vertices of odd degree.

#image("image-104.png")
m是边数

the set of vertices of even degree $sum_(v in V) deg(v)$是偶数

#box(width: 100%, height: 0.5pt, fill: green)
= Directed Graphs G=(V, E)
设 (u,v) 是 G 中的一条边。那么 u 是起始顶点（initial vertex)，与 v 相邻（adjacent to v），而 v 是终止顶点(terminal vertex)，从 u 接收边。(adjacent from u)

(in degree)一个顶点 v 的入度（记作 $deg^-(v)$ 是指向 v 的边的数量。

(out degree)v 的出度（记作 $deg^+(v)$是从 v 出发的边的数量。

顶点 v 的环使 v 的入度和出度均 +1

== Let G = (V, E) be a graph with direct edges. Then

$sum_(v in V) d^+(v) = sum_(v in V) d^-(v)  = abs(E)$
#box(width: 100%, height: 0.5pt, fill: green)
= Some Special Simple Graphs 

== Complete Graphs - $K_n$: the simple graph with
- n vertices

- exactly one edge between every pair of distinct vertices.(点点之间全连)
#image("image-105.png")

== Cycles $C_n$ (n>2)

$C_n$ = (V,E), where $V = {v_1,v_2,…,v_n}, E = {(v_1,v_2),(v_2,v_3),…,(v_(n-1),v_n),(v_n,v_1)},$ $n >= 3$

#image("image-106.png")

== Wheels $W_n$ (n>2) 
#image("image-107.png")

== n-Cubes Qn (n>0)

图的顶点表示 $2^n$个长度为 n 的位串。

顶点数： $2^n$

当且仅当 2 个顶点的位串只相差 1 位时，两个顶点是相邻的。

#image("image-108.png")

#image("image-109.png")

#box(width: 100%, height: 0.5pt, fill: green)
= Bipartite Graphs（二分图）

A simple graph G is bipartite if V can be partitioned into two disjoint不相交 subsets V1 and V2 such that every edge connects a vertex in V1 and a vertex in V2（即V1 V2相邻）.

the pair {V1, V2} is called a bipartition（二分划） of the vertex V of G.


#image("image-110.png")

== complete bipartite graph

完全二分图是一种简单图，

其顶点集被划分为两个分别包含 m 和 n 个顶点的子集 V1 和 V2，

并且 V1 中的每个顶点都与 V2 中的每个顶点相连，

记作 $K_(m,n)$，其中 m = |V1|，n = |V2|。
#image("image-111.png")

== 当且仅当用两种不同颜色涂顶点，可以满足相邻的顶点不同色时，该简单图是二分的
#box(width: 100%, height: 0.5pt, fill: green)
= Regular graph（正则图）

A simply graph is called regular 
if every vertex of this graph has the same degree.
 

A regular graph is called n-regular 
if every vertex in this graph has degree n.

$K_n$  is a (n-1)-regular.

#box(width: 100%, height: 0.5pt, fill: green)

= New Graphs From Old

G= (V, E) , H= (W, F)

- Subgraph（子图）

    H is a subgraph of G if  $W subset.eq V ,F subset.eq E$


- proper subgraph
   
    if $H eq.not G $ H is a proper subgraph of G 

- spanning subgraph生成子图  
   
    H is a *spanning subgraph* of G if $W = V F subset.eq E$

#image("image-112.png")

- 点诱导子图 (subgraph induced)

    Let G=(V,E) be a simple graph. 

    The subgraph induced by a subset W of the vertex set V is the graph (W,F), 

    where the edge set F contains an edge in E 
    
    iff（充要） both endpoints of this edge are in W.

- Removing edges of a graph
   
    $G-e = (V,E-{e})$

- Adding edges to a graph
   
    $G+e = (V,E union {e})$
- Edge contration边的压缩
    
    移除端点为 u, v 的边 e，然后合并 u, v 为新的顶点 w，
    接着将所有原来与 u 和 v 相连的边改成连接到 w 上
 
 
- Removing vertices from a graph
   
    $G-v =(V-v, E’)$, 其中 E' 是除了与 v 相连的所有边

- Graph Union

 The union of two simple graphs G1 = ( V1 , E1 ) and G2 = ( V2 , E2 ) is the simple graph 
 
 with vertex set $V = V_1 union V_2$ and edge set $E = E_1 union E_2$ .
 Notation: $G_1 union G_2$

#box(width: 100%, height: 0.5pt, fill: green)

= Representing Graphs 

- Adjacency lists

    表示出每个顶点的相邻顶点
    #image("image-113.png")

- Adjacency Matrices
    fds都有的！

    - 图的邻接矩阵是基于顶点的选定顺序而建立的。

    - 无向图全symmetric.

    - 无向图里的The adjacency matrix of a multigraph or pseudograph

        The (i, j)th entry of such a matrix equals the number of edges that are associated to ${v_i, v_j}$.
        #image("image-114.png")

        $a_(i i) = 1$

        $v_i$度数 =  第 i 行/列元素之和 + i的自环个数

    - 有向图 $a_(i j)$ = 1  if $(v_i, v_j)$ is an edge of G

        第 i 行元素之和 = $deg^+(v_i)$

        第 i 列元素之和 = $deg^-(v_i)$

#box(width: 100%, height: 0.5pt, fill: green)
= Incidence Matrices 关联矩阵

#image("image-115.png")

无向图的关联矩阵中，对于连接两个顶点的边，每列包含两个1；对于环（自环），每列包含一个1。

#box(width: 100%, height: 0.5pt, fill: green)

= Isomorphism of Graphs （同构）

对于两张简单图 $G_1 = (V_1,E_1) G_2 = (V_2,E_2)$，如果存在一个双射函数 
$f: V_1 arrow V_2  $，满足：
$forall a, b in V_1$ 如果a，b相邻，则 
$f(a),f(b) in V_2$ 且f(a),f(b) 相邻，则称这两张图是同构的 (isomorphic)

这样的函数 f 被称为同构 (isomorphism)。

如果两张简单图不同构，称它们是非同构的 (nonisomorphic)。


*换句话说，当两个简单图是同构的时候，两个图的顶点之间存在一个保持邻接关系的一一对应关系。*


两张简单图的同构是一种等价关系 (equivalent relation)。

== invariants（不变量）

may be used to 
show that they are not isomorphic.

图的同构保持的性质

*Important invariants in isomorphic graphs:*

- 顶点 边的数量
- 对应顶点的度数
- if one is bipartite, the other must be
- if one is complete, the other must be
- if one is a wheel, the other must be
#box(width: 100%, height: 0.5pt, fill: green)

= path
==  in an undirected graph


#image("image-116.png")

When the graph is simple, we denote this path by its vertex sequence 
$x_0, x_1, . . . , x_(n-1), x_n$

Circuit/cycle : if the path begins and ends with the same vertex

pass through the vertices $x_1, . . . , x_(n-1)$ or 

traverse the edges $e_1,. . . , e_n$

Simple path:一条路径中所有顶点均不重复（即没有重复经过同一个顶点，也没有重复使用同一条边）。

simple circuit: 一条起点和终点相同，且不重复经过任何顶点（除起点/终点外）或边的闭合路径。
#box(width: 100%, height: 0.5pt, fill: blue)
== directed graph 
定义没啥区别

there are no multiple edges ：

this path is 
denote by its vertex sequence $x_0, x_1, . . . , x_(n-1), x_n$

Circuit/cycle ：一样的

Simple path/circuit:一样的
#box(width: 100%, height: 0.5pt, fill: green)
= Connectedness in undirected graphs

if there is a path between every 
pair of distinct vertices：   
An undirected graph is *connected*

disconnected: the graph is not connected

Disconnect a graph: remove vertices or edges, or both, to produce a 
disconnected subgraph. 

== There is a simple path between every pair of distinct vertices of a connected undirected graph.

连通分量 (connected component)：图 G 的最大连通子图

一张不连通的图包含两个或多个不相交的连通分量，它们的并集构成了整张图


- 割点 (cut vertices/articulation points)满足：若移除该顶点以及与它关联的边，就会生成 1 个包含更多连通分量的子图
- 割边 (cut edges/bridges)满足：若移除该边，就会生成 1 个包含更多连通分量的子图
#image("image-117.png")

*$K_n$ (n>=3) has no cut vertices. *

不可分割图 (nonseparable graph) 没有割点的连通图, 比有割点的图更连通

#box(width: 100%, height: 0.5pt, fill: green)
点割集 (vertex cut/seperating set)：对于图 G = (V, E) 的顶点集 V 的子集 V'，满足 G - V' 是断开的。

除了完全图外的所有连通图，都有 1 个点割集
= Vertex connectivity 

无向图 G 中，the minimum number of vertices in a vertex cut to 
either disconnect G or produce a graph with a single vertex.

记作κ(G)

- $0 <= κ(G) <= n-1$ if G has n vertices.

- κ(G) = 0 iff G is disconnected or G=K1
- κ(G) = 1 if G is connected with cut vertices or G=K2
- κ(G) = n-1 iff G is complete 

连通度κ（G）越大，我们就认为图G的连通性越强。

A graph is K-connected (or k-vertex-connected ), if $κ(G) >= K$
#box(width: 100%, height: 0.5pt, fill: green)


边割集 (edge cut)：a set of edges E’ is called an edge cut of G if the subgraph 
G - E’ is disconnected. 

= Edge connectivity 
the minimum number of edges in an edge cut of G. 

 记作λ(G)

- $0 <= λ(G) <= n-1$ if G has n vertices.

- λ(G) = 0 if G is disconnected or G is a graph consisting of a single vertice

- λ(G) = n-1 iff $G = K_n$
#box(width: 100%, height: 0.5pt, fill: green)
= When G=(V,E) is a noncomplete connected graph with at least three vertices

$κ(G) <= λ(G) <= min_(v in V)deg(v)$
图中所有顶点的度数中的最小值。
#box(width: 100%, height: 0.5pt, fill: green)
= Connectedness in directed graphs
+ strongly connected

    if there is a path from a to b and from b to a for all vertices a and b
    in the graph. 
 
+ weakly connected
 
    如果底层的无向图是连通的

strongly connected directed graph is also 
weakly connected.

the maximal strongly connected subgraphs are called the strongly connected components or just the strong components.
#box(width: 100%, height: 0.5pt, fill: green)
= Paths and Isomorphism
路径和回路作为图不变量：

Two graphs are isomorphic $arrow$ they have simple circuits of the same length.（必要条件）

Two graphs are isomorphic $arrow$ 它们的顶点度数必须匹配 路径上的顶点度数序列也必须匹配
#image("image-120.png")

我们还可以利用路径来寻找可能的同构映射：

如果两个图同构，那么它们的最长路径（Longest Path）或某些关键路径（如直径）必须对应。

#image("image-121.png")
= Counting paths between vertices
在 G 中，从顶点 
$v_i$到 $v_j$的长度为 r 的不同路径的数量等于矩阵 $A^r$的第 (i,j) 个元素（即 $(A^r)_(i j)$)

i 表示行号，j 表示列号

(矩阵乘法)

#image("image-122.png")
#box(width: 100%, height: 0.5pt, fill: green)
+ 欧拉环 (Euler circuit)：在一个 连通图 中，经过 每一条边恰好一次，并且最终 回到起点 的闭合路径。（允许重复顶点，但不允许重复边）

    （图 G 中包含所有边的简单环）
+ 欧拉路 (Euler path)：图 G 中包含所有边的简单路径
+ 欧拉图 (Euler graph)：具有欧拉环的图

#image("image-123.png")

= A connected multigraph has an Euler circuit if and only if each of its vertices has even degree.
#image("image-124.png")

= A connected multigraph has an Euler path but not an Euler circuit if and only if it has exactly two vertices of odd degree.

+ 假设多重图中存在一条从a到b的欧拉路径：

    欧拉路径的第一边为顶点a的度数贡献了1。

    欧拉路径的最后一边为顶点b的度数贡献了1。

    每当路径经过一个顶点时，它为该顶点的度数贡献了2。


+ 假设一个图中恰好有两个奇数度数的顶点，设为a和b。
    
    添加一条边{a, b}，那么每个顶点都有偶数度数，因此存在一个欧拉回路。
    
    移除这条新边会产生一条欧拉路径


#image("image-125.png")
#box(width: 100%, height: 0.5pt, fill: green)
= Euler circuits and paths in directed graphs 
一个无孤立顶点的有向多重图有欧拉回路，当且仅当：

该图是弱连通的

每个顶点的入度和出度相等。

一个无孤立顶点的有向多重图有欧拉路径但没有欧拉回路，当且仅当：

该图是弱连通的

除了两个顶点外，其余顶点的入度和出度相等。其中一个顶点的入度比出度大1，另一个顶点的出度比入度大1。
#box(width: 100%, height: 0.5pt, fill: green)
= Hamilton’s paths and Circuits
哈密顿路 (Hamilton path)：a path which visits every vertex in G exactly once

哈密顿环 (Hamilton circuit/cycle)： a cycle which visits every vertex exactly once, except for the first vertex, which is also visited at the end of the cycle.


Hamilton graph: a connected graph G has a Hamilton circuit


（无向图有向图定义都一样）

哈密顿环存在性的充分条件:

= DIRAC'THEOREM
If G is a simple graph with n vertices with $n >= 3$ such that the degree of every vertex in G is at least $n/2$,then G has a Hamilton circuit.

= ORE'THEOREM

如果 G 是一个具有 n$(n >= 3)$ 个顶点的简单图，且对于每一对不相邻的顶点对 u, v 满足 $deg(u) + deg(v) >= n$，那么 G 就有一个哈密顿环。

某些性质可以用来证明没有哈密顿回路

一个包含度数为一的顶点的图不可能有哈密顿回路。

如果图中的一个顶点的度数为二，那么与这个顶点相连的两条边必须是任何哈密顿回路的一部分。

如果哈密顿环经过一个顶点，除了构成哈密顿环的 2 条边外，与该顶点关联的其他边均可不作考虑

$K_n$ has a Hamilton circuit whenever n>=3 

哈密顿环存在性的必要条件

对于集合 V 的任意非空子集 S，G - S( 去掉部分顶点 ) 的连通分量的个数 <= |S|

不满足则一定无哈密顿回路

*Proof：*
#image("image-126.png")
#box(width: 100%, height: 0.5pt, fill: green)
= Shortest Path Problems 
Weighted graph: G = (V,E,W)

the length of a path in a weighted graph

    The sum of the weights of the edges of this path
#box(width: 100%, height: 0.5pt, fill: blue)
== Dijkstra 算法


Dijkstra 算法时间复杂度 $O(n^2)$

最多进行 n-1 次迭代

Dijkstra 算法每次迭代会 确认一个顶点的最短路径（加入集合 S)

每次迭代的操作：

(1) 选择最小标签顶点（不在 S 中）：

    需要遍历所有未确认的顶点（最多 n-1 个），比较它们的标签值，找到最小值。

    最多需要 n-1 次比较。

(2) 更新邻居顶点的标签：

    每个顶点最多有 n-1 个邻居（完全图时）。

    每次更新需要 1 次加法（计算新路径长度） + 1 次比较（决定是否更新），共 2 次操作。

    因此，最多 2(n-1) 次操作 来更新标签。

总比较次数和更新操作都是 $O(n^2)$
#box(width: 100%, height: 0.5pt, fill: blue)
== The Traveling Salesperson Problem (TSP) 

枚举

对于一个n个顶点的完全图 

不同的哈密顿回路的数量为

$(n-1)!/2$

近似算法 是一种用于解决 NP难问题（如旅行商问题TSP、背包问题、调度问题等）的算法策略。由于这类问题在计算上难以在合理时间内找到精确最优解，近似算法的目标是：
在多项式时间内，找到一个接近最优解的可行解，并保证该解与最优解之间的差距在可控范围内。

#box(width: 100%, height: 0.5pt, fill: green)
= Planar Graph 
A graph is called planar if it can be drawn in the plane 
without any edges crossing .

 Such a drawing is called a planar representation of the graph.
 #image("image-127.png")

Complete bipartite graphs $K_(2,n)$(n ≥ 1) are planar.

Complete bipartite graphs $K_(1,n)$ are planar.

$K_(3,3)$ is not planar

#box(width: 100%, height: 0.5pt, fill: green)

+ 区域（Region）:平面图中由边将平面划分出的一个部分，与其他部分完全隔开。

    有界区域（Bounded region）：面积有限的区域（如多边形内部）。

    无界区域（Unbounded region）：面积无限的区域（如图形外部的无限延伸部分）。
    注：任何平面图有且仅有一个无界区域。

    区域的边界（Boundary of a region）:

    围绕该区域的边组成的闭合环。

+ 区域的度（Degree of Region R, Deg(R)）

    针对连通平面简单图：包围区域 R 的边数（若边属于两个区域的公共边界，则计为两次）。

+ 相邻区域（Adjacent regions）
    共享至少一条公共边界的两个区域。

+ 若边 e 不是割边（即删除后不破坏图的连通性），则它必定是两个区域的公共边界。

#image("image-128.png")
*注意一下$R_0$*


+ The sum of the degrees of the regions is exactly twice the number of edges in the planar graph. 

$2 e = sum_(a l l   r e g i o n  R)deg(R)$

#box(width: 100%, height: 0.5pt, fill: green)

= Euler’s formula
Let G be a connected planar simple graph with e edges and v vertices.
Let r be the number of regions in a planar representation of G. Then $r=e-v+2$.
#image("image-130.png")
#image("image-129.png")

Suppose that a planar graph G has k connected components, e edges, and v  vertices. Let r be the number of regions in a planar representation of G. 

 Then $r=e-v+k+1.$ 

 #box(width: 100%, height: 0.5pt, fill: green)

 = If G is a connected planar simple graphwith e edges and v vertices where $v >= 3$, then $e≤3v-6$ 
 #image("image-131.png")

 = If a connected planar simple graph has e edges and v vertices with $v≥3$ and no circuits of length 3,then $e ≤2v-4$.
 #image("image-132.png")

 一般化结论

 对于每个区域至少有 k 条边的连通平面图，边数满足：

 $e <= ((v-2)k )/(k-2)$
 #image("image-133.png")

 $e = 3v -6$

 所有区域的度均为3（即每个面由三角形组成）。

图是极大平面图（再添加任何边都会破坏平面性）。

= If G is a connected planar simple graph, then G has a vertex of degree not exceeding five.
#image("image-134.png")

 #box(width: 100%, height: 0.5pt, fill: green)

 = $K_5,K_(3,3)$ are nonplanar. 


#image("image-135.png")

= If G is a planar simple graph with vertices not exceeding 11, then G must exist vertices of degrees less than five.

= $K_n (n>=7)$ is not planar



 #box(width: 100%, height: 0.5pt, fill: green)

= KURATOWSKI’S THEOREM
基本细分（Elementary subdivision）：

如果一个图是平面图，那么通过移除一条边{u, v}并添加一个新的顶点w以及边{u,w}和{w,v}所得到的任何图也将是平面图。

同胚（Homeomorphic）：

图G1=(V1,E1)和G2=(V2,E2)被称为同胚的，如果它们可以通过对同一个图进行一系列基本细分操作而得到。

== A graph is nonplanar if and only if it contains a subgraph homeomorphic to K3,3 or K5. 


#image("image-136.png")

任意非平面图的子图与 $K_(3,3)$或$K_5$同胚
 #box(width: 100%, height: 0.5pt, fill: green)




所有的地图 (map) 均可用图 (graph) 表示

即：地图的对偶图

- 地图的每个区域用一个顶点表示。

- 如果两个区域所代表的顶点有共同边界，则用边连接这两个顶点。

- 仅在一个点上接触的两个区域不被视为相邻。

地图着色问题

相当于对该地图的对偶图的顶点进行着色，使得该图中没有两个相邻顶点具有相同的颜色。

 #box(width: 100%, height: 0.5pt, fill: green)


术语：

*Coloring: *

the assignment of a color to each vertex 
of the graph so that no two adjacent vertices are assigned the same color.


*chromatic number $chi(G)$:着色数*

 the least number of colors
needed for a coloring of this graph


#image("image-137.png")


== 简单图的着色数
#image("image-138.png")

#image("image-139.png")

#image("image-140.png")
#image("image-141.png")
== 定理——四色定理 (THE FOUR COLOR THEOREM)：平面图的着色数不超过 4

test

1.简单有向图里可以有双向连接（bidirectional edges）

即{1 → 2, 2 → 1} 

There are `____` non-isomorphic simple directed graphs with 3 vertices and 2 edges.

2.  In $K_(2,3)$, find the number of paths of length 3 between every pair of vertices.

12    6×2 

3.  List all positive integers n such that $Q_n$ has an Euler circuit. Why?

n 是偶数

因为 $Q_n$的每个顶点度为 n，而 Euler 回路要求所有顶点度为偶数。

4.超立方体图 $Q_n$在 $n≥2$ 时总存在 Hamilton 回路。

#image("image-164.png",height: 10cm)

#image("image-177.png")

非二分图和奇数环是充要条件

#image("image-191.png")

如果题目没有明确说明，默认将图当作无向图
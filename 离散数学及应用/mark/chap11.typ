= Tree


 A tree is a connected undirected graph with no simple circuits.


 Any tree must be a simple graph. 

== forest

A forest is a graph that has no simple 
circuit, but is not connected. 

Each of the connected  
components in a forest is a tree.
#box(width: 100%, height: 0.5pt, fill: green)

==  An undirected graph is a tree if  and only if there is a unique simple path between  any two of its vertices. 

#image("image-118.png")

#box(width: 100%, height: 0.5pt, fill: green)
= Root tree

有根树 (rooted tree)是一棵树，它指定某一个节点作为整棵树的根，每条边被视为从根出发的“有方向”的边（实际上还是无向边）


An unrooted tree is converted into different rooted trees when different vertices 
are chosen as the root. 

#image("image-119.png")

#box(width: 100%, height: 0.5pt, fill: green)
= 术语
- Parent VS. Child 
- Sibling （兄弟）
- Ancestors VS. Descendants 
- Leaf ： 

  A vertex is called a leaf if it has no children.

- Internal Vertex ：

 A vertex that have children is called an internal vertex. 

- Subtree： The subtree at vertex v 

  （vertex v and its descendants and all edges incident to those descendants.）


#box(width: 100%, height: 0.5pt, fill: green)

= m-ary Rooted Trees
if every internal vertex has 
no more than m children.  


It is a binary tree if m = 2. 

The tree is called a full  m-ary tree if every internal vertex has exactly 
m children. 

#box(width: 100%, height: 0.5pt, fill: green)
= Ordered rooted tree  

所有内部节点的孩子按顺序排列 ( 从左往右 ) 的有根树

In an ordered  binary tree, the two possible children of a vertex are 
called the left child and the right child, if they exist.

The tree rooted at the left child is called the left subtree,

that 
rooted at the right child is called the right subtree. 

#box(width: 100%, height: 0.5pt, fill: blue)

== Properties of Trees
A tree with n vertices has n-1 edges. 

#image("image-142.png")

Every tree is a bipartite
#image("image-143.png")

A full m-ary tree 

- with i internal vertices contains n=mi+1 vertices.

- n vertices has $i=(n-1)/m$ internal vertices and $l=[(m-1)n+1]/m$
  leaves

- l leaves has $n=(m l-1)/(m-1)$ vertices and $i=(l-1)/(m-1)$ internal 
  vertices


proof:
 
 n = mi + 1 
 
 n = i + l

  For a full binary tree, l= i +1, e = v - 1.

#box(width: 100%, height: 0.5pt, fill: blue)

= Level of vertices and height of trees

The level of vertex v in a rooted tree is the length of the unique path from 
the root to v. 


The height of a rooted tree is the maximum of the levels of its vertices. 

#image("image-144.png")


如果有根 m 叉树的高度为 h，且所有叶子的层级为 h 或 h - 1，则这棵树是平衡的 (balanced)

There are at most $m^h$ leaves in an m-ary tree of 
height h. 
#image("image-145.png")

#box(width: 100%, height: 0.5pt, fill: green)

= Binary Search Trees

BST 的形状由键值大小关系和插入顺序共同决定


这里为了和比较次数对上 

n=1时候h=1了 

_即这个h是h+1_
#image("image-152.png")
#image("image-153.png")
_后者n=0可以包括啦_

插入新元素所需的最大比较次数等于满二叉树 U 中从根节点到叶子的最长路径长度。

若二叉搜索树是平衡的，则查找或插入元素所需的比较次数不超过 
$⌈log_2(n+1)⌉$ 次


而正常的h

$2^h-1 <= n <= 2^(h+1)-1$

即$log_2(n+1)-1 <= h <= log_2(n+1)$

$h=floor.l log_2n floor.r$
= Decision Trees
一种有根树，内部节点表示一个决策，子树表示某种决策的结果

= Prefix Codes


前缀码 (prefix code)：一种用位串编码字符的方式，保证一个位串只与其中一个字符序列相关联，而不会产生歧义。


利用树的性质：根节点到任意节点的路径是唯一的，我们可以为每个字符确定一个唯一对应的位串

#image("image-146.png")


Huffman Coding 降权重

The average number of bits used to encode a symbol using this encoding = 
∑ [ 每个节点出现的权重 ( 一般为频率 ) 
× 表示该节点的位串长度 ]

#box(width: 100%, height: 0.5pt, fill: green)
= Tree Traversal
Tree traversals are defined recursively.

如果子树有很多 是这个顺序：

preorder traversal
#image("image-159.png",height: 7cm)

Inorder Traversal 

#image("image-160.png",height: 7cm)

Postorder Traversal

#image("image-161.png",height: 7cm)

#box(width: 100%, height: 0.5pt, fill: green)
= 表达式树（Expression Trees）
用于表示复杂表达式的有序根树


二叉表达式树是一种特殊的二叉树

+ 叶子节点（Leaf node）：每个叶子节点包含一个单一的操作数（operand）。操作数可以是变量、常量或函数调用等。

+ 非叶子节点（Nonleaf node）：每个非叶子节点包含一个单一的操作符（operator）。操作符可以是算术运算符（如 +、-、`*`、/）或逻辑运算符（如 AND、OR、NOT）等。

+ 子表达式（Subexpressions）：操作符节点的左子树和右子树分别表示在应用该操作符之前必须计算的子表达式。这意味着在计算树的根节点的操作符之前，必须先计算其左子树和右子树的表达式。

#image("image-148.png")

- 中缀式 (infix form)：通过对表达式树的中序遍历得到的表达式，实际上就是原表达式

  #image("image-149.png")
  可能有歧义 需要加括号

- 前缀式 (prefix form)：通过对表达式树的前序遍历得到的表达式，又被称为波兰表示法 (Polish notation)

  操作符位于它们的操作数之前。

  由于表示法是明确的，因此不需要括号。

  前缀表达式的计算是从右到左进行的。
#image("image-150.png")

- 后缀式 (postfix form)：通过对表达式树的后序遍历得到的表达式，又被称为逆波兰表示法 (reverse Polish notation)

  由于后缀形式是明确的，因此不需要括号。

  评估一个表达式时，需要从左到右进行操作。

  #image("image-151.png")

#box(width: 100%, height: 0.5pt, fill: green)

= Spanning Trees
 Let G be a simple graph. A spanning tree of G is a subgraph of G that is a tree containing every vertex of G.



 == A simple graph is connected if and only if it has a spanning tree.


#image("image-154.png")
建生成树的算法
 == dfs
 == bfs

 把邻居都访问了 按照堆栈里存的顺序
#box(width: 100%, height: 0.5pt, fill: blue)
回溯法（Backtracking Scheme）

有些问题只能通过穷举搜索所有可能的解决方案来解决。

系统地搜索解决方案的一种方法是使用决策树，其中每个内部顶点代表一个决策，每个叶子代表一个可能的解决方案。
#image("image-155.png")



#box(width: 100%, height: 0.5pt, fill: blue)
= 最小生成树

 Prim’s algorithm

   Kruskal’s algorithm

   （都greedy algorithms）



差不多完结了！

学完才能看鱼韵！\u{1F60E}

test:

1.
a)How many nonisomorphic unrooted trees are there
 with four vertices?

*无根树：没有指定根节点的树，即自由树。*

b)How many nonisomorphic  rooted trees are there
 with four vertices (using isomorphismfor directed
 graphs)?

*有根树：指定一个根节点的树，边被视为从根向外指向。*

answer:

通过仔细列举这些树（即绘制所有非同构的树）来找到答案

一种有效的方法是按照树的最长简单路径长度（对于有根树，则为从根出发的最长简单路径长度）进行分类整理。
#image("image-156.png",height: 6cm)




2. Suppose 1000 people enter a chess tournament. Use a
 rooted tree model of the tournament to determine how
 many games must be played to determine a champion, if
 a player is eliminated after one loss and games are played
 until only one entrant has not lost. (Assume there are no
 ties.)


 #image("image-157.png",height: 4cm,width: 15cm)


 3.A complete m-ary tree is a full m-ary tree in which every leaf
 is at the same level.

 4. Build a binary search tree for the words banana, peach,
 apple, pear, coconut, mango, and papaya using alphabet
ical order.


#image("image-158.png",height: 4cm)
所以插进去的都放尾巴上

5. Represent the
 expression
 ((x +2) ↑ 3)`*`
 (y −(3+x))−5 using a binary tree.

 #image("image-162.png",height: 4cm)


 6. use depth-first search to produce a span
ning tree for the given simple graph. Choose a as the root of
 this spanning tree and assume that the vertices are ordered
 alphabetically

 在每个点选择第一个未使用的顶点（按字母顺序）

 7. $K_(m,n)$生成树数量为：$n^(m-1) dot m^(n-1)$

 8. 完全图 $K_n$有 $n^(n-2)$棵生成树。

9. 树没有回路


树根高度 0
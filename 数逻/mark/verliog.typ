+ 每个语句必须以分号为结束符。空白符（换行、制表、空格）都没有实际的意义

+ 注释`/**/`和  `//`

+ 标识符与关键字

  标识符（identifier）可以是任意一组字母、数字、`$` 符号和 `_ `(下划线)符号的合，但标识符的第一个字符必须是字母或者下划线，不能以数字或者美元符开始。

  另外，标识符是区分大小写的。

  关键字是 Verilog 中预留的用于定义语言结构的特殊标识符。

  Verilog 中关键字全部为小写。
+ 数值
  整数数值表示方法
  数字声明时，合法的基数格式有 4 中，包括：十进制('d 或 'D)，十六进制('h 或 'H)，二进制（'b 或 'B），八进制（'o 或 'O）。数值可指明位宽，也可不指明位宽。

  指明位宽：
  ```
  4'b1011         // 4bit 数值
  32'h3022_c0de   // 32bit 的数值
  ```
  不指明位宽:

  一般直接写数字时，默认为十进制表示，例如下面的 3 种写法是等效的：
  ```
  counter = 'd100 ; //一般会根据编译器自动分频位宽，常见的为32bit
  counter = 100 ;
  counter = 32'h64 ;
  ```
+ 字符串表示方法
  字符串是由双引号包起来的字符队列。字符串不能多行书写，即字符串中不能包含回车符。Verilog 将字符串当做一系列的单字节 ASCII 字符队列。例如，为存储字符串 "www.runoob.com", 需要 14*8bit 的存储单元。例如：
  ```
  reg [0: 14*8-1]       str ;
  initial begin
      str = "www.runoob.com";
  end
  ```
+ Verilog 数据类型
  + wire(组合电路)
    由其连接的器件输出端连续驱动。如果没有驱动元件连接到 wire 型变量，缺省值一般为 "Z"。
  + reg(时序电路)
    用来表示存储单元，它会保持数据原有的值，直到被改写，可以用于组合电路
    例如在 always 块中，寄存器可能被综合成边沿触发器，在组合逻辑中可能被综合成 wire 型变量。寄存器不需要驱动源，也不一定需要时钟信号。在仿真时，寄存器的值可在任意时刻通过赋值操作进行改写。例如：
    ```
    reg rstn ;
    initial begin
        rstn = 1'b0 ;
        #100 ;
        rstn = 1'b1 ;
    end
    ```
+ Verilog 过程结构
  *关键词：initial， always*
  一个模块中可以包含多个 initial 和 always 语句，但 2 种语句不能嵌套使用。

  这些语句在模块间并行执行，与其在模块的前后顺序没有关系。

  但是 initial 语句或 always 语句内部可以理解为是顺序执行的（非阻塞赋值除外）。

  每个 initial 语句或 always 语句都会产生一个独立的控制流，执行时间都是从 0 时刻开始。
  - *initial语句*
    initial 语句从 0 时刻开始执行，只执行一次，多个 initial 块之间是相互独立的。

    如果 initial 块内包含多个语句，需要使用关键字 begin 和 end 组成一个块语句。

    如果 initial 块内只要一条语句，关键字 begin 和 end 可使用也可不使用。

    initial 理论上来讲是不可综合的，多用于初始化、信号检测等。
  - *always 语句*
    always 语句是重复执行的。always 语句块从 0 时刻开始执行其中的行为语句；当执行完最后一条语句后，便再次执行语句块中的第一条语句，如此循环反复。
    由于循环执行的特点，always 语句多用于仿真时钟的产生，信号行为的检测等

+ Verilog 过程赋值
  *Verilog 过程赋值包括 2 种语句：阻塞赋值与非阻塞赋值。*
  - 阻塞赋值 顺序执行 `=`
  - 非阻塞赋值 并行执行语句，即下一条语句的执行和当前语句的执行是同时进行的 `<=`

+ 边沿触发事件控制
  - 一般事件控制

    事件控制用符号 `@` 表示。

    语句执行的条件是信号的值发生特定的变化。

    关键字 posedge 指信号发生边沿正向跳变，negedge 指信号发生负向边沿跳变，未指明跳变方向时，则 2 种情况的边沿变化都会触发相关事件。例如：
    ```
      //信号clk只要发生变化，就执行q<=d，双边沿D触发器模型
      always @(clk) q <= d ;                
      //在信号clk上升沿时刻，执行q<=d，正边沿D触发器模型
      always @(posedge clk) q <= d ;  
      //在信号clk下降沿时刻，执行q<=d，负边沿D触发器模型
      always @(negedge clk) q <= d ; 

    ```
    敏感列表

    当多个信号或事件中任意一个发生变化都能够触发语句的执行时，Verilog 中使用"或"表达式来描述这种情况，用关键字 or 连接多个事件或信号。这些事件或信号组成的列表称为"敏感列表"。当然，or 也可以用逗号 , 来代替。例如：
    ```
    //带有低有效复位端的D触发器模型
    always @(posedge clk or negedge rstn)    begin      
    //always @(posedge clk , negedge rstn)    begin      
    //也可以使用逗号陈列多个事件触发
        if（! rstn）begin
            q <= 1'b ;      
        end
        else begin
            q <= d ;
        end
    end
    ```
    当组合逻辑输入变量很多时，那么编写敏感列表会很繁琐。此时，更为简洁的写法是 `@* `或 `@(*)`,表示对语句块中的所有输入变量的变化都是敏感的。例如：
    ```
    always @(*) begin
    //always @(a, b, c, d, e, f, g, h, i, j, k, l, m) begin 
    //两种写法等价
        assign s = a? b+c : d ? e+f : g ? h+i : j ? k+l : m ;
    end
    ```
    #table(
      columns: 3,
    [场景],[Verilog 代码示例	],[说明],
[组合逻辑]	,[always `@(a, b)` 或 always `@(*)`],[	输入变化时触发],[时序逻辑],	[always `@(posedge clk)`],	[时钟边沿触发)])

```
// structral model  

/*通过实例化 基本门（如 AND、OR） 或 其他模块 来构建电路，显式定义硬件结构。*/

module comparator_greater_than_structural(A, B, A_greater_than_B);
    input [1: 0] A, B;
    output A_greater_than_B;
    wire B0_n, B1_n, and0_out, and1_out, and2_out;

    not
        inv0(B0_n, B[0]), inv1(B1_n, B[1]);
    and
        and0(and0_out, A[1], B1_n);
        and1(and1_out, A[1], A[0], B0_n);
        and2(and2_out, A[0], B1_n, B0_n);
    or
        or0(A_greater_than_B, and0_out, and1_out, and2_out);
endmodule

// dataflow model

/*通过 连续赋值（assign） 直接描述信号之间的逻辑关系，类似于数学方程*/

module comparator_greater_than_dataflow(A, B, A_greater_than_B);
    input [1: 0] A, B;
    output A_greater_than_B;
    wire B0_n, B1_n, and0_out, and1_out, and2_out;

    assign B1_n = ~B[1];
    assign B0_n = ~B[0];
    assign and0_out = A[1] & B1_n;
    assign and1_out = A[1] & A[0] & B0_n;
    assign and2_out = A[0] & B1_n & B0_n;
    assign A_greater_than_B = and0_out | and1_out | and2_out;
endmodule

// conditional model 1
module comparator_greater_than_conditional2(A, B, A_greater_than_B);
    input [1: 0] A, B;
    output A_greater_than_B;

    assign A_greater_than_B = (A > B)? 1'b1 : 1'b0;
endmodule

// conditional model 2
module comparator_greater_than_conditional(A, B, A_greater_than_B);
    input [1: 0] A, B;
    output A_greater_than_B;

    assign A_greater_than_B = (A == 2'b00) ? 1'b0 :
                (A == 2'b01)? ~(B[1] | B[0]) : 
                (A == 2'b10)? ~B[1] : 
                (A == 2'b11)? ~(B[1]&B[0]) : 
                1'bx;
endmodule

// behavioral model 
module comparator_greater_than_behavioral(A, B, A_greater_than_B);
    input [1: 0] A, B;
    output A_greater_than_B;

    assign A_greater_than_B = A > B;
endmodule

// testbench
module comparator_testbench_verilog();
    reg [1: 0] A, B;
    wire struct_out;
    comparator_greater_than_structural U1(A, B, struct_out);

    initial begin
        A = 2'b10;
        B = 2'b00;
        #10;
        B = 2'b01;
        #10;
        B = 2'b10;
        #10;
        B = 2'b11;
    end
endmodule
```


Q[3:0]

Q <= {Q[2:0],S0}

verliog留坑

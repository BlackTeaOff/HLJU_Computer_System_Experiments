.section .data
.section .text
.global _start

# x86, 栈是从高地址向低地址增长的, 压栈会让地址变小
# %esp 栈顶指针, %eip 指令指针

_start: # push long
    pushl $3 # 将32为Long的数据压入栈中, %esp减4(long4字节), 之后把3写入
    pushl $2 # 继续减4, 把2写入栈中
    call power # %esp继续减4, 把call后面指令的地址写入(返回地址), 之后修改%eip寄存器, 使其指向power函数的第一行
    # 调用power(2, 3), 在power函数里, 会使用8(%ebp)通过偏移量去找压入栈的参数, 具体为什么是8或者为什么是ebp在下面解释
    
    addl $8, %esp # 把栈顶指针向下移动8个字节, 也就是丢弃了刚才压入的(2, 3)
    popl %ebx # 把栈顶的值弹出, 放到ebx(此时栈顶是系统初始化的数据, 是argc的值为1)
    addl %eax, %ebx # 把结果存到ebx里 (8+1=9)
    movl $1, %eax # 把操作码存入eax
    int $0x80 # 调用系统内核, 操作码为eax(1:sys_exit)

.type power, @function
power:
    pushl %ebp # 把原ebp的值压入栈中, 原ebp的值有可能是上一层函数的栈底, 所以先保存到栈中(旧ebp)
    movl %esp, %ebp # 把ebp的值改为当前esp(栈顶位置), 因为如果进行压栈或者出栈操作, esp的值会改变, 所以用ebp来作为固定参考点(不会变)
    subl $4, %esp # %esp = %esp - 4, x86栈向下(低地址)增长, 将栈顶向下移动4个字节, 腾出一块空间可以存放变量
    movl 8(%ebp), %ebx # %epb目前指向旧ebp, +4为返回地址, +8为第一个参数(2), 存到ebx
    movl 12(%ebp), %ecx # + 12为第二个参数(3), 存到ecx
    movl %ebx, -4(%ebp) # ebp-4是刚才腾出的空间, 把2存到这个空间, 准备循环累乘
    power_loop_start:
        cmpl $1, %ecx # power(2, 3), 求2的3次方, ecx存的是指数3, 连乘2直到指数为1
        je end_power # jump if equal, 如果ecx(指数)为1, 直接跳转到end_power部分
        movl -4(%ebp), %eax # 把结果放到eax中(累加器, 函数的返回值通常放在eax, 而且乘法计算需要存到寄存器)
        imull %ebx, %eax # eax = eax(上一次累乘的结果) * ebx(2)
        movl %eax, -4(%ebp) # 把这次累乘的结果放在那个开辟的空间 
        decl %ecx # 把指数减1
        jmp power_loop_start # 无条件跳转到循坏开始
    end_power:
        movl -4(%ebp), %eax # 把结果存到eax寄存器中
        movl %ebp, %esp # 把栈顶指针移回到ebp位置(旧ebp)
        popl %ebp # 把栈顶弹出来(旧ebp), 存回到ebp, %esp自动加4(把ebp恢复到_start那时候的, 让start部分正常工作)
        ret # 从栈顶弹出一个值(此时是返回地址, 把这个值赋给指令指针%eip)

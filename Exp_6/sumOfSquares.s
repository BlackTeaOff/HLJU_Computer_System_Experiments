.section .data
mess1: .long 2, 3, 5, 7, 11
.section .bss # 专门用来存放未初始化全局/静态变量
.lcomm buffer, 20 # local common 声明本地符号buffer, 预留20字节空间

.section .text
.global _start
_start:
    movl $0, %esi # 下标初始化为0
    movl $0, %edx # edx先清零, 下面循环存累加值
    
_loop:
    cmpl $5, %esi # 检查下标与5的关系
    je _end # jump if equal 如果下标等于5的关系

    movl mess1(, %esi, 4), %eax # 把下标为%esi的数放到eax
    imull %eax, %eax # 平方
    movl %eax, buffer(, %esi, 4) # 把平方存到buffer符号的空间
    addl %eax, %edx # edx = eax + edx 累加平方和
    incl %esi # 下标+1
    jmp _loop # 无条件跳转到loop开头

_end:
    movl $1, %eax
    # movl %edx, %ebx  ebx可作为返回值
    int $0x80

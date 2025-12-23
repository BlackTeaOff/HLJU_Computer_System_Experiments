.section .data
data_items:
    .long 3, 67, 34, 222, 45, 75, 54, 34, 44, 33, 22, 11, 66, 0 # long-4字节(32位)

.section .text
.global _start
_start: # 程序入口, 相当于main(也是一个标签, 但是链接器会把它当成程序入口)
    movl $0, %edi # move long, 把0传送到寄存器EDI中(寄存器前面必须加%)
    movl data_items(, %edi, 4), %eax # 把数组data_items的第edi个4字节元素读入%eax, data_items[%edi]

    movl %eax, %ebx # 把eax的值放到ebx

start_loop: # 给这一行的地址起名字, 方便在代码中别的地方跳转回来, 可实现循环
    cmpl $0, %eax # 判断eax和0的大小关系, 更改ZF-ZeroFlag, eax==0就把ZF设为1(cmpl是用0-eax, 结果只保留标志位存到ZF, 还会更新其他相关标志位, ZF SF OF CF PF........)
    je loop_exit # 如果上一次比较的结果相等, 就跳转到loop_exit标签执行(je - "jump if equal"), je读取ZF, 为1就执行
    incl %edi # edi自增1, 相当于++edi
    movl data_items(, %edi, 4), %eax # 又把data_items[edi]放入eax
    cmpl %ebx, %eax # 判断ebx和eax的大小关系, 更新相关标志位(ebx-eax), ZF SF OF等等(后续用这几个标志位可以判断他们的关系)
    jle start_loop # jump if less or equal, 小于等于就跳转到循环开头, 看ZF等不等于1, 还有SF和OF
    movl %eax, %ebx # 把eax的值放到ebx
    jmp start_loop # 无条件跳转
    
loop_exit:
    movl $1, %eax # 把1放入eax寄存器里, 如果执行int %0x80, 就会从eax取出"系统调用号"
    int $0x80 # 从eax取值, 根据值来调用某个内核服务, 如果eax为1, 就调用sys_exit
    
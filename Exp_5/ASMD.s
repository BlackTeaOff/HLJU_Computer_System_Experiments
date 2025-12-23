.section .data
X: .long 200 # x为标号, 内存地址的别名
Y: .long 500
Z: .long 400
V: .long 790

.section .text

.global _start

# 计算(V – (X * Y + Z -540)) / X
_start:
    # 计算X * Y
    movl X, %eax # 把X的值放到eax里, 因为imull会把eax里的值当作一个乘数                    (高32位, 低32位)
    imull Y     # 相当于%eax * Y(X * Y), 两个32位数相乘结果不会超出64位, 所以用两个32位寄存器存(edx:eax)
    # X*Y=200*500=100000, 远小于32位(2的32次方), 所以没有溢出, 结果都在eax里

    # 加Z
    addl Z, %eax # eax = eax + Z

    # -540
    subl $540, %eax # eax = eax - 540

    # 计算V - (上面的结果, 存到eax里了)
    movl V, %ecx # 把V存到ecx里, 等会使用subl, 直接更新寄存器里的值
    subl %eax, %ecx # ecx = ecx - eax

    # 计算(ecx里面的结果) / X                                                   (高32位, 低32位)
    # 使用idiv除法的时候, 要求被除数是64位, 所以要把ecx里面的结果存到两个32位寄存器里面(edx:eax)
    movl %ecx, %eax # 把被除数低32位放入eax
    cltd # 负责把低位eax的符号位存到高位edx里面(补码存储, 取反加1)
    idivl X # eax = edx:eax / X(商), edx = edx:eax % X(余), eax存商, edx存余

    movl %eax, %ebx # 把商存入ebx

    movl $1, %eax # 把操作码1(sys_exit)放入eax
    int $0x80 # 系统内核调用eax里的操作码1, 执行退出
    # 默认返回值为EBX寄存器里的值
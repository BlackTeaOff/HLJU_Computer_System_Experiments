#include <stdio.h>
#include <string.h>

void binaryToComplement(char* input) {
    char bin[9]; // 存7位二进制数和一个\0(无符号), 输入-10000000则8位二进制数和一个\0
    int is_negative = 0;
    char* p = input; // 指针指向数组首项
    if (input[0] == '-') {
        is_negative = 1;
        p++; // 把指针指向符号的后一位
    }
    if (is_negative && strcmp(p, "10000000") == 0) { // 如果是负数, 而且数字位是10000000
        printf("10000000\n"); // 特殊处理
        return;
    }

    int len = strlen(p); // 计算从p开始(不算前面符号), 字符串长度
    for (int i = 0; i < 7 - len; i++) {
        bin[i] = '0'; // 不足7位前面补0
    }
    strcpy(bin + (7 - len), p); // 从补0的后面开始, 把后面的01数字位都复制过来
    bin[7] = '\0'; // 结束符


    if (!is_negative) { // 正数补码等于原码
        printf("0%s\n", bin); // 前面加一个符号位0, 补到8位(bin是7位)
    } else {
        for (int i = 0; i <= 6; i++) { // 逐位去反(0-6存的是7位二进制数)
            if (bin[i] == '0') {
                bin[i] = '1';
            } else {
                bin[i] = '0';
            }
        }

        for (int i = 6; i >= 0; i--) { // 从最后开始往前进位, 反码+1
            if (bin[i] == '0') { // 是0则进位, 中断
                bin[i] = '1';
                break;
            } else { // 是1则变成0, 继续向前进位
                bin[i] = '0';
            }
        }

        printf("1%s\n", bin); // 前面负数标志位1
    }
}

/*
int main() {
    char bin[100];
    scanf("%s", bin);
    binaryToComplement(bin);
}
*/
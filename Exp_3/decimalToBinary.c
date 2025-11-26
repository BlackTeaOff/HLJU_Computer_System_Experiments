// 这部分整合到了decimalTo754中

#include "decimalToBinary.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

char* decimalToBinaryINT(char* decimal) { // 整数部分的
    int dec = atoi(decimal); // 字符串转整型
    char *bin = (char *)malloc(sizeof(char) * 100);
    for (int i = 0; i < 100; i++) {
        bin[i] = '0';
    }

    if (dec == 0) { // 如果整数是0的话, 直接返回0, 让后续可以判断出整数部分是0
        bin[0] = '0';
        bin[1] = '\0';
        return bin;
    }

    int remainder; // 余数
    int i = 0;
    int len = 0;
    while (dec > 0) { // 连除取余数
        remainder = dec % 2;
        bin[i] = remainder + '0';
        i++;
        dec /= 2;
        len++;
    }
    bin[i] = '\0';

    for (int i = 0; i < len / 2; i++) { // 反转
        char temp = bin[i];
        bin[i] = bin[len - i - 1]; // 前面与后面调换位置
        bin[len - i - 1] = temp;
    }

    return bin;
}

char* decimalToBinaryDEC(char* decimal) { // 小数部分的
    float dec = atof(decimal);
    char *bin = malloc(sizeof(char) * 100);
    for (int i = 0; i < 100; i++) {
        bin[i] = '0';
    }

    if (dec == 0) { // 小数部分为0, 下方会导致无限循环, 要特殊处理
        bin[1] = '\0';
        return bin;
    }

    int i = 0;
    int INT;           // 整数部分
    while (dec != 1) { // 乘2取整
        dec *= 2;
        INT = dec;
        bin[i] = INT + '0';
        i++;
        if (dec > 1) {
            dec -= 1;
        }
    }
    bin[i] = '\0';
    return bin;
}

/*
int main() {
    char decimal[100];
    scanf("%s", decimal);
    printf("%s\n", decimalToBinary(decimal));
}
*/
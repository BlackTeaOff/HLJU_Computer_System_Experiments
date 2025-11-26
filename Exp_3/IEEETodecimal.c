#include <stdio.h>
#include <string.h>
#include <math.h> // -lm

void hexToBin(char hex, char* bin) {
    switch(hex) {
        case '0' : // 输入十六进制数直接输出对应四位二进制数到bin数组
            strcpy(bin, "0000");
            break;
        case '1' :
            strcpy(bin, "0001");
            break;
        case '2' :
            strcpy(bin, "0010");
            break;
        case '3' :
            strcpy(bin, "0011");
            break;
        case '4' :
            strcpy(bin, "0100");
            break;
        case '5' :
            strcpy(bin, "0101");
            break;
        case '6' :
            strcpy(bin, "0110");
            break;
        case '7' :
            strcpy(bin, "0111");
            break;
        case '8' :
            strcpy(bin, "1000");
            break;
        case '9' :
            strcpy(bin, "1001");
            break;
        case 'A' : case 'a' :
            strcpy(bin, "1010");
            break;
        case 'B' : case 'b' :
            strcpy(bin, "1011");
            break;
        case 'C' : case 'c' :
            strcpy(bin, "1100");
            break;
        case 'D' : case 'd' :
            strcpy(bin, "1101");
            break;
        case 'E' : case 'e' :
            strcpy(bin, "1110");
            break;
        case 'F' : case 'f' :
            strcpy(bin, "1111");
            break;
        default :
            strcpy(bin, "0000"); // 输入位数不够时填0000
            break;
    }
}

int binaryToDecimal(char* bin) { // 二进制转十进制(用来阶码转为指数)
    int len = strlen(bin);
    int dec = 0;
    int power = 1; // 每位的权值(先从第0位开始, 即2的0次方为1)

    for (int i = len - 1; i >= 0; i--) { // 从后向前, 按权展开
        if (bin[i] == '1') {
            dec += power;
        }
        power *= 2; // 位向左移一位, 权值乘以2
    }

    return dec; 
}

double binaryToFraction(char* bin) { // 二进制转小数十进制(用来尾数转为小数部分)
    double fra = 0.0; // 尾数的小数部分值
    double power = 0.5; // 小数部分二进制转十进制, 权值从2的-1次方开始

    for (int i = 0; bin[i] != '\0'; i++) { // 小数式从左往右遍历
        if (bin[i] == '1') {
            fra += power;
        }
        power /= 2; // 向右移位, 权值除以2(2的-2, 2的-3等等等)
    }

    return fra;
}

void IEEETodecimal() {
    char hex[100];
    printf("请输入十六进制数: ");
    scanf("%s", hex);

    char IEEE[33] = ""; // IEEE 32位 + \0
    char temp[5]; // 存储一位十六进制转为的4位二进制

    // 十六进制转二进制部分
    for (int i = 0; i < 8; i++) { // 一共8位二进制
        hexToBin(hex[i], temp); // 把十六进制第i位转为四位二进制存到temp
        strcat(IEEE, temp); // 把temp接到IEEE后面
    }

    // printf("%s\n", IEEE);
    
    // IEEE分割为3部分
    char signStr[2]; // 1位符号
    char expStr[9]; // 8位阶码
    char mantStr[24]; // 23位尾数

    // 提取符号
    signStr[0] = IEEE[0];
    signStr[1] = '\0';

    // 提取阶码
    int k = 0; // 作为expStr下标
    for (int i = 1; i <= 8; i++) { // i: 1-8, 阶码部分
        expStr[k] = IEEE[i];
        k++;
    }
    expStr[k] = '\0';

    // 提取尾数
    k = 0; // 作为mantStr下标
    for (int i = 9; i < 32; i++) { // i: 9-31, 尾数部分
        mantStr[k] = IEEE[i];
        k++;
    }
    mantStr[k] = '\0';

    // printf("%s\n", signStr);
    // printf("%s\n", expStr);
    // printf("%s\n", mantStr);


    // 计算结果阶段
    int sign = 0;
    if (signStr[0] == '1') {
        sign = 1;
    } else {
        sign = 0;
    }
    int exp = binaryToDecimal(expStr);
    exp -= 127; // 减去偏移量127
    double fra = binaryToFraction(mantStr); // 尾数的小数部分值

    double result;

    // 公式 (-1)^S * (1 + M(尾数部分的小数)) * 2^(E - 127) (E-127是指数)
    result = (1.0 + fra) * pow(2, exp);

    if (sign == 1) { // 符号位为负就变为负数
        result = -result;
    }

    printf("%lf\n", result);
}

/*
int main() {
    IEEETodecimal();
}
*/
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

void decimalTo754() {
    char decimal[100];
    printf("请输入十进制数: ");
    scanf("%s", decimal);

    if (strcmp(decimal, "0") == 0 || strcmp(decimal, "-0") == 0 || strcmp(decimal, "0.0") == 0 || strcmp(decimal, "-0.0") == 0) { // 0或-0特殊处理
        // printf("%c0000000000000000000000000000000\n", (decimal[0] == '-') ? '1' : '0');
        printf("%c0000000\n", decimal[0] == '-' ? '8' : '0');
        return;
    }

    // 初始化部分

    int is_negative = 0;
    char IEEE[33]; // 32位+'\0'
    for (int i = 0; i < 32; i++) {
        IEEE[i] = '0';
    }
    if (decimal[0] == '-') {
        is_negative = 1;
        IEEE[0] = '1';
    }

    char integers_part[100]; // 整数部分
    char decimals_part[100]; // 小数部分
    
    // 分离整数和小数部分
    int i = 0; // 提取整数部分和小数部分阶段
    if (is_negative) { // 如果是负数, 跳过负号
        i = 1;
    }
    // 提取整数
    int j = 0; // j用来给新字符数组当下标
    for (; decimal[i] != '\0'; i++) {
        if (decimal[i] == '.') {
            i++; // 跳过小数位
            break;
        }
        integers_part[j] = decimal[i];
        j++;
    }
    integers_part[j] = '\0';
    // 提取小数
    decimals_part[0] = '0'; // 小数部分前面加上0., 方便转二进制
    decimals_part[1] = '.';
    j = 2;
    for (; decimal[i] != '\0'; i++) {
        decimals_part[j] = decimal[i];
        j++;
    }
    decimals_part[j] = '\0';
    
    
    // 整数小数分别转进制部分
    char* integers_bin = decimalToBinaryINT(integers_part); // 整数部分和小数部分分别转为二进制
    char* decimals_bin = decimalToBinaryDEC(decimals_part);

    // printf("%s\n", integers_bin);
    // printf("%s\n", decimals_bin);


    // 指数计算部分
    // 规格化(小数点移位), 如果整数部分二进制是0的话, 需要根据小数部分向右移位
    int exp = 0; // 指数
    int move = 0; // 如果整数部分二进制是0的话, 用move记录小数部分移位的次数, 作为指数(负的)

    if (strcmp(integers_bin, "0") != 0) { // 如果整数部分二进制不是0, 那就正常处理
        exp = strlen(integers_bin) - 1; // 指数就是整数位数-1
    } else { // 整数部分二进制是0, 去小数部分二进制移动小数点, 计算指数(此时指数为负)
        int dec_len = strlen(decimals_bin); // 小数部分数组大小
        for (int i = 0; i < dec_len; i++) { // 遍历
            if (decimals_bin[i] == '1') { // 找到小数(二进制)中第一个1, 例如0.25(01B), 那么move就为1(decimals_bin存的是二进制的小数部分)
                move = i;
                break;
            }
        }
        exp = -(move + 1); // 变负+1(因为下标从0开始)
    }

    // 阶码转二进制阶段
    int offset_exp = exp + 127; // 加上偏移量127
    // int integers = atoi(integers_bin);
    char exp_str[20];
    sprintf(exp_str, "%d", offset_exp); // 把阶码转为字符, 方便转二进制
    char *exp_bin = malloc(sizeof(char) * 100); // 阶码
    exp_bin = decimalToBinaryINT(exp_str); // 指数加完偏移量转二进制为阶码

    // 填充阶码
    // IEEE[1] 到 IEEE[8]
    int exp_bin_len = strlen(exp_bin); // 计算出二进制阶码的位数
    int pad = 8 - exp_bin_len; // 不足8位前面要补pad个0(如果阶码小于等于127, 那就会出现不足8位的情况)
    for (int k = 0; k < exp_bin_len; k++) {
        IEEE[1 + pad + k] = exp_bin[k]; // 直接右对齐, 跳过缺的0与第一位符号位
    } // 如果pad = 0, 代表有8位, 那1+pad+k就是1+k(1-8, k从0开始)
    // 举个例子: 0(符号)00000000(8位阶码), 如果阶码只有5位(10000), pad=8-5=3, 从IEEE[1+k(0)+pad(3)]开始(IEEE[4])
                        //↑(这里是IEEE[4], 后面正好5位)
                        
    
    // 处理尾数部分
    char mant[300] = ""; // 尾数数组

    if (strcmp(integers_bin, "0") != 0) { // 整数部分不是0
        strcat(mant, integers_bin + 1); // 加上去掉整数的第一个1的部分
        strcat(mant, decimals_bin); // 再加上小数部分, 即为尾数
    } else { // 整数部分二进制是0的情况, 尾数就是小数部分二进制后第一个1之后的所有位
        strcat(mant, decimals_bin + move + 1); // move就是之前计算出第一个1的位置
    }

    // 向IEEE数组填充尾数(IEEE[9] - IEEE[31])
    int m_len = strlen(mant);
    for (int k = 0; k < 23; k++) { // 尾数23位
        if (k < m_len) { // 若还没到尾数的长度, 就填充尾数
            IEEE[9 + k] = mant[k];
        } else { // 到了就后面补0
            IEEE[9 + k] = '0';
        }
    }
    IEEE[32] = '\0';

    // printf("%s\n", IEEE);

    free(integers_bin);
    free(decimals_bin); 

    // 二进制转十六进制部分
    char hex[9]; // 8位十六进制加一位\0, 8×4=32(正好32位), 1位十六进制对应4个二进制
    char map[] = "0123456789ABCDEF"; // 下标对应16进制, 例如A的下标为10, F的下标为15

    for (int i = 0; i < 8; i++) { // 循环8次, 每次处理4个二进制, 一共处理32位
        int val = 0; // 保存二进制对应的十进制数
        int start = i * 4; // 每次处理4个二进制数, i是处理到第i组(每组4个)二进制数, start就是这个组第一个数的下标

        if (IEEE[start + 0] == '1') {
            val += 8; // 第一位权值为8
        }
        if (IEEE[start + 1] == '1') {
            val += 4; // 第二位权值为4
        }
        if (IEEE[start + 2] == '1') {
            val += 2; // 第三位权值为2
        }
        if (IEEE[start + 3] == '1') {
            val += 1; // 第四位权值为1
        }

        hex[i] = map[val]; // val即为这4位二进制对应的十进制值, 作为map的下标取出16进制值存到hex
    }
    hex[8] = '\0';

    printf("%s\n", hex);

    /*
    char* mant = strcat(integers_bin, decimals_bin); // 把整数二进制和小数二进制字符串组合就是尾数(需要去掉第一位隐藏位, 后续补0)
    // printf("%s\n", mant);
    j = 9; // 从第9位开始存尾数
    for (int i = 1; mant[i] != '\0'; i++) { // i从1开始, 跳过前面隐藏位
        IEEE[j] = mant[i];
        j++;
    }
    IEEE[32] = '\0';
    printf("%s\n", IEEE);
    */
}

/*
int main() {
    decimalTo754();
}
*/
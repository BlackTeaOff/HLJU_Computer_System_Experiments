#include <stdio.h>

void binaryToInverse(char* bin) {
    if (bin[0] != '-') { // 不为负数
        printf("0"); // 正数标志位为0, 其他不变
        printf("%s\n", bin);
    } else { // 为负数
        printf("1"); // 负数标志位为1, 其他取反
        for (int i = 1; bin[i] != '\0'; i++) { // 从1开始, 前面的负号不要
            if (bin[i] == '0') {
                printf("1");
            } else {
                printf("0");
            }
        }
        printf("\n");
    }
}

/*
int main() {
    char bin[100];
    scanf("%s", bin);
    binaryToInverse(bin);
}
*/
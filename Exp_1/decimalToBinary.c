#include <stdio.h>
#include <stdlib.h>

char* decimalToBinary(int decimal) {
    char* binary = malloc(sizeof(char) * 9); // 1字节=8bit
    binary[8] = '\0';
    for (int i = 0; i < 8; i++) { // 0-7 初始化为0
        binary[i] = '0';
    }
    int remainder; // 余数
    int i = 0;
    while (decimal > 0) { // 短除法(除到小于0为止)
        remainder = decimal % 2;
        binary[7 - i] = remainder + '0'; // 从最后一位开始存(最低位, 从下往上)
        decimal /= 2; // 加'0'的原因是0的ASCII值是48, 若余数是1, 则存48+1=49, 对应1
        i++;
    }
    return binary;
}

/*
int main() {
    int a;
    scanf("%d", &a);
    char* binary;
    if (a >= 0) {
        binary = decimalToBinary(a);
    } else {
        binary = decimalToBinary(-a);
    }
    if (a >= 0) {
        printf("%s\n", binary);
    } else {
        printf("-%s\n", binary);
    }
    free(binary);
}
*/
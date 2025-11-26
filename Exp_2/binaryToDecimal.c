#include <stdio.h>
#include <string.h>

int binaryToDecimal(char* bin) {
    if (bin == NULL) {
        printf("未输入二进制数\n");
        return 0;
    }

    int decimal = 0;
    int pow = 1; // 2的几次方, 先是2的0次方
    int len = strlen(bin); // 计算出字符串长度, 若长度是10, 则0-9是输入的二进制数, 10是'\0'
    if (bin[0] != '-') {
        for (int i = len - 1; i >= 0; i--) { // 从最后一位开始(最小权值位)
            decimal += (bin[i] - '0') * pow; // bin[i]的ASCII减去0的ASCII就是原数
            pow *= 2; // 2升次
        }
    } else {
        for (int i = len - 1; i > 0; i--) { // 如果第一位是负号, 则改为i>0, 不遍历到第0位
            decimal += (bin[i] - '0') * pow; // bin[i]的ASCII减去0的ASCII就是原数
            pow *= 2; // 2升次
        }
    }
    return decimal;
}

/*
int main() {
    char bin[100];
    scanf("%s", bin);
    if (bin[0] != '-') {
        printf("%d\n", binaryToDecimal(bin));
    } else {
        printf("-%d\n", binaryToDecimal(bin));
    }
}
*/
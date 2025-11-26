#include <stdio.h>

void inverseToBinary(char* inverse) {
    if (inverse[0] == '0') {
        printf("%s\n", inverse + 1); // 标志位为0, 正数, 输出标志位后面的
    } else {
        printf("-"); // 标志位为1, 加负号
        for (int i = 1; inverse[i] != '\0'; i++) { // 从标志位之后开始, 依次取反
            if (inverse[i] == '0') { // 取反
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
    char inverse[100];
    scanf("%s", inverse);
    inverseToBinary(inverse);
}
*/
#include <stdio.h>
#include <string.h>

void complementToBinary(char* com) {
    if (strlen(com) != 8) {
        printf("输入必须是8位\n");
        return;
    }

    if (com[0] == '0') { // 正数
        printf("%s\n", com + 1); // 直接输出后面7位
        return;
    } else {
        if (strcmp(com, "10000000") == 0) {
            printf("-10000000\n");
            return;
        }
    }

    for (int i = 7; i >= 1; i--) { // 负数, 从最后到符号位之前, 先减1
        if (com[i] == '1') {
            com[i] = '0';
            break; // 减完直接退出
        } else { // == ‘0’的情况, 需要向前借位
            com[i] = '1';
        }
    }

    for (int i = 1; i <= 7; i++) { // 按位取反
        if (com[i] == '0') {
            com[i] = '1';
        } else {
            com[i] = '0';
        }
    }

    printf("-%s\n", com + 1);
}

/*
int main() {
    char com[100];
    scanf("%s", com);
    complementToBinary(com);
}
*/
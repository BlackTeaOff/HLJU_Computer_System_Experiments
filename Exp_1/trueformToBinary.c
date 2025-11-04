#include <stdio.h>

void trueformToBinary(char* trueform) {
    if (trueform[0] == '0') {
        printf("%s\n", trueform + 1); // 从标志位后一位开始
    } else {
        printf("-");
        printf("%s\n", trueform + 1);
    }
}

/*
int main() {
    char trueform[100];
    scanf("%s", trueform);
    trueformToBinary(trueform);
}
*/ 
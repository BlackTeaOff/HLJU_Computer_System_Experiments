#include <stdio.h>

void binaryToTrueform(char* bin) {
    if (bin[0] != '-') {
        printf("0");
        printf("%s\n", bin);
    } else {
        printf("1");
        printf("%s\n", bin + 1); // 跳过负号
    }
    return;
}

/*
int main() {
    char bin[100];
    scanf("%s", bin);
    binaryToTrueform(bin);
}
*/
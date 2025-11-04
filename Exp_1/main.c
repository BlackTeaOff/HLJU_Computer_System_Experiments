#include <stdio.h>
#include <stdlib.h>
#include "headers.h"

void print_menu() {
    printf("------------------------------\n");
    printf("1. 十进制转二进制\n");
    printf("2. 二进制转十进制\n");
    printf("3. 二进制转原码\n");
    printf("4. 原码转二进制\n");
    printf("5. 二进制转反码\n");
    printf("6. 反码转二进制\n");
    printf("7. 二进制转补码\n");
    printf("8. 补码转二进制\n");
    printf("0. 退出\n");
    printf("------------------------------\n");
}

int main() {
    int choice;
    while (1) {
        print_menu();
        scanf("%d", &choice);

        switch (choice) {
            case 0:
                return 0;
            case 1: {
                int a;
                printf("请输入十进制数: ");
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
                break;
            }
            case 2: {
                char bin[100];
                printf("请输入二进制数: ");
                scanf("%s", bin);
                if (bin[0] != '-') {
                    printf("%d\n", binaryToDecimal(bin));
                } else {
                    printf("-%d\n", binaryToDecimal(bin));
                }
                break;
            }
            case 3: {
                char bin[100];
                printf("请输入有符号7位二进制数: ");
                scanf("%s", bin);
                binaryToTrueform(bin);
                break;
            }
            case 4: {
                char trueform[100];
                printf("请输入8位原码: ");
                scanf("%s", trueform);
                trueformToBinary(trueform);
                break;
            }
            case 5: {
                char bin[100];
                printf("请输入有符号7位二进制数: ");
                scanf("%s", bin);
                binaryToInverse(bin);
                break;
            }
            case 6: {
                char inverse[100];
                printf("请输入8位反码: ");
                scanf("%s", inverse);
                inverseToBinary(inverse);
                break;
            }
            case 7: {
                char bin[100];
                printf("请输入有符号7位二进制数: ");
                scanf("%s", bin);
                binaryToComplement(bin);
                break;
            }
            case 8: {
                char com[100];
                printf("请输入8位补码: ");
                scanf("%s", com);
                complementToBinary(com);
                break;
            }
        }
    }
}

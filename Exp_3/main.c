#include "headers.h"
#include <stdio.h>

int main() {
    int choice;

    while (1) {
        printf("--------------------\n");
        printf("1. 十进制数转IEEE754\n");
        printf("2. IEEE754转十进制数\n");
        printf("--------------------\n");
        scanf("%d", &choice);

        switch (choice) {
            case 1 : 
                decimalTo754();
                break;
            case 2 :
                IEEETodecimal();
                break;
        }
    }
}
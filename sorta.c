#include <stdio.h>
#include <string.h>

int main(int argc, char *argv[]) {
    // 没有参数，退出
    if (argc <= 1) {
        return 0;
    }

    // 字符串排序
    for (int i = 1; i < argc - 1; i++) {
        int min= i; //minindex
        for (int j = i+1; j < argc - 1; j++) {
            if (strcmp(argv[j], argv[min]) < 0) {
                min=j;
            }
        }
        if(min!=i){
            char *temp = argv[i];
            argv[i] = argv[min];
            argv[min] = temp;
        }
    }

    // 打印排序后的结果，每个参数占一行
    for (int i = 1; i < argc; i++) {
        printf("%s\n", argv[i]);
    }

    return 0;
}

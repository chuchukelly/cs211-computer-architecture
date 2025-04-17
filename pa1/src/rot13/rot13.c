#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

void rot13(char *x) {
    char y;
    while ((y = *x++) != '\0') {  // 逐字符处理输入字符串
        if (isalpha(y)) {  // 判断字符是否为字母
            if (islower(y)) {
                // 处理小写字母
                putchar(((y - 'a' + 13) % 26) + 'a');
            } else {
                // 处理大写字母
                putchar(((y - 'A' + 13) % 26) + 'A');
            }
        } else {
            // 非字母直接输出
            putchar(y);
        }
    }
    putchar('\n');  // 输出换行符
}

int main(int argc, char *argv[]) {
    rot13(argv[1]);

    return 0;

}

#include <stdio.h>
#include <ctype.h>  // 包含ctype.h，使用isalpha等函数

void rot13(const char *x) {
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
    // 检查是否提供了正确数量的参数
    if (argc != 2) {
        fprintf(stderr, "使用方法: %s <字符串>\n", argv[0]);
        return 1;  // 如果参数不正确，返回错误码1
    }

    // 对输入的字符串应用rot13
    rot13(argv[1]);

    return 0;  // 程序正常结束，返回0
}

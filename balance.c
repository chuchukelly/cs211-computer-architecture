#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// 定义一个简单的堆栈
char * stack[100];
int n = 0;

// 压入堆栈
void push(char c) {
        stack[++n] = c;
}

// 弹出堆栈
char pop() {
    if (n > 0) {
        return stack[--n];  // 弹出字符
    } else {
        return '\0';  // 堆栈为空
    }
}

// 检查堆栈是否为空
int is_empty() {
    return n == 0;
}

// 获取匹配的右括号
char matching_bracket(char c) {
    if (c == '(') return ')';
    if (c == '[') return ']';
    if (c == '{') return '}';
    //return '\0';
}

int main(int argc, char *argv[]) {
    char *input = argv[1];
    int len = strlen(input);

    // 遍历字符串
    for (int i = 0; i < len; i++) {
        char c = input[i];

        // 如果是左括号，压入堆栈
        if (c == '(' || c == '[' || c == '{') {
            push(c);
        }
        // 如果是右括号，匹配 or not
        else if (c == ')' || c == ']' || c == '}') {
            char top_char = pop();
            if (top_char == '\0' || matching_bracket(top_char) != c) {
                printf("%d: %c\n", i, c);  // 输出不匹配的位置和符号
            }
        }
    }

    // 如果到达字符串末尾时堆栈非空，输出需要的右括号
    if (!is_empty()) {
        printf("open: ");
        while (!is_empty()) {
            printf("%c", matching_bracket(pop()));
        }
        printf("\n");
    }

    // 一切正常，返回成功状态
    return 0;
}

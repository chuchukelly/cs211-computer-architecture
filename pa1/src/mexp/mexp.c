#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// 动态分配二维矩阵
int **allocate_matrix(int size) {
    int **matrix = (int **)malloc(size * sizeof(int *));
    for (int i = 0; i < size; i++) {
        matrix[i] = (int *)malloc(size * sizeof(int));
    }
    return matrix;
}

// 释放二维矩阵的内存
void free_matrix(int **matrix, int size) {
    for (int i = 0; i < size; i++) {
        free(matrix[i]);
    }
    free(matrix);
}

// 矩阵乘法: result = A × B
void multiply_matrices(int **result, int **A, int **B, int size) {
    int **temp = allocate_matrix(size);

    // 初始化 temp 矩阵
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            temp[i][j] =0;
            for (int k = 0; k < size; k++) {
                temp[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    // 将 temp 的结果复制到 result
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            result[i][j] = temp[i][j];
        }
    }

    free_matrix(temp, size);
}

// 输出矩阵
void print_matrix(int **matrix, int size) {
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            printf("%d", matrix[i][j]);
            if (j < size - 1) {
                printf(" ");
            }
        }
        printf("\n");
    }
}



int main(int argc, char *argv[]) {
   
    // 打开输入文件
    FILE *file = fopen(argv[1], "r");
    
    // 读取矩阵的大小
    int size;
    fscanf(file, "%d", &size);

    // 动态分配矩阵
    int **matrix = allocate_matrix(size);
    int **result = allocate_matrix(size);
    int **temp_matrix = allocate_matrix(size);

    // 读取矩阵的内容
    for (int i = 0; i < size; i++) {
        for (int j = 0; j < size; j++) {
            fscanf(file, "%d", &matrix[i][j]);
            result[i][j] = matrix[i][j];  // 初始 result 作为原矩阵
        }
    }

    // 读取指数 n
    int exponent;
    fscanf(file, "%d", &exponent);

    fclose(file);  // 关闭文件

    // 如果 n == 0，输出单位矩阵
    if (exponent == 0) {
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                if (i == j) {
                    result[i][j] = 1;  // 对角线为 1
                } else {
                    result[i][j] = 0;  // 非对角线为 0
                }
            }
        }
    } else {
        // 进行 n-1 次的矩阵自乘
        for (int i = 1; i < exponent; i++) {
            multiply_matrices(temp_matrix, result, matrix, size);  // result × matrix
            for (int j = 0; j < size; j++) {  // 将 temp_matrix 结果复制回 result
                for (int k = 0; k < size; k++) {
                    result[j][k] = temp_matrix[j][k];
                }
            }
        }
    }

    // 输出计算后的矩阵
    print_matrix(result, size);

    // 释放矩阵内存
    free_matrix(matrix, size);
    free_matrix(result, size);
    free_matrix(temp_matrix, size);

    return 0;
}
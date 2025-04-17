#include <stdio.h>
#include <string.h>
#include <stdlib.h>

// 动态分配二维矩阵
double **allocate_matrix(int row, int col) {
    double **matrix = (double **)malloc(row * sizeof(double *));
    for (int i = 0; i < row; i++) {
        matrix[i] = (double *)malloc(col * sizeof(double));
    }
    return matrix;
}

// 释放二维矩阵的内存
void free_matrix(double **matrix, int size) {
    for (int i = 0; i < size; i++) {
        free(matrix[i]);
    }
    free(matrix);
}

// 矩阵乘法: result = A × B
double **multiply_matrices(double **A, int a_rows, int a_cols, double **B, int b_cols) {
    // 分配结果矩阵
    double **C = allocate_matrix(a_rows, b_cols);

    // 初始化并计算结果矩阵 C = A × B
    for (int i = 0; i < a_rows; i++) {
        for (int j = 0; j < b_cols; j++) {
            C[i][j] = 0;
            for (int k = 0; k < a_cols; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    return C;
}


//求矩阵的T
double **transpose(double **A, int rows, int cols) {
    // 分配转置矩阵
    double **T = allocate_matrix(cols, rows);

    // 转置
    for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {
            T[i][j] = A[j][i];
        }
    }

    return T;
}
//求矩阵的逆
double **invert_matrix(double **M, int n) {
    // 初始化 N 为 n x n 的单位矩阵
    double **N = allocate_matrix(n,n);
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            if (i == j) {
                N[i][j] = 1.0; // 对角线上元素设为 1
            } 
            else {
                N[i][j] = 0.0; // 非对角线上元素设为 0
            }
        }
    }
    // 逐行消元，使得 M 成为上三角矩阵
    for (int p = 0; p < n; p++) {
        double f = M[p][p];
        
        // 将 M 的第 p 行除以 f
        for (int j = 0; j < n; j++) {
            M[p][j] /= f;
            N[p][j] /= f;
        }

        // 对第 p 行以下的各行进行消元
        for (int i = p + 1; i < n; i++) {
            f = M[i][p];
            for (int j = 0; j < n; j++) {
                M[i][j] -= M[p][j] * f;
                N[i][j] -= N[p][j] * f;
            }
        }
    }
    // 反向消元，使得 M 成为单位矩阵
    for (int p = n - 1; p >= 0; p--) {
        for (int i = p - 1; i >= 0; i--) {
            double f = M[i][p];
            for (int j = 0; j < n; j++) {
                M[i][j] -= M[p][j] * f;
                N[i][j] -= N[p][j] * f;
            }
        }
    }

    return N; // 返回矩阵 N，即矩阵 M 的逆
}






int main(int argc, char *argv[]) {
   
    //train_file
    FILE *train_file = fopen(argv[1], "r");
    if (!train_file) {
        printf("error\n");
        return 1;
    }
    //读取文件数据
    char label[6];
    int k, n;
    if (fscanf(train_file, "%s", label) != 1 || strcmp(label, "train") != 0 ||
        fscanf(train_file, "%d", &k) != 1 || fscanf(train_file, "%d", &n) != 1) {
        printf("error\n");
        fclose(train_file);
        return 1;
    }
    /*fscanf(train_file, "%s", label); // r "train"
    fscanf(train_file, "%d", &k); // r属性数量
    fscanf(train_file, "%d", &n); // r房屋数量
    */
    //
    double **X = allocate_matrix(n, k + 1);
    double **Y = allocate_matrix(n, 1);
    //
    for (int i = 0; i < n; i++) {
        X[i][0] = 1.0;
        for (int j = 1; j <= k; j++) {
            fscanf(train_file, "%lf", &X[i][j]);
        }
        fscanf(train_file, "%lf", &Y[i][0]);
    }
    fclose(train_file);
    //求Xt乘X
    double **XT = transpose(X, n, k + 1);
    double **XTX = multiply_matrices(XT, k + 1, n, X, k + 1);
    //求(XT乘X)−1
    double **XTX_inv = invert_matrix(XTX, k + 1);
    //求(XT乘X)−1乘Xt
    double **XTX_inv_XT = multiply_matrices(XTX_inv, k + 1, k + 1, XT, n);
    //求W
    double **W = multiply_matrices(XTX_inv_XT, k + 1, n, Y, 1);

    //free
    free_matrix(X, n);
    free_matrix(XT, k + 1);
    free_matrix(XTX, k + 1);
    free_matrix(XTX_inv, k + 1);
    free_matrix(XTX_inv_XT, k + 1);
    free_matrix(Y, n);

    //data_file
    FILE *data_file = fopen(argv[2], "r");
    if (!data_file) {
        free_matrix(W, k + 1);
        printf("error\n");
        return 1;
    }
    //读取文件数据
    
    int m,k2;
    if (fscanf(data_file, "%s", label) != 1 || strcmp(label, "data") != 0 ||
        fscanf(data_file, "%d", &k2) != 1 || fscanf(data_file, "%d", &m) != 1 || k != k2)
    {
        printf("error\n");
        fclose(data_file);
        free_matrix(W, k + 1);
        return 1;
    }
    /*fscanf(data_file, "%s", label); // r "train"
    fscanf(data_file, "%d", &k); // r属性数量
    fscanf(data_file, "%d", &m); // r房屋数量
    */
    //
    double **X_data = allocate_matrix(m, k+1);
    //
    for (int i = 0; i < m; i++) {
        X_data[i][0] = 1.0;
        for (int j = 1; j <= k; j++) {
            fscanf(data_file, "%lf", &X_data[i][j]);
        }
    }
    fclose(data_file);
    //
    double **Y_data = multiply_matrices(X_data, m, k + 1, W, 1);
    for (int i = 0; i < m; i++) {
        printf("%.0f\n", Y_data[i][0]);
    }

    free_matrix(X_data, m);
    free_matrix(Y_data, m);
    free_matrix(W, k+1);

    return 0;
}
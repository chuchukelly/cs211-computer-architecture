#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#define MAX_VARS 1000 // 最大变量数量
#define MAX_GATES 1000 // 最大变量数量

typedef enum { AND, OR, NAND, NOR, XOR, NOT, PASS, DECODER, MULTIPLEXER } kind_t;

struct gate {
    kind_t kind;
    int size;
    int *params;
};
struct gate gates[MAX_GATES];
char var_names[MAX_VARS][17];
int var_count = 0;

//struct gate gates[MAX_VARS];
int gate_count = 0;
int input_vars[MAX_VARS];
int output_vars[MAX_VARS];
int input_count = 0;
int output_count = 0;

int in_degree[MAX_GATES] = {0}; // 每个逻辑门的入度
int adj_list[MAX_GATES][MAX_GATES]; // 邻接表
int adj_count[MAX_GATES] = {0};    // 每个节点的邻接节点数量


void add_dependency(int from, int to) {
    //printf("Adding dependency: %d -> %d\n", from, to);//调试用
    adj_list[from][adj_count[from]++] = to;
    in_degree[to]++;
}
void topological_sort(int *sorted_order) {
    int queue[MAX_GATES];
    int front = 0, rear = 0;

    // 将所有入度为0的var加入队列
    for (int i = 0; i < var_count; i++) {
        if (in_degree[i] == 0) {
            queue[rear++] = i;
        }
    }

    int sorted_index = 0;
    while (front < rear) {
        int current = queue[front++];
        sorted_order[sorted_index++] = current;

        // 遍历邻接表，减少依赖门的入度
        for (int i = 0; i < adj_count[current]; i++) {
            int neighbor = adj_list[current][i];
            in_degree[neighbor]--;
            if (in_degree[neighbor] == 0) {
                queue[rear++] = neighbor;
            }
        }
    }
    if (sorted_index != var_count) {
        fprintf(stderr, "Error: Circuit contains a cycle.\n");
        exit(1);
    }
    // 打印排序结果（调试用）
    /*printf("Topological order: ");
    for (int i = 0; i < sorted_index; i++) {
        printf("%d ", sorted_order[i]);
    }
    printf("\n");*/
}



int get_var_index(const char *name) {
    if (strcmp(name, "0") == 0) return MAX_VARS - 2; // 保留特殊索引用于常量 0
    if (strcmp(name, "1") == 0) return MAX_VARS - 1; // 保留特殊索引用于常量 1

    for (int i = 0; i < var_count; i++) {
        if (strcmp(var_names[i], name) == 0) return i;
    }
    
    strcpy(var_names[var_count], name);
    //printf("Assigning index %d to variable %s\n", var_count, name); // 调试输出
    return var_count++;
}

void reorder_gates(int *sorted_order) {
    struct gate sorted_gates[MAX_GATES];
    int var_to_gate[MAX_VARS];  // 变量到逻辑门的映射
    memset(var_to_gate, -1, sizeof(var_to_gate));

    // 建立变量到逻辑门的映射
    for (int i = 0; i < gate_count; i++) {
        int output_var = -1;
        if(gates[i].kind==NOT || gates[i].kind == PASS){
            output_var = gates[i].params[1];
        }else if(gates[i].kind==DECODER){
            output_var = gates[i].params[gates[i].size + (1 << gates[i].size)-1];
        }
        else{
            output_var = gates[i].params[gates[i].size == 0 ? 2 : gates[i].size + (1 << gates[i].size) ];
        }
        var_to_gate[output_var] = i;
        //printf("Gate %d outputs variable %s\n", i, var_names[output_var]);  // 调试输出
    }

    // 根据 sorted_order 重排 gates
    int new_gate_count = 0;
    for (int i = 0; i < var_count; i++) {
        int gate_idx = var_to_gate[sorted_order[i]];
        if (gate_idx != -1) {  // 如果变量是某个逻辑门的输出
            sorted_gates[new_gate_count++] = gates[gate_idx];
        }
    }

    // 写回 gates 数组
    for (int i = 0; i < new_gate_count; i++) {
        gates[i] = sorted_gates[i];
    }
    gate_count = new_gate_count;  // 更新 gate_count

    
}

void print_row(int *values) {
    for (int i = 0; i < input_count; i++) {
        printf("%d ", values[input_vars[i]]);
    }
    printf("|");
    for (int i = 0; i < output_count; i++) {
        printf(" %d", values[output_vars[i]]);
    }
    printf("\n");
  

}

int evaluate_gate(struct gate *g, int *values) {
    switch (g->kind) {
        case AND:  
            values[g->params[2]] = values[g->params[0]] & values[g->params[1]];
            return 0;
        case OR: 
            values[g->params[2]] = values[g->params[0]] | values[g->params[1]];
            return 0;
        case NOT: 
            values[g->params[1]] = !values[g->params[0]];
            return 0;
        case NAND:
            values[g->params[2]] = !(values[g->params[0]] & values[g->params[1]]);
            return 0;
        case NOR:
            values[g->params[2]] = !(values[g->params[0]] | values[g->params[1]]);
            return 0;
        case XOR:
            values[g->params[2]] = values[g->params[0]] ^ values[g->params[1]];
            return 0;
        case PASS:
            values[g->params[1]] = values[g->params[0]];
            return 0;
        case DECODER: {
            int index = 0;
            for (int i = 0; i < g->size; i++) {
                index = (index << 1) | values[g->params[i]];
            }
            for (int i = 0; i < (1 << g->size); i++) {
                values[g->params[g->size + i]] = (i == index) ? 1 : 0;
            }
            return 0; // DECODER 的返回值无意义
        }
        case MULTIPLEXER: {
            int index = 0;
            for (int i = 0; i < g->size; i++) {
                index = (index << 1) | values[g->params[(1 << g->size) + i]];
            }
            values[g->params[(1 << g->size) + g->size]] = values[g->params[index]];
            return 0;
        }
        default: return 0;
    }
}

void generate_truth_table(int *values) {
    int sorted_order[MAX_GATES];
    topological_sort(sorted_order);
    reorder_gates(sorted_order); // 按拓扑排序重排 gates 数组

    int rows = 1 << input_count; //2^n即所有可能的输入组合数
    for (int row = 0; row < rows; row++) {
        for (int i = 0; i < input_count; i++) {
            values[input_vars[input_count - 1 - i]] = (row & (1 << i)) != 0;
        }
        
        for (int i = 0; i < gate_count; i++) {
            evaluate_gate(&gates[i], values);
        }

        print_row(values);
    }
}

int main(int argc, char *argv[]) {
    
    FILE *file = fopen(argv[1], "r");
    if (!file) {
        perror("Error opening file");
        return 1;
    }

    char token[17];
    while (fscanf(file, " %16s", token) == 1) {
        if (strcmp(token, "INPUT") == 0) {
            fscanf(file, "%d", &input_count);
            for (int i = 0; i < input_count; i++) {
                fscanf(file, " %16s", token);
                input_vars[i] = get_var_index(token);
            }
        } else if (strcmp(token, "OUTPUT") == 0) {
            fscanf(file, "%d", &output_count);
            for (int i = 0; i < output_count; i++) {
                fscanf(file, " %16s", token);
                output_vars[i] = get_var_index(token);
            }
        } else {
            struct gate g;
            if (strcmp(token, "AND") == 0) g.kind = AND;
            else if (strcmp(token, "OR") == 0) g.kind = OR;
            else if (strcmp(token, "NOT") == 0) g.kind = NOT;
            else if (strcmp(token, "NAND") == 0) g.kind = NAND;
            else if (strcmp(token, "NOR") == 0) g.kind = NOR;
            else if (strcmp(token, "XOR") == 0) g.kind = XOR;
            else if (strcmp(token, "PASS") == 0) g.kind = PASS;
            else if (strcmp(token, "DECODER") == 0) g.kind = DECODER;
            else if (strcmp(token, "MULTIPLEXER") == 0) g.kind = MULTIPLEXER;

            int param_count = (g.kind == DECODER || g.kind == MULTIPLEXER) ? 1 : 3;
            if (g.kind == DECODER || g.kind == MULTIPLEXER) {
                fscanf(file, "%d", &g.size); // 读取规模 n
            }
            else{g.size = 0;}

            if (g.kind == DECODER) {
                param_count = g.size + (1 << g.size); // 输入 + 输出
            } 
            else if (g.kind == MULTIPLEXER) {
                param_count = (1 << g.size) + g.size + 1; // 普通输入 + 选择器 + 输出
            }
            else if (g.kind == NOT|| g.kind == PASS) {param_count = 2;}

            g.params = malloc(param_count * sizeof(int));
            

            for (int i = 0; i < param_count; i++) {
                fscanf(file, " %16s", token);
                g.params[i] = get_var_index(token);
            }
            gates[gate_count++] = g;

            //构建依赖关系
            if (g.kind == DECODER) {
                for (int i = 0; i < g.size; i++) {
                    for (int j = g.size; j < g.size + (1 << g.size); j++) {
                        if(g.params[i]< MAX_VARS - 2){
                            add_dependency(g.params[i], g.params[j]);
                        }
                    }
                }
            } else if (g.kind == MULTIPLEXER) {
                int total_inputs = (1 << g.size);
                for (int i = 0; i < total_inputs; i++) {
                    if(g.params[i]< MAX_VARS - 2){
                        add_dependency(g.params[i], g.params[(1 << g.size) + g.size ]);
                    }
                }
                for (int i = total_inputs; i < total_inputs + g.size; i++) {
                    if(g.params[i]< MAX_VARS - 2){
                        add_dependency(g.params[i], g.params[(1 << g.size) + g.size ]);
                    }    
                }
            } else if (g.kind == NOT || g.kind == PASS) {
                if(g.params[0]< MAX_VARS - 2){
                    add_dependency(g.params[0], g.params[1]);
                }
            } else {
                for (int i = 0; i < param_count - 1; i++) {
                    if(g.params[i]< MAX_VARS - 2){
                        add_dependency(g.params[i], g.params[2]);
                    }
                }
            }
        }
    }
    fclose(file);

    int values[MAX_VARS] = {0};
    values[MAX_VARS - 2] = 0; // 常量 0
    values[MAX_VARS - 1] = 1; // 常量 1
    generate_truth_table(values);

    for (int i = 0; i < gate_count; i++) {
        free(gates[i].params);
    }

    return 0;
}
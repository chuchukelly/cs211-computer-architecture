#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// 定义二叉搜索树节点结构
struct Node {
    int data;
    struct Node *left;
    struct Node *right;
};

// 创建一个新节点
struct Node* create_node(int value) {
    struct Node *new_node = (struct Node *)malloc(sizeof(struct Node));
    new_node->data = value;
    new_node->left = NULL;
    new_node->right = NULL;
    return new_node;
}
// i
struct Node* insert(struct Node *root, int value) {
    if (root == NULL) {
        printf("inserted\n");
        return create_node(value);
    }

    if (value < root->data) {
        root->left = insert(root->left, value);
    } else if (value > root->data) {
        root->right = insert(root->right, value);
    } else {
        printf("not inserted\n");
    }
    return root;
}
//s
void search(struct Node *root, int value) {
    if (root == NULL) {
        printf("absent\n");
        return;
    }
    if (value == root->data) {
        printf("present\n");
    } else if (value < root->data) {
        search(root->left, value);
    } else {
        search(root->right, value);
    }
}
//d
struct Node* delete(struct Node *root, int value) {
    if (root == NULL) { // 检查是否为空指针
        printf("absent\n");
        return NULL;
    }
    if (value < root->data) {
        root->left = delete(root->left, value);
    } 
    else if (value > root->data) {
        root->right = delete(root->right, value);
    } 
    else {
        if (root->left == NULL && root->right == NULL) { // 无子节点
            printf("deleted\n");
            free(root);
            return NULL;
            }
        else if(root->left == NULL) {
            struct Node *temp = root->right;
            printf("deleted\n");
            free(root);
            return temp;
        }
        else if(root->right == NULL) {
            struct Node *temp = root->left;
            printf("deleted\n");
            free(root);
            return temp;
        }
        /*else {
            while (root->left->right != NULL) {
                root->left = root->left->right;
            }
            struct Node *temp = root->left;
            root->data = temp->data;
            root->right = delete(root->right, temp->data);
        }*/
        else { // 有两个子节点
            // 找到左子树中的最大节点
            struct Node *maxNode = root->left;
            while (maxNode->right != NULL) {
                maxNode = maxNode->right;
            }
            // 用最大节点的值替换当前节点
            root->data = maxNode->data;
            // 在左子树中删除最大节点
            root->left = delete(root->left, maxNode->data);
        }
    }
    return root;
}

//p
void print_tree(struct Node *root) {
    if (root == NULL) {
        return;
    }
    printf("(");
    print_tree(root->left);
    printf("%d", root->data);
    print_tree(root->right);
    printf(")");
}

void free_tree(struct Node *root) {
    if (root == NULL) {
        return;
    }
    free_tree(root->left);
    free_tree(root->right);
    free(root);
}

int main(int argc, char *argv[]) {
    struct Node *root = NULL;
    char command;
    int value;

    while (scanf(" %c", &command) == 1) {
        if (command == 'i') {        // i插入
            scanf("%d", &value);
            root = insert(root, value);
        } else if (command == 's') { // s搜索
            scanf("%d", &value);
            search(root, value);
        } else if (command == 'd') { // d删除
            scanf("%d", &value);
            root = delete(root, value);
        } else if (command == 'p') { // p打印
            print_tree(root);
            printf("\n");
        } else {
            break;
        }
    }

    // 程序结束前释放树内存
    free_tree(root);
    return 0;
}
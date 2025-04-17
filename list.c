#include <stdio.h>
#include <stdlib.h>

// 定义链表节点结构
struct Node {
    int data;
    struct Node *next;
};

// 插入一个节点到有序链表
void insert(struct Node **head, int value) {
    struct Node *new_node = (struct Node *)malloc(sizeof(struct Node));
    new_node->data = value;
    new_node->next = NULL;

    if (*head == NULL || (*head)->data > value) {
        // 在链表头部插入
        new_node->next = *head;
        *head = new_node;
    } else {
        // 查找插入位置
        struct Node *current = *head;
        while (current->next != NULL && current->next->data < value) {
            current = current->next;
        }
        // 如果已经存在，则不插入
        if (current->data == value || (current->next != NULL && current->next->data == value)) {
            free(new_node);
            return;
        }
        new_node->next = current->next;
        current->next = new_node;
    }
}

// 删除链表中的节点
void delete(struct Node **head, int value) {
    if (*head == NULL) return;  // 如果链表为空

    struct Node *current = *head;
    struct Node *prev = NULL;

    // 如果要删除的节点在头部
    if (current->data == value) {
        *head = current->next;
        free(current);
        return;
    }

    // 查找要删除的节点
    while (current != NULL && current->data != value) {
        prev = current;
        current = current->next;
    }

    // 如果找到了要删除的节点
    if (current != NULL) {
        prev->next = current->next;
        free(current);
    }
}

// 计算链表长度并打印链表内容
void print_list(struct Node *head) {
    struct Node *current = head;
    int count = 0;

    // 计算节点数量
    while (current != NULL) {
        count++;
        current = current->next;
    }

    // 打印链表长度
    printf("%d :", count);

    // 打印链表元素
    current = head;
    while (current != NULL) {
        printf(" %d", current->data);
        current = current->next;
    }
    printf("\n");
}

// 释放链表中的所有节点
void free_list(struct Node *head) {
    struct Node *current = head;
    while (current != NULL) {
        struct Node *next_node = current->next;
        free(current);
        current = next_node;
    }
}

int main() {
    struct Node *head = NULL;  // 初始化链表为空
    char command;
    int value;

    // 从标准输入中读取指令
    while (scanf(" %c %d", &command, &value) == 2) {
        if (command == 'i') {
            insert(&head, value);  // 插入
        } else if (command == 'd') {
            delete(&head, value);  // 删除
        }
        print_list(head);  // 每次操作后打印链表
    }

    // 释放链表占用的内存
    free_list(head);

    return 0;
}

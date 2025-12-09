#include <stdio.h>

int main() {
    // for incremento
    for (int n_pos = 0; n_pos <= 11; n_pos++) {
        printf("%d\n", n_pos);
    }

    // for decremento
    for (int n_neg = 10; n_neg > 0; n_neg--) {
        printf("%d\n", n_neg);
    }

    // while incremento
    int i_pos = 0;
    while (i_pos <= 10) {
        printf("oii Aprígio!!\n");
        i_pos = i_pos + 1;
    }

    // while decremento
    int i_neg = 10;
    while (i_neg >= 0) {
        printf("Aprígio na área!\n");
        i_neg = i_neg - 1;
    }

    // push
    int lista1[20] = {1,2,3,4,5,6,7,8,9}; // criando lista com espaço extra
    int tamanho = 9; // tamanho atual da lista
    printf("[1,2,3,4,5,6,7,8,9]\n");
    lista1[tamanho] = 10; // adicionando 10 ao final da lista
    tamanho++;

    // pop
    printf("[1,2,3,4,5,6,7,8,9,10]\n");
    tamanho--; // removendo o ultimo item da fila

    // imprimindo lista após pop
    printf("[");
    for (int i = 0; i < tamanho; i++) {
        printf("%d", lista1[i]);
        if (i < tamanho - 1) printf(",");
    }
    printf("]\n");

    // adicionando um valor no primeiro indice
    for (int i = tamanho; i > 0; i--) {
        lista1[i] = lista1[i - 1];
    }
    lista1[0] = 50;
    tamanho++;

    // imprimindo lista
    printf("[");
    for (int i = 0; i < tamanho; i++) {
        printf("%d", lista1[i]);
        if (i < tamanho - 1) printf(",");
    }
    printf("]\n");

    // removendo valor do primeiro indice
    for (int i = 0; i < tamanho - 1; i++) {
        lista1[i] = lista1[i + 1];
    }
    tamanho--;

    // imprimindo lista
    printf("[");
    for (int i = 0; i < tamanho; i++) {
        printf("%d", lista1[i]);
        if (i < tamanho - 1) printf(",");
    }
    printf("]\n");

    // enderecamento direto
    int idade = 14;
    printf("%d\n", idade);

    // enderecamento indireto
    int a = 10;
    int b = 20;
    int c = a;
    printf("%d\n", c);

    // trocar indices de uma lista
    int lista2[5] = {50, 40, 30, 20, 10};
    printf("[50,40,30,20,10]\n");
    int temp = lista2[3];
    lista2[3] = lista2[4];
    lista2[4] = temp;
    printf("[50,40,30,10,20]\n");

    return 0;
}

#include <stdio.h>

int main() {

    // for incremento
    for (int n_pos = 0; n_pos <= 10; n_pos++) {
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
    int lista1[20] = {1,2,3,4,5,6,7,8,9};
    int tam1 = 9;

    printf("[1,2,3,4,5,6,7,8,9]\n");
    lista1[tam1] = 10; // adicionando 10 ao final da lista
    tam1++;

    // pop
    int lista2[20] = {1,2,3,4,5,6,7,8,9};
    int tam2 = 9;

    printf("[1,2,3,4,5,6,7,8,9]\n");
    tam2--; // removendo o ultimo item da fila

    printf("[");
    for (int i = 0; i < tam2; i++) {
        printf("%d", lista2[i]);
        if (i < tam2 - 1) printf(",");
    }
    printf("]\n");

    // adicionando um valor no primeiro indice
    int lista3[20] = {1,2,3,4,5,6,7,8,9};
    int tam3 = 9;

    for (int i = tam3; i > 0; i--) {
        lista3[i] = lista3[i - 1];
    }
    lista3[0] = 50;
    tam3++;

    printf("[");
    for (int i = 0; i < tam3; i++) {
        printf("%d", lista3[i]);
        if (i < tam3 - 1) printf(",");
    }
    printf("]\n");

    // removendo valor do primeiro indice
    int lista4[20] = {1,2,3,4,5,6,7,8,9};
    int tam4 = 9;

    for (int i = 0; i < tam4 - 1; i++) {
        lista4[i] = lista4[i + 1];
    }
    tam4--;

    printf("[");
    for (int i = 0; i < tam4; i++) {
        printf("%d", lista4[i]);
        if (i < tam4 - 1) printf(",");
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
    int lista5[5] = {50, 40, 30, 20, 10};
    printf("[50,40,30,20,10]\n");

    int temp = lista5[3];
    lista5[3] = lista5[4];
    lista5[4] = temp;

    printf("[50,40,30,10,20]\n");

    return 0;
}

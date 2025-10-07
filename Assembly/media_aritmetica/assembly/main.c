#include <stdio.h>

int main() {
    int n1, n2, n3, n4;
    float media;

    printf("Informe sua primeira nota: ");
    scanf("%d", &n1);

    printf("Informe sua segunda nota: ");
    scanf("%d", &n2);

    printf("Informe sua terceira nota: ");
    scanf("%d", &n3);

    printf("Informe sua quarta nota: ");
    scanf("%d", &n4);

    media = (n1 + n2 + n3 + n4) / 4.0;

    printf("A sua média é: %.2f\n", media);

    return 0;
}

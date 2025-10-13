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

    if (media > 6){
        printf("Situação: APROVADO\nMedia: %.2f", media);   
    }
    
    else if (media >= 4 && media < 6){
        printf("Situação: RECUPERAÇÃO\nMedia: %.2f", media);
    }
    else{
        printf("Situação: REPROVADO\nMedia: %.2f", media);
    }

    return 0;
}

#include <stdio.h>

int main(void) {
    int nombre;
    printf("Entrez un nombre pour afficher sa table de multiplication : ");
    scanf("%d", &nombre);
    table(nombre);
    return 0;
}

int table(int nombre) {
    if (nombre != 0) {
        for (int i = 1; i <= 10; i++) {
            printf("%d * %d = %d\n", nombre, i, nombre * i);
        }
    } else {
        printf("Le nombre doit être différent de zéro.\n");
    }
    return 0;
}
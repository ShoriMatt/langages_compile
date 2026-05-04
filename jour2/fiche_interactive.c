#include <stdio.h>

int main(void) {
    char prenom[30];
    int age;
    float moyenne;

    printf("Quel est ton prenom ? ");
    scanf("%29s", prenom);

    printf("Quel age as-tu ? ");
    scanf("%d", &age);

    printf("Quelle est ta note moyenne ? ");
    scanf("%f", &moyenne);

    printf("\n=== Fiche etudiant ===\n");
    printf("Prenom : %s\n", prenom);
    printf("Age : %d ans\n", age);
    printf("Moyenne : %.2f/20\n", moyenne);

    return 0;
}
#include <stdio.h>

int main(void) {
    char prenom[] = "Matthias";
    int age = 21;
    float taille = 1.82f;
    char initiale = 'M';

    printf("+-------------------------------+\n");
    printf("|       FICHE D'IDENTITE        |\n");
    printf("+-------------------------------+\n");
    printf("| Prenom   : %-18s |\n", prenom);
    printf("| Age      : %-2d ans             |\n", age);
    printf("| Taille   : %.2f m             |\n", taille);
    printf("| Initiale : %-18c |\n", initiale);
    printf("+-------------------------------+\n");
    printf("| Code de sortie : 0 (succes)   |\n");
    printf("+-------------------------------+\n");

    return 0;
}
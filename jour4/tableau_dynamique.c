#include <stdio.h>
#include <stdlib.h>

int main(void) {
    int n;

    printf("Combien d'entiers voulez-vous stocker ? ");
    scanf("%d", &n);

    if (n <= 0) {
        printf("Nombre invalide.\n");
        return 1;
    }

    // Allocation dynamique sur le heap
    int *tableau = (int *) malloc(n * sizeof(int));
    if (tableau == NULL) {
        printf("Echec d'allocation memoire.\n");
        return 1;
    }

    // Saisie des valeurs
    for (int i = 0; i < n; i++) {
        printf("Entier[%d] : ", i);
        scanf("%d", &tableau[i]);
    }

    // Affichage
    printf("\nValeurs saisies :\n");
    for (int i = 0; i < n; i++) {
        printf("  tableau[%d] = %d\n", i, tableau[i]);
    }

    // Calcul somme et moyenne
    long long somme = 0;
    for (int i = 0; i < n; i++) {
        somme += tableau[i];
    }
    double moyenne = (double) somme / n;

    printf("\nSomme   : %lld\n", somme);
    printf("Moyenne : %.2f\n", moyenne);

    // Liberation de la memoire
    free(tableau);
    tableau = NULL;

    return 0;
}

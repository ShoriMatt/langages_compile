#include <stdio.h>

int main(void) {
    int choix;
    double valeur;
    double resultat;

    printf("=== Convertisseur universel ===\n");
    printf("1. Kilometres -> Miles\n");
    printf("2. Kilogrammes -> Livres\n");
    printf("3. Celsius -> Fahrenheit\n");
    printf("4. Quitter\n");

    printf("Votre choix : ");
    scanf("%d", &choix);

    if (choix == 4) {
        printf("Au revoir !\n");
        return 0;
    }

    printf("Valeur a convertir : ");
    scanf("%lf", &valeur);

    if (choix == 1) {
        resultat = valeur * 0.621371;
        printf("%.2f km = %.2f miles\n", valeur, resultat);
    } else if (choix == 2) {
        resultat = valeur * 2.20462;
        printf("%.2f kg = %.2f livres\n", valeur, resultat);
    } else if (choix == 3) {
        resultat = valeur * 9.0 / 5.0 + 32.0;
        printf("%.2f C = %.2f F\n", valeur, resultat);
    } else {
        printf("Erreur : choix invalide.\n");
        return 1;
    }

    return 0;
}
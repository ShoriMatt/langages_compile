#include <stdio.h>

int main(void) {
    int choix;
    double valeur;
    double resultat;

    do {
        printf("\n=== Convertisseur universel ===\n");
        printf("1. Kilometres -> Miles\n");
        printf("2. Miles -> Kilometres\n");
        printf("3. Kilogrammes -> Livres\n");
        printf("4. Livres -> Kilogrammes\n");
        printf("5. Celsius -> Fahrenheit\n");
        printf("6. Fahrenheit -> Celsius\n");
        printf("7. Quitter\n");

        printf("Votre choix : ");
        scanf("%d", &choix);

        if (choix == 7) {
            printf("Au revoir !\n");
            return 0;
        }

        if (choix < 1 || choix > 7) {
            printf("Erreur : choix invalide.\n");
            return 1;
        }

        printf("Valeur a convertir : ");
        scanf("%lf", &valeur);

        if (choix == 1) {
            resultat = valeur * 0.621371;
            printf("%.2f km = %.2f miles\n", valeur, resultat);
        } else if (choix == 2) {
            resultat = valeur / 0.621371;
            printf("%.2f miles = %.2f km\n", valeur, resultat);
        } else if (choix == 3) {
            resultat = valeur * 2.20462;
            printf("%.2f kg = %.2f livres\n", valeur, resultat);
        } else if (choix == 4) {
            resultat = valeur / 2.20462;
            printf("%.2f livres = %.2f kg\n", valeur, resultat);
        } else if (choix == 5) {
            resultat = valeur * 9.0 / 5.0 + 32.0;
            printf("%.2f C = %.2f F\n", valeur, resultat);
        } else if (choix == 6) {
            resultat = (valeur - 32.0) * 5.0 / 9.0;
            printf("%.2f F = %.2f C\n", valeur, resultat);
        }

    } while (choix != 7);

    return 0;
}
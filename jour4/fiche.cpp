#include <iostream>
#include <string>

int main() {
    // Informations de l'etudiant
    std::string nom;
    std::string prenom;
    int age;
    std::string ville;
    std::string formation;

    std::cout << "=== Fiche etudiante interactive ===" << std::endl;

    std::cout << "Nom       : ";
    std::cin >> nom;

    std::cout << "Prenom    : ";
    std::cin >> prenom;

    std::cout << "Age       : ";
    std::cin >> age;

    // Vider le buffer avant getline
    std::cin.ignore();

    std::cout << "Ville     : ";
    std::getline(std::cin, ville);

    std::cout << "Formation : ";
    std::getline(std::cin, formation);

    // Affichage de la fiche
    std::cout << "\n--- Recapitulatif ---" << std::endl;
    std::cout << "Nom       : " << nom << std::endl;
    std::cout << "Prenom    : " << prenom << std::endl;
    std::cout << "Age       : " << age << " ans" << std::endl;
    std::cout << "Ville     : " << ville << std::endl;
    std::cout << "Formation : " << formation << std::endl;

    if (age >= 18) {
        std::cout << "Statut    : Majeur(e)" << std::endl;
    } else {
        std::cout << "Statut    : Mineur(e)" << std::endl;
    }

    return 0;
}

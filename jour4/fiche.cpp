#include <iostream>
#include <string>

int main() {
    std::string prenom;
    int age;
    float moyenne;

    std::cout << "Quel est ton prenom ? ";
    std::cin >> prenom;

    std::cout << "Quel age as-tu ? ";
    std::cin >> age;

    std::cout << "Quelle est ta note moyenne ? ";
    std::cin >> moyenne;

    std::cout << "\n=== Fiche etudiant ===" << std::endl;
    std::cout << "Prenom : " << prenom << std::endl;
    std::cout << "Age : " << age << " ans" << std::endl;
    std::cout << "Moyenne : " << std::fixed;
    std::cout.precision(2);
    std::cout << moyenne << "/20" << std::endl;

    return 0;
}

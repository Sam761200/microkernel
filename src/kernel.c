// Déclaration de kernel_main pour le bootloader
void kernel_main();

void terminal_init() {
    // Fonction simple pour initialiser l'écran (optionnelle)
}

void terminal_write(const char* str) {
    (void)str;  // Indiquer explicitement que 'str' n'est pas utilisé pour éviter l'avertissement
    // Implémentation future de l'écriture à l'écran
}


void kernel_main() {
    terminal_init();
    terminal_write("Welcome to the microkernel!");

    // Boucle infinie pour que le kernel reste actif
    while(1) {
        // Le kernel tourne indéfiniment ici
    }
}

section .multiboot
align 4
magic:      dd 0x1BADB002      ; Multiboot magic number
flags:      dd 0               ; Flags
checksum:   dd -(0x1BADB002 + 0) ; Checksum

section .text
global start
extern kernel_main

start:
    cli                         ; Désactiver les interruptions
    mov esp, 0x90000            ; Initialiser la pile
    call kernel_main            ; Appeler la fonction principale du kernel

hang:
    hlt                         ; Arrêter le processeur
    jmp hang                    ; Boucle infinie

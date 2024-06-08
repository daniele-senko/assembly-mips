.data
msg1: .asciiz "Digite o ano de nascimento da primeira pessoa: "
msg2: .asciiz "A primeira pessoa nasceu no ano de "
msg3: .asciiz "\nDigite o ano de nascimento da segunda pessoa: "
msg4: .asciiz "A segunda pessoa nasceu no ano de "
newline: .asciiz "\n"

.text
.globl main
main:
    # Pergunta pelo ano de nascimento da primeira pessoa
    li $v0, 4
    la $a0, msg1
    syscall

    # Lê o ano de nascimento da primeira pessoa
    li $v0, 5
    syscall
    move $t0, $v0  # Armazena o ano de nascimento da primeira pessoa em $t0

    # Imprime o resultado para a primeira pessoa
    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    # Pergunta pelo ano de nascimento da segunda pessoa
    li $v0, 4
    la $a0, msg3
    syscall

    # Lê o ano de nascimento da segunda pessoa
    li $v0, 5
    syscall
    move $t1, $v0  # Armazena o ano de nascimento da segunda pessoa em $t1

    # Imprime o resultado para a segunda pessoa
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    # Encerrar o programa
    li $v0, 10
    syscall

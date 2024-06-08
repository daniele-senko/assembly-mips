    .data
prompt1: .asciiz "Digite o primeiro n�mero: "
prompt2: .asciiz "Digite o segundo n�mero: "
prompt3: .asciiz "Digite o terceiro n�mero: "
output:  .asciiz "O n�mero digitado foi: "
newline: .asciiz "\n"

    .text
    .globl main

main:
    # o primeiro n�mero
    li $v0, 4
    la $a0, prompt1
    syscall

    # Ler o primeiro n�mero
    li $v0, 5
    syscall
    move $s0, $v0 # Armazenar o primeiro n�mero em $s0

    # o segundo n�mero
    li $v0, 4
    la $a0, prompt2
    syscall

    # Ler o segundo n�mero
    li $v0, 5
    syscall
    move $s1, $v0 # Armazenar o segundo n�mero em $s1

    # Somar os dois n�meros
    add $s2, $s0, $s1 # $s2 = $s0 + $s1

    # o terceiro n�mero
    li $v0, 4
    la $a0, prompt3
    syscall

    # Ler o terceiro n�mero
    li $v0, 5
    syscall
    move $s3, $v0 # Armazenar o terceiro n�mero em $s3

    # Subtrair o terceiro n�mero da soma dos dois primeiros
    sub $s2, $s2, $s3 # $s2 = $s2 - $s3

    # Imprimir o resultado
    li $v0, 4
    la $a0, output
    syscall

    # Imprimir o valor resultante
    move $a0, $s2
    li $v0, 1
    syscall

    # Imprimir uma nova linha
    li $v0, 4
    la $a0, newline
    syscall

    # Sair do programa
    li $v0, 10
    syscall

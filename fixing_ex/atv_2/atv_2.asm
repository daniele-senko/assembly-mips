    .data
prompt1: .asciiz "Digite o primeiro número: "
prompt2: .asciiz "Digite o segundo número: "
prompt3: .asciiz "Digite o terceiro número: "
output:  .asciiz "O número digitado foi: "
newline: .asciiz "\n"

    .text
    .globl main

main:
    # o primeiro número
    li $v0, 4
    la $a0, prompt1
    syscall

    # Ler o primeiro número
    li $v0, 5
    syscall
    move $s0, $v0 # Armazenar o primeiro número em $s0

    # o segundo número
    li $v0, 4
    la $a0, prompt2
    syscall

    # Ler o segundo número
    li $v0, 5
    syscall
    move $s1, $v0 # Armazenar o segundo número em $s1

    # Somar os dois números
    add $s2, $s0, $s1 # $s2 = $s0 + $s1

    # o terceiro número
    li $v0, 4
    la $a0, prompt3
    syscall

    # Ler o terceiro número
    li $v0, 5
    syscall
    move $s3, $v0 # Armazenar o terceiro número em $s3

    # Subtrair o terceiro número da soma dos dois primeiros
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

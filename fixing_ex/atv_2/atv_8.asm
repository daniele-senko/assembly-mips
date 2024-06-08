.data
msg1: .asciiz "Digite o primeiro número da multiplicação: "
msg2: .asciiz "Digite o segundo número da multiplicação: "
msg3: .asciiz "Digite o número a ser subtraído da multiplicação: "
msg4: .asciiz "O resultado da expressão é: "
newline: .asciiz "\n"

.text
.globl main
main:
    # Pergunta pelo primeiro número da multiplicação
    li $v0, 4
    la $a0, msg1
    syscall

    # Lê o primeiro número
    li $v0, 5
    syscall
    move $t0, $v0  # Armazena o primeiro número em $t0

    # Pergunta pelo segundo número da multiplicação
    li $v0, 4
    la $a0, msg2
    syscall

    # Lê o segundo número
    li $v0, 5
    syscall
    move $t1, $v0  # Armazena o segundo número em $t1

    # Realiza a multiplicação
    mul $t2, $t0, $t1  # $t2 = $t0 * $t1

    # Pergunta pelo número a ser subtraído da multiplicação
    li $v0, 4
    la $a0, msg3
    syscall

    # Lê o número a ser subtraído
    li $v0, 5
    syscall
    move $t3, $v0  # Armazena o número em $t3

    # Realiza a subtração
    sub $t4, $t2, $t3  # $t4 = $t2 - $t3

    # Imprime o resultado
    li $v0, 4
    la $a0, msg4
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    # Encerrar o programa
    li $v0, 10
    syscall

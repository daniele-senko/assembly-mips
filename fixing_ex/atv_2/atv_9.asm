.data
msg1: .asciiz "Digite o primeiro número da soma: "
msg2: .asciiz "Digite o segundo número da soma: "
msg3: .asciiz "Digite o número a ser multiplicado da soma: "
msg4: .asciiz "Digite o número a ser subtraído da multiplicação: "
msg5: .asciiz "O resultado da expressão é: "
newline: .asciiz "\n"

.text
.globl main
main:
    # Pergunta pelo primeiro número da soma
    li $v0, 4
    la $a0, msg1
    syscall

    # Lê o primeiro número
    li $v0, 5
    syscall
    move $t0, $v0  # Armazena o primeiro número em $t0

    # Pergunta pelo segundo número da soma
    li $v0, 4
    la $a0, msg2
    syscall

    # Lê o segundo número
    li $v0, 5
    syscall
    move $t1, $v0  # Armazena o segundo número em $t1

    # Calcula a soma dos dois números
    add $t2, $t0, $t1  # $t2 = $t0 + $t1

    # Pergunta pelo número a ser multiplicado da soma
    li $v0, 4
    la $a0, msg3
    syscall

    # Lê o número a ser multiplicado
    li $v0, 5
    syscall
    move $t3, $v0  # Armazena o número em $t3

    # Realiza a multiplicação
    mul $t4, $t2, $t3  # $t4 = $t2 * $t3

    # Pergunta pelo número a ser subtraído da multiplicação
    li $v0, 4
    la $a0, msg4
    syscall

    # Lê o número a ser subtraído
    li $v0, 5
    syscall
    move $t5, $v0  # Armazena o número em $t5

    # Realiza a subtração
    sub $t6, $t4, $t5  # $t6 = $t4 - $t5

    # Imprime o resultado
    li $v0, 4
    la $a0, msg5
    syscall

    li $v0, 1
    move $a0, $t6
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    # Encerrar o programa
    li $v0, 10
    syscall

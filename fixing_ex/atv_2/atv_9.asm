.data
msg1: .asciiz "Digite o primeiro n�mero da soma: "
msg2: .asciiz "Digite o segundo n�mero da soma: "
msg3: .asciiz "Digite o n�mero a ser multiplicado da soma: "
msg4: .asciiz "Digite o n�mero a ser subtra�do da multiplica��o: "
msg5: .asciiz "O resultado da express�o �: "
newline: .asciiz "\n"

.text
.globl main
main:
    # Pergunta pelo primeiro n�mero da soma
    li $v0, 4
    la $a0, msg1
    syscall

    # L� o primeiro n�mero
    li $v0, 5
    syscall
    move $t0, $v0  # Armazena o primeiro n�mero em $t0

    # Pergunta pelo segundo n�mero da soma
    li $v0, 4
    la $a0, msg2
    syscall

    # L� o segundo n�mero
    li $v0, 5
    syscall
    move $t1, $v0  # Armazena o segundo n�mero em $t1

    # Calcula a soma dos dois n�meros
    add $t2, $t0, $t1  # $t2 = $t0 + $t1

    # Pergunta pelo n�mero a ser multiplicado da soma
    li $v0, 4
    la $a0, msg3
    syscall

    # L� o n�mero a ser multiplicado
    li $v0, 5
    syscall
    move $t3, $v0  # Armazena o n�mero em $t3

    # Realiza a multiplica��o
    mul $t4, $t2, $t3  # $t4 = $t2 * $t3

    # Pergunta pelo n�mero a ser subtra�do da multiplica��o
    li $v0, 4
    la $a0, msg4
    syscall

    # L� o n�mero a ser subtra�do
    li $v0, 5
    syscall
    move $t5, $v0  # Armazena o n�mero em $t5

    # Realiza a subtra��o
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

.data
msg1: .asciiz "Digite o primeiro n�mero da multiplica��o: "
msg2: .asciiz "Digite o segundo n�mero da multiplica��o: "
msg3: .asciiz "Digite o n�mero a ser subtra�do da multiplica��o: "
msg4: .asciiz "O resultado da express�o �: "
newline: .asciiz "\n"

.text
.globl main
main:
    # Pergunta pelo primeiro n�mero da multiplica��o
    li $v0, 4
    la $a0, msg1
    syscall

    # L� o primeiro n�mero
    li $v0, 5
    syscall
    move $t0, $v0  # Armazena o primeiro n�mero em $t0

    # Pergunta pelo segundo n�mero da multiplica��o
    li $v0, 4
    la $a0, msg2
    syscall

    # L� o segundo n�mero
    li $v0, 5
    syscall
    move $t1, $v0  # Armazena o segundo n�mero em $t1

    # Realiza a multiplica��o
    mul $t2, $t0, $t1  # $t2 = $t0 * $t1

    # Pergunta pelo n�mero a ser subtra�do da multiplica��o
    li $v0, 4
    la $a0, msg3
    syscall

    # L� o n�mero a ser subtra�do
    li $v0, 5
    syscall
    move $t3, $v0  # Armazena o n�mero em $t3

    # Realiza a subtra��o
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

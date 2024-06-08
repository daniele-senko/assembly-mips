.data
msg1: .asciiz "Digite o valor da camiseta: R$ "
msg2: .asciiz "Digite o valor entregue para a compra: R$ "
msg3: .asciiz "Muito obrigado, seu troco é de R$ "
newline: .asciiz "\n"

.text
.globl main
main:
    # Pergunta pelo valor da camiseta
    li $v0, 4
    la $a0, msg1
    syscall

    # Lê o valor da camiseta
    li $v0, 5
    syscall
    move $t0, $v0  # Armazena o valor da camiseta em $t0

    # Pergunta pelo valor entregue
    li $v0, 4
    la $a0, msg2
    syscall

    # Lê o valor entregue
    li $v0, 5
    syscall
    move $t1, $v0  # Armazena o valor entregue em $t1

    # Calcula o troco
    sub $t2, $t1, $t0  # $t2 = $t1 - $t0

    # Imprime a mensagem de agradecimento e o troco
    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    # Nova linha
    li $v0, 4
    la $a0, newline
    syscall

    # Encerrar o programa
    li $v0, 10
    syscall

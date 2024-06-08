.data
msg_compra: .asciiz "Digite o valor da compra: "
msg_entregue: .asciiz "Digite o valor entregue: "
msg_troco: .asciiz "Seu troco é: "
newline: .asciiz "\n"

.text
.globl main
main:
    # Pergunta pelo valor da compra
    li $v0, 4
    la $a0, msg_compra
    syscall

    # Lê o valor da compra
    li $v0, 6
    syscall
    mov.s $f4, $f0  # Armazena o valor da compra em $f4

    # Pergunta pelo valor entregue
    li $v0, 4
    la $a0, msg_entregue
    syscall

    # Lê o valor entregue
    li $v0, 6
    syscall
    mov.s $f6, $f0  # Armazena o valor entregue em $f6

    # Calcula o troco
    sub.s $f8, $f6, $f4  # Troco = Valor entregue - Valor da compra

    # Imprime a mensagem do troco
    li $v0, 4
    la $a0, msg_troco
    syscall

    # Imprime o troco
    li $v0, 2
    mov.s $f12, $f8
    syscall

    # Nova linha
    li $v0, 4
    la $a0, newline
    syscall

    # Encerrar o programa
    li $v0, 10
    syscall

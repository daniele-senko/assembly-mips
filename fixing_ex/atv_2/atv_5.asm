.data
msg1: .asciiz "O valor da carne mo�da �: "
msg2: .asciiz "O valor do cox�o mole �: "
msg3: .asciiz "O valor da picanha �: "
msg4: .asciiz "O valor da fraldinha �: "
newline: .asciiz "\n"
v1: .float 22.90
v2: .float 39.80
v3: .float 62.40
v4: .float 45.50

.text
.globl main
main:
    # Imprimir valor da carne mo�da
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 2
    lwc1 $f12, v1
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # Imprimir valor do cox�o mole
    li $v0, 4
    la $a0, msg2
    syscall
    li $v0, 2
    lwc1 $f12, v2
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # Imprimir valor da picanha
    li $v0, 4
    la $a0, msg3
    syscall
    li $v0, 2
    lwc1 $f12, v3
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # Imprimir valor da fraldinha
    li $v0, 4
    la $a0, msg4
    syscall
    li $v0, 2
    lwc1 $f12, v4
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # Encerrar o programa
    li $v0, 10
    syscall

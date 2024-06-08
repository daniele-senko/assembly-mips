.data
msg1: .asciiz "O valor da carne moída é: "
msg2: .asciiz "O valor do coxão mole é: "
msg3: .asciiz "O valor da picanha é: "
msg4: .asciiz "O valor da fraldinha é: "
newline: .asciiz "\n"
v1: .float 22.90
v2: .float 39.80
v3: .float 62.40
v4: .float 45.50

.text
.globl main
main:
    # Imprimir valor da carne moída
    li $v0, 4
    la $a0, msg1
    syscall
    li $v0, 2
    lwc1 $f12, v1
    syscall
    li $v0, 4
    la $a0, newline
    syscall

    # Imprimir valor do coxão mole
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

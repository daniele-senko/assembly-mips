.data
	telefone1: .asciiz "Digite o N° do primeiro telefone: "
	saida1: .asciiz "O número digitado foi: "
	telefone2: .asciiz "Digite o N° do segundo telefone: "
	saida2: .asciiz "O número digitado foi: "
	buffer1: .space 20  # espaço para armazenar o primeiro telefone
	buffer2: .space 20  # espaço para armazenar o segundo telefone

.text
	.globl main
	main:
	li $v0, 4
	la $a0, telefone1
	syscall

	li $v0, 8
	la $a0, buffer1
	li $a1, 20
	syscall

	li $v0, 4
	la $a0, saida1
	syscall

	li $v0, 4
	la $a0, buffer1
	syscall

	li $v0, 4
	la $a0, telefone2
	syscall

	li $v0, 8
	la $a0, buffer2
	li $a1, 20
	syscall

	li $v0, 4
	la $a0, saida2
	syscall

	li $v0, 4
	la $a0, buffer2
	syscall

	li $v0, 10
	syscall

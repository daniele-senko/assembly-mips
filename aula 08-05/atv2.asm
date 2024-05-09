.data 
	numero1: .asciiz "Digite o nº do primeiro telefone\n"
	saida1: .asciiz "o numero digitado foi...\n"
	numero2: .asciiz "Digite o nº do segundo telefone\n"
	saida2:.asciiz "numero digitado foi...\n"
	
.text 
	li $v0, 4 
	la $a0, numero1
	syscall 
	
	li $v0, 5 
	syscall 
	
	move $t0, $v0 
	
	li $v0, 4 
	la $a0, saida1 
	syscall 
	
	li $v0, 1  
	move $a0, $t0 
	syscall 
	
	li $v0, 4 
	la $a0, numero2
	syscall 
	
	li $v0, 5 
	syscall 
	
	move $t0, $v0
	
	li $v0, 4 
	la $a0, saida2
	syscall
	
	li $v0, 1 
	move $a0, $t0
	syscall 
	
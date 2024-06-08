 .data
	pergunta:.asciiz"Qual e seu nome? " 
	pergunta2:.asciiz"Qual o nome da sua rua? " 
	saudacao:.asciiz "Prazer "
 	afirmacao: .asciiz "Voce mora na rua: " 
 	
	nome: .space 50
 	endereco: .space 50
.text
	#impressao pergunta nome
 	li $v0,4
  	la $a0, pergunta 
	syscall
 
 	#leitura do nome
  	li $v0, 8 #comando para ler uma string
 	la $a0, nome 
	la $a1, 25 
	syscall
 
 	#impressao da pergunta endereco
 	li $v0, 4
 	la $a0, pergunta2 
	syscall

 	#leitura doendereco
	li $v0, 8
	la $a0, endereco 
 	la $a1, 25
	syscall
	 
 	#impressao da saudacao
 	li $v0, 4
 	la $a0, saudacao 
	syscall
 	
 	#impressao do nome
 	li $v0, 4
 	la $a0, nome 
	syscall
	
 	#impressao da afirmacao
 	li $v0, 4
 	la $a0, afirmacao 
	syscall
 	
 	#impressao do endereco
 	li $v0, 4
 	la $a0, endereco 
	syscall
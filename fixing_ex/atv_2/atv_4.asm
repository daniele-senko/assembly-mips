 .data
	pergunta:.asciiz"Login: " 
	pergunta2:.asciiz"Senha:  " 
	saudacao:.asciiz "Bem vindo(a) "
 	afirmacao: .asciiz "Sua senha é: " 
 	
	login: .space 50
 	senha: .space 50
.text
	#impressao pergunta login
 	li $v0,4
  	la $a0, pergunta 
	syscall
 
 	#leitura do login
  	li $v0, 8 #comando para ler uma string
 	la $a0, login 
	la $a1, 25 
	syscall
 
 	#impressao da pergunta senha
 	li $v0, 4
 	la $a0, pergunta2 
	syscall

 	#leitura da senha
	li $v0, 8
	la $a0, senha 
 	la $a1, 25
	syscall
	 
 	#impressao da saudacao
 	li $v0, 4
 	la $a0, saudacao 
	syscall
 	
 	#impressao do login
 	li $v0, 4
 	la $a0, login 
	syscall
	
 	#impressao da afirmacao
 	li $v0, 4
 	la $a0, afirmacao 
	syscall
 	
 	#impressao da senha
 	li $v0, 4
 	la $a0, senha 
	syscall
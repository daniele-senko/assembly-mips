.data
	saudacao: .asciiz  "Olá, por favor, digite sua idade" #primeira mensagem a ser mostrada
	saida: .asciiz "sua idade e: " #segunda mensagem
	
.text 
	li $v0, 4 #comando para imprimir
	la $a0, saudacao #comando para mover da memoria principa para o resgistrador a0
	syscall #imprimo a variavel saudaca o que esta no registrador a0
	
	li $v0, 5 #comando para ler um inteiro
	syscall #quando der enter o valor sera armazenado em v0
	
	move $t0, $v0 #movi o registrador v0 para t0 pois vou usar o v0 para chamar uma string abaixo
	
	li $v0, 4 #comando para imprimir uma string que agora esta sem nada
	la $a0, saida #comando para mover da memoria principal para o registrador a0 
	syscall #imprimo a variavel saudacao que esta no registrador a0
	
	li $v0, 1 #comando para imprimir um inteiro 
	move $a0, $t0 #movi o registrador v0 para t0 pois vou usar o v0 para chamar um numero inteiro abaixo 
	syscall #imprimo o valor inteiro 
	
	
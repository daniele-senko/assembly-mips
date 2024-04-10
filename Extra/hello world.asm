.data
	#área para dados na memória principal
	msg: .asciiz "Olá, mundo!" #mensagem a ser exibida para o usuário

.text

	#área para instruções de programa
	
	li $v0, 4 #instruções para impressão de String
	la $a0, msg #indicar o endereço que está a mensagem
	syscall #imprima
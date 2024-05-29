.data 
	num1: .float 33.254 #numero do tipo float atribuiado a variável num1
	
.text 

	li $v0, 2 #sistema, prepara para imprimir um float
	lwc1 $f12, num1 #no caso dos float, os registradores estão no coprocessador 1(cp1)
	
	#sempre devemos colocar o float em $f12 ou o valor correto não é impresso
	
	syscall
	li $v0, 10 #comando para finalizar o programa
	syscall
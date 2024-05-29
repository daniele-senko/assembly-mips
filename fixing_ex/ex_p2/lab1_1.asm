.text 
	#inicializando os valores
	li $t0, 45 #registrar em $t0 o n 45
	li $t1, 12 #registrar em $t1 o n 12
	li $t2, 30 #registrar em $t2 o n 30
	
	#soma 45 + 12 e armazena em $t3
	add $t3, $t0, $t1
	
	#subtrai $t3 (soma) - $t2, o resultado final em $t4
	sub $t4, $t3, $t2
	
	
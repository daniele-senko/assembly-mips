.data
msg1: .asciiz "Digite o ano de nascimento da primeira pessoa: "
msg2: .asciiz "Digite o ano de nascimento da segunda pessoa: " 
msg3: .asciiz "A primeira pessoa nasceu no ano de "
msg4: .asciiz "A segunda pessoa nasceu no ano de "
newline: .asciiz "\n"

.text
    # Impressão da msg1
    li $v0, 4             #imprime da string
    la $a0, msg1          # Carrega o endereço de msg1 em $a0
    syscall               # Chama o sistema para imprimir a string

    # Leitura do ano de nascimento da primeira pessoa
    li $v0, 5             # le o inteiro
    syscall               # Chama o sistema para ler um inteiro
    move $t0, $v0         # Move o valor lido para $t0

    # Impressão da msg2
    li $v0, 4             #imprime da string
    la $a0, msg2          # Carrega o endereço de msg2 em $a0
    syscall               # Chama o sistema para imprimir a string

    # Leitura do ano de nascimento da segunda pessoa
    li $v0, 5             # le o inteiro
    syscall               # Chama o sistema para ler um inteiro
    move $t1, $v0         # Move o valor lido para $t1

    # Impressão da msg3
    li $v0, 4             #imprime da string
    la $a0, msg3          # Carrega o endereço de msg3 em $a0
    syscall               # Chama o sistema para imprimir a string

    # Impressão do ano de nascimento da primeira pessoa
    move $a0, $t0         # Move o ano de nascimento para $a0
    li $v0, 1             # Código de syscall para print_int
    syscall               # Chama o sistema para imprimir o inteiro

    # Impressão de nova linha
    li $v0, 4             #imprime da string
    la $a0, newline       # Carrega o endereço da nova linha em $a0
    syscall               # Chama o sistema para imprimir a nova linha

    # Impressão da msg4
    li $v0, 4             #imprime da string
    la $a0, msg4          # Carrega o endereço de msg4 em $a0
    syscall               # Chama o sistema para imprimir a string

    # Impressão do ano de nascimento da segunda pessoa
    move $a0, $t1         # Move o ano de nascimento para $a0
    li $v0, 1             # Código de syscall para print_int
    syscall               # Chama o sistema para imprimir o inteiro

    # Impressão de nova linha
    li $v0, 4             #imprime da string
    la $a0, newline       # Carrega o endereço da nova linha em $a0
    syscall               # Chama o sistema para imprimir a nova linha

    # Encerramento do programa
    li $v0, 10            # Código de syscall para exit
    syscall               # Chama o sistema para encerrar o programa

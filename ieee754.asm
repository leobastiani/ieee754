#######################################################
# Trabalho 1 de ORG
#######################################################





#######################################################
# Diretivas
#######################################################

.data # diretiva para inicio do seg de dados
	# bytes do n�mero bin�rio
	floatIEEE754: .space 32 # 32 bytes

	# n�mero que diz se o primeiro byte � um
	primeiroUmRestoZero: .word 0x80000000
	

.text # diretiva para inicio do segmento de texto


.globl main # diretiva para main







#######################################################
# Main program
#######################################################

main: # rotulo para ponto de entrada no processo




	#######################################################
	# aqui o programa deve chamar a fun��o de bem-vindo
	# ler as entradas do teclado e trata-las
	# em seguida deve chamar a fun��o floatToBinary e printBinHex
	# parte do F�bio
	#######################################################
	li $a0, 1 # $a0 = 1
	li $a1, 131 # $a1 = 131
	# n�mero 1.131
	jal floatToBinary


	li $v0, 10 # $vo = 10 cod para exit
	syscall # chamada de sistema, fim do programa








#######################################################
# Fun��o que converte float em bin�rio na mem�ria
# Parametros:
#    - $a0: parte inteira do n�mero
#    - $a1: parte fracion�ria do n�mero
#
# Retorno:
#    - floatIEEE754: cada byte correspodenr� ao
# n�mero 0 e 1
#######################################################

floatToBinary:
	

	###
	# Caso se ele for zero
	###
	# seta todos os bytes para zero
	li $t0, 0 # $t0 = 0
	# come�a do primeiro bit
	# vai at� 32
	li $t1, 32 # $t1 = 32

	loopSetaTodosZero:
		la $t3, floatIEEE754 # t3 ser� o byte q eu vou setar
		add $t3, $t3, $t0 # $t3 = $t3 + $t0
		sb $zero, 0($t3) # Memory[$t3 + 0] = $zero
		
		# incrementa t0
		addi $t0, $t0, 1 # $t0 = $t0 + 1

		# se t0 != t1, volta para seta todos Zero
		bne $t0, $t1, loopSetaTodosZero

	# caso especial, se for igual a zero
	bne $a0, $a1, naoEhZero
	bne $a0, $a1, naoEhZero
	# retorna a fun��o
	jr $ra


	###
	# Caso se n�o for zero
	###
	naoEhZero:

	tratarPartInt:
		# se a parte inteira � zero, j� pula pra partIntTratada
		beqz $a0, partIntTratada # ($a0 == 0) => partIntTratada

		# setando os bits da parte inteira

		# come�a setando os bits de floatIEEE754 de acordo com os bits do n�mero
		# come�a setando pelo n�mero inteiro
		# t0 � a parte inteira
		# t1 � a parte fracion�ria
		move $t0, $a0 # $t0 = $a0
		move $t1, $a1 # $t1 = $a1
		# vai dando shift at� o primeiro bit ser um
		# t3 ter� o valor para se fazer and
		lw $t3, primeiroUmRestoZero # $t3 = 0x80000000
		shiftAtePrimeiroUm:
			# t4 ir� dizer se o n�mero j� foi tratado
			and $t4, $t0, $t3 # $t4 = $t0 & $t3
			seq $t4, $t4, $t3 # $t4 = ($t4 == $t3)
			# se t4 � um (n�o for zero), j� pode sair
			bne $t4, $zero, partIntTratada # ($t4 != $zero) => partIntTratada

			# o n�mero � do tipo 0000100010..., devemos dar um shift para esquerda
			sll $t0, $t0, 1 # $t0 = $t0 << 1
			# volta para o loop
			j shiftAtePrimeiroUm


		partIntTratada:
			# se for zero, n�o preciso tratar
			beqz $a1, partIntFracTratada # ($a1 == 0) => partIntFracTratada

			# $t3 ser� um n�mero da forma 10 ^ x
			# $t3 deve ser > $a1
			# $t4 � 10 pq n�o tem mult immediate
			li $t4, 10 # $t4 = 10
			# come�a valendo 1
			li $t3, 1 # $t3 = 1
			loop10ElevadoX:
				bge $t3, $a1, t3EhMaiorA1 # ($t3 >= $a1) => t3EhMaiorA1

				# se t3 n�o for maior do que a1
				# multiplica t3 por 10
				mul $t3, $t3, $t4 # $t3 = $t3 * 10
				j loop10ElevadoX


			t3EhMaiorA1:
				# TODO!!


		partIntFracTratada:




	jr $ra







printBinHex:
	#######################################################
	# Aqui o programa deve obter
	# os n�meros bin�rios na sequencia que est�o na mem�ria
	# a partir do endere�o floatIEEE754, deve imprimir o
	# o n�mero no formato bin�rio e no formato hexadecimal
	# parte do Thiago
	#
	# deve ser chamado com jal
	########################################################

	jr $ra
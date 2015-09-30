#######################################################
# Trabalho 1 de ORG
#######################################################





#######################################################
# Diretivas
#######################################################

.data # diretiva para inicio do seg de dados

	# n�mero que diz se o primeiro byte � um
	primeiroUmRestoZero: .word 0x80000000
	# variavel que o vig�simo terceiro bit � 23
	bit23EhUm: .word 0x00400000
	bit24EhUm: .word 0x00800000
	bit25EhUm: .word 0x01000000

	numeroTeste: .float 13.1875
	

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
	l.s $f1, numeroTeste


	li $a0, 13
	li $a1, 1875
	li $a2, 10000

	jal floatToBinary


	li $v0, 10 # $vo = 10 cod para exit
	syscall # chamada de sistema, fim do programa








#######################################################
# Fun��o que converte float em bin�rio na mem�ria
# Parametros:
#    - $a0: parte inteira do n�mero
#    - $a1: parte fracion�ria do n�mero
#    - $a2: n�mero na forma 10 ^ X que divide $a1
#    - $a3: 0 se o n�mero for positivo, 1 se for negativo
#
#    - O n�mero ser�: ($a0 + $a1 / $a2)  *  ( -1 * $a3)
#
# Retorno:
#    - $v0: n�mero no padr�o IEEE 754
# n�mero 0 e 1
#######################################################

floatToBinary:
	# trabalha com t7, t8 e t9 ao inves de a0, a1 e a2
	move $t7, $a0 # $t7 = $a0
	move $t8, $a1 # $t8 = $a1
	move $t9, $a2 # $t9 = $a2

	# seta a resposta para zero
	li $v0, 0 # $v0 = 0

	# caso especial, se for igual a zero
	bne $t7, $zero, naoEhZero # ($t7 != $zero) -> naoEhZero
	bne $t8, $zero, naoEhZero # ($t8 != $zero) -> naoEhZero

	# � zero!!
	# retorna a fun��o
	jr $ra


	###
	# Caso se n�o for zero
	###
	naoEhZero:

	setaPrimeiroBit:
		# muito f�cil de setar
		move $t0, $a3 # $t0 = $a3
		sll $t0, $t0, 31 # $t0 = $t0 << 31
		# agrega o valor a v0
		or $v0, $v0, $t0 # $v0 = $v0 | $t0

		# se for positivo, n�o precisa multiplicar por -1
		beq $a3, $zero, ate24Bit # ($a3 == $zero) -> ate24Bit
		# se for negativo, multiplica por -1
		sub $t7, $zero, $t7 # $t7 = $zero - $t7


	# se $t8 for zero, seta $t9 para 10
	bne $t8, $zero, ate24Bit # ($t8 != $zero) -> ate24Bit
	# t8 == zero
	li $t9, 10 # $t9 = 10

	ate24Bit:
		# testa se a parte inteira � maior do que 23� bit setado em 1
		move $t0, $t7 # $t0 = $t7
		lw $t1, bit25EhUm # $t1 = Memory[bit25EhUm]
		lw $t2, bit24EhUm # $t2 = Memory[bit24EhUm]

		# se a parte inteira tiver o 25� bit ou mais definido
		bge $t0, $t1, devoFazerShift # ($t0 >= bit25EhUm) -> devoFazerShift


		# nesse caso aqui, n�o precisamos fazer o shift, e devemos concatenar com o n�mero fracionario
		move $t1, $t8 # $t1 = $t8

		loopConcatenaFracionario:
			sll $t0, $t0, 1 # $t0 = $t0 << 1
			# dobro o valor de t1
			sll $t1, $t1, 1 # $t1 = $t1 << 1
			blt $t1, $t9, setarParaZero # ($t1  < $t9) -> setarParaZero

			# devo setar um no primeiro bit de t0
			ori $t0, $t0, 1 # $t0 = $t0 | 1

			# agora, subtrai t9 de t1
			sub $t1, $t1, $t9 # $t1 = $t1 - $t9 (t1 - 10 ^ X)


			setarParaZero:
				# n�o preciso fazer nada com t0
				# apenas continuo o programa


			# condi��o de loop
			blt $t0, $t2, loopConcatenaFracionario # ($t0  < bit24EhUm) -> loopConcatenaFracionario

			# j� acabou de concatenar
			# se o resto for diferente de zero, devo somar um
			beq $t1, $zero, fracionarioConcatenado # (Resto == $zero) -> fracionarioConcatenado
			# resto n�o � zero
			addiu $t0, $t0, 1 # $t0 = $t0 + 1
			j fracionarioConcatenado



		devoFazerShift:
			# nesse caso, a parte fracion�ria n�o precisa ser considerada
			# devo fazer shift at� 25 pra frente ser 0
			lw $t1, bit25EhUm # $t1 = Memory[bit25EhUm]
			loopFazerShift:
				srl $t0, $t0, 1 # $t0 = $t0 >> 1
				bge $t0, $t1, loopFazerShift # ($t0 >= bit25EhUm) -> loopFazerShift


		fracionarioConcatenado:
			# remover o 24� bit
			lw $t2, bit24EhUm # $t2 = Memory[bit24EhUm]
			xor $t0, $t0, $t2 # $t0 = $t0 xor $t2

			# agrega v0 com t0
			or $v0, $v0, $t0 # $v0 = $v0 | $t0



		#######################################################
		# Nesse ponto, s� falta colocar o expoente em v0
		#######################################################
		


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

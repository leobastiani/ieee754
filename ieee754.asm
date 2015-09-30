#######################################################
# Trabalho 1 de ORG
#######################################################





#######################################################
# Diretivas
#######################################################

.data # diretiva para inicio do seg de dados

	# número que diz se o primeiro byte é um
	primeiroUmRestoZero: .word 0x80000000
	# variavel que o vigésimo terceiro bit é 23
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
	# aqui o programa deve chamar a função de bem-vindo
	# ler as entradas do teclado e trata-las
	# em seguida deve chamar a função floatToBinary e printBinHex
	# parte do Fábio
	#######################################################
	l.s $f1, numeroTeste


	li $a0, 13
	li $a1, 1875
	li $a2, 10000

	jal floatToBinary


	li $v0, 10 # $vo = 10 cod para exit
	syscall # chamada de sistema, fim do programa








#######################################################
# Função que converte float em binário na memória
# Parametros:
#    - $a0: parte inteira do número
#    - $a1: parte fracionária do número
#    - $a2: número na forma 10 ^ X que divide $a1
#    - $a3: 0 se o número for positivo, 1 se for negativo
#
#    - O número será: ($a0 + $a1 / $a2)  *  ( -1 * $a3)
#
# Retorno:
#    - $v0: número no padrão IEEE 754
# número 0 e 1
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

	# é zero!!
	# retorna a função
	jr $ra


	###
	# Caso se não for zero
	###
	naoEhZero:

	setaPrimeiroBit:
		# muito fácil de setar
		move $t0, $a3 # $t0 = $a3
		sll $t0, $t0, 31 # $t0 = $t0 << 31
		# agrega o valor a v0
		or $v0, $v0, $t0 # $v0 = $v0 | $t0

		# se for positivo, não precisa multiplicar por -1
		beq $a3, $zero, ate24Bit # ($a3 == $zero) -> ate24Bit
		# se for negativo, multiplica por -1
		sub $t7, $zero, $t7 # $t7 = $zero - $t7


	# se $t8 for zero, seta $t9 para 10
	bne $t8, $zero, ate24Bit # ($t8 != $zero) -> ate24Bit
	# t8 == zero
	li $t9, 10 # $t9 = 10

	ate24Bit:
		# testa se a parte inteira é maior do que 23º bit setado em 1
		move $t0, $t7 # $t0 = $t7
		lw $t1, bit25EhUm # $t1 = Memory[bit25EhUm]
		lw $t2, bit24EhUm # $t2 = Memory[bit24EhUm]

		# se a parte inteira tiver o 25º bit ou mais definido
		bge $t0, $t1, devoFazerShift # ($t0 >= bit25EhUm) -> devoFazerShift


		# nesse caso aqui, não precisamos fazer o shift, e devemos concatenar com o número fracionario
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
				# não preciso fazer nada com t0
				# apenas continuo o programa


			# condição de loop
			blt $t0, $t2, loopConcatenaFracionario # ($t0  < bit24EhUm) -> loopConcatenaFracionario

			# já acabou de concatenar
			# se o resto for diferente de zero, devo somar um
			beq $t1, $zero, fracionarioConcatenado # (Resto == $zero) -> fracionarioConcatenado
			# resto não é zero
			addiu $t0, $t0, 1 # $t0 = $t0 + 1
			j fracionarioConcatenado



		devoFazerShift:
			# nesse caso, a parte fracionária não precisa ser considerada
			# devo fazer shift até 25 pra frente ser 0
			lw $t1, bit25EhUm # $t1 = Memory[bit25EhUm]
			loopFazerShift:
				srl $t0, $t0, 1 # $t0 = $t0 >> 1
				bge $t0, $t1, loopFazerShift # ($t0 >= bit25EhUm) -> loopFazerShift


		fracionarioConcatenado:
			# remover o 24º bit
			lw $t2, bit24EhUm # $t2 = Memory[bit24EhUm]
			xor $t0, $t0, $t2 # $t0 = $t0 xor $t2

			# agrega v0 com t0
			or $v0, $v0, $t0 # $v0 = $v0 | $t0



		#######################################################
		# Nesse ponto, só falta colocar o expoente em v0
		#######################################################
		


	jr $ra







printBinHex:
	#######################################################
	# Aqui o programa deve obter
	# os números binários na sequencia que estão na memória
	# a partir do endereço floatIEEE754, deve imprimir o
	# o número no formato binário e no formato hexadecimal
	# parte do Thiago
	#
	# deve ser chamado com jal
	########################################################

	jr $ra

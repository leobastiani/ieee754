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

	numeroTeste: .float -13.1875


	menu:		.asciiz		"0 - Converter\n1 - Sair\n"
	invalido:	.asciiz		"ENTRADA NAO EH VALIDA\n-------------------------------------------------------\n\n"
	entrada:	.asciiz		"Digite o valor com sinal: "
	buffer:		.space		40
	

.text # diretiva para inicio do segmento de texto


.globl main # diretiva para main







#######################################################
# Main program
#######################################################

	
	main:
		li $v0, 4	#imprimir string
		la $a0, menu
		syscall
		
		
		jal ler_inteiro		#ler inteiro 0 ou 1
		li $t1, 1		#t1 = 1, para comparar com o valor digitado
		beq $t0, $t1, end	#compara t0 (valor dado pelo usuario) com 1, se for finaliza
		jal not_zero		#se nao for nem zero nem um dar msg de erro
		
		#apartir daqui eu tenho certeza que a entrada dada eh 0
		
		jal ler_string		#le a string
		lb $t1, buffer
		
		bne $t1, 43, verifica_menos	#verirfica se eh "+" ou "-"
	
		li $s0, 0		#s0=0 s0->posicao da string
		li $a0, 0		#a1=0 a0->valor inteiro
		li $a1, 0		#a2=0 a2->valor decimal
		li $a2, 0		#numero de casas decimais
		jal loop_int
		
		#CATCH-IN CONTINUA DAQUI
				
		j main
	loop_int:
		addi $s0, $s0, 1
		lb $t1, buffer($s0)
		beq $t1, 10, fim_loop
		beq $t1, 44, loop_decimal	#verifica se eh virgula
		blt $t1, 48, invalid		#verifica se eh um numero
		bgt $t1, 57, invalid		#verifica se eh um numero
		mul $a0, $a0, 10		#aumenta uma casa decimal do valor anterior
		addi $t1, $t1, -48		#transforma ascii em int
		add $a0, $a0, $t1
		j loop_int
		
	verifica_menos:
		bne $t1, 45, invalid
		jr $ra
		
	loop_decimal:
		addi $s0, $s0, 1		#incrementa a posicao do "vetor"
		lb $t1, buffer($s0)		#carrega o byte da entrada em t1
		beq $t1, 10, fim_loop		#verifica se a string acabou
		blt $t1, 48, invalid		#verifica se eh um numero
		bgt $t1, 57, invalid		#verifica se eh um numero
		addi $t1, $t1, -48		#transforma ascii em int
		addi $a2, $a2, 1		#soma o num de casas decimais
		mul $a1, $a1, 10		#aumenta uma casa decimal
		add $a1, $a1, $t1		#soma com o proximo valor
		j loop_decimal
		
	fim_loop:
		jr $ra
		
		
	ler_string:
		li $v0, 4			#imprimir string
		la $a0, entrada
		syscall
		li $v0, 8			#ler string
		la $a0, buffer
		li $a1, 40			#tamanho da string
		syscall 
		move $t0, $a0			#string armazenada em t0
		jr $ra
		
		
		
	not_zero:				#verifica se a entrada eh zero
		bne $t0, $zero, invalid		#se nao for 0 msg de erro
		jr $ra				#se for voltar do ponto onde parou na main
		
		
		
	invalid:				#funcao para imprimir msg de erro quando a entrada nao for valida
		li $v0, 4		#imprimir string
		la $a0, invalido
		syscall
		j main
		
		
	ler_inteiro:
		li $v0, 5			#le inteiro
		syscall
		move $t0, $v0			#t0 recebe o valor lido
		jr $ra
		
	end:
		li $v0, 10
		syscall
		
		
	









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
#######################################################

intPartsToFloat:
	# trabalha com t7, t8 e t9 ao inves de a0, a1 e a2
	move $t7, $a0 # $t7 = $a0
	move $t8, $a1 # $t8 = $a1
	move $t9, $a2 # $t9 = $a2

	# seta a resposta para zero
	li $v0, 0 # $v0 = 0

	
	setaPrimeiroBit:
		# muito f�cil de setar
		move $t0, $a3 # $t0 = $a3
		sll $t0, $t0, 31 # $t0 = $t0 << 31
		# agrega o valor a v0
		or $v0, $v0, $t0 # $v0 = $v0 | $t0

		# se for positivo, n�o precisa multiplicar por -1
		bge $t7, $zero, ate24Bit # ($t7 >= $zero) -> ate24Bit
		# se for negativo, multiplica por -1
		sub $t7, $zero, $t7 # $t7 = $zero - $t7

	

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
			# $t1 = Memory[bit25EhUm]
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
		calculoExpoenteReal:
			# o resultado dessa fun��o estar� em t0
			li $t0, 0 # $t0 = 0
			# se o n�mero tiver parte inteira, devo
			bne $t7, $zero, temParteInt # (partInt != $zero) -> temParteInt


			move $t1, $t8 # $t1 = partFrac
			loopSoPartFrac:
				# aqui � o caso se o n�mero for do tipo 0.XXXXXX
				# vai multiplicando o n�mero por 2 at� partFrac ultrapassar a2
				sll $t1, $t1, 1 # $t1 = $t1 << 1
				addi $t0, $t0, -1 # $t0 = $t0 + -1
				bge $t1, $a2, calculoExpoenteIEEE # ($t1 >= 10^X) -> calculoExpoenteIEEE
				j loopSoPartFrac


			temParteInt:
				move $t1, $t7 # $t1 = partInt
				# vai dividindo por 2 at� t1 ser igual a 1
				li $t2, 1 # $t2 = 1
				loopParteInteira:
					beq $t1, $t2, calculoExpoenteIEEE # ($t1 == "1") -> calculoExpoenteIEEE
					# divide t1 por 2
					srl $t1, $t1, 1 # $t1 = $t1 >> 1
					addi $t0, $t0, 1 # $t0 = $t0 + 1
					j loopParteInteira

		calculoExpoenteIEEE:
			# t0 deve ser normalizado com 127
			addi $t0, $t0, 127 # $t0 = $t0 + 127

			# nesse ponto, s� devo ajustar t0 para frente
			# e concatenar com v0
			sll $t0, $t0, 23 # $t0 = $t0 << 23
			or $v0, $v0, $t0 # $v0 = $v0 | $t0




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

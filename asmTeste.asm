.data
	# números
	numero1: .float 4538.05
	numero2: .float -6636.28
	numero3: .float 2916.48
	numero4: .float 7870.23
	numero5: .float -9310.27
	numero6: .float 8760.07
	numero7: .float 5505.56
	numero8: .float -4376.01
	numero9: .float -477.79
	numero10: .float 1420.51
	numero11: .float -6865.53
	numero12: .float 3428.36
	numero13: .float 5546.78
	numero14: .float -5231.27
	numero15: .float 2488.15
	numero16: .float -6731.94
	numero17: .float 478.12
	numero18: .float 4101.73
	numero19: .float 8921.32
	numero20: .float 5279.88
	numero21: .float -5065.41
	numero22: .float -1179.75
	numero23: .float 6296.76
	numero24: .float -6132.38
	numero25: .float -4396.34
	numero26: .float 5577.99
	numero27: .float -9170.38
	numero28: .float -9057.01
	numero29: .float -6572.38
	numero30: .float -7213.83
	numero31: .float 5798.18
	numero32: .float -9231.11
	numero33: .float 7366.94
	numero34: .float 3850.35
	numero35: .float -6246.74
	numero36: .float 704.99
	numero37: .float 4694.09
	numero38: .float 1537.97
	numero39: .float 1072.3
	numero40: .float 5815.92
	numero41: .float -5348.47
	numero42: .float 799.59
	numero43: .float 9738.47
	numero44: .float -1956.49
	numero45: .float 7119.85
	numero46: .float 2185.92
	numero47: .float -1234.38
	numero48: .float -8427.04
	numero49: .float 1372.84
	numero50: .float -4292.99
	numero51: .float 6867.04
	numero52: .float 3352.9
	numero53: .float -8258.15
	numero54: .float 4378.28
	numero55: .float -4282.24
	numero56: .float 4601.33
	numero57: .float 6419.91
	numero58: .float 5488.56
	numero59: .float 1532.83
	numero60: .float -1524.61
	numero61: .float -4014.64
	numero62: .float 8862.97
	numero63: .float -8540.18
	numero64: .float -5222.57
	numero65: .float 5606.58
	numero66: .float -3664.75
	numero67: .float -6184.35
	numero68: .float -615.61
	numero69: .float -6783.03
	numero70: .float 2978.97
	numero71: .float -7275.79
	numero72: .float 4361.12
	numero73: .float 27.06
	numero74: .float -9098.29
	numero75: .float 1942.24
	numero76: .float 2518.79
	numero77: .float 35.1
	numero78: .float 5247.09
	numero79: .float 3481.76
	numero80: .float -4114.17
	numero81: .float 5784.1
	numero82: .float 2485.05
	numero83: .float -4949.06
	numero84: .float 1338.96
	numero85: .float 7310.52
	numero86: .float -565.94
	numero87: .float -7296.95
	numero88: .float 4125.61
	numero89: .float -2900.92
	numero90: .float 3370.26
	numero91: .float 4354.1
	numero92: .float -4449.64
	numero93: .float 4116.48
	numero94: .float -1418.82
	numero95: .float 8270.02
	numero96: .float 8882.78
	numero97: .float 9983.76
	numero98: .float 4761.68
	numero99: .float -4595.49
	numero100: .float -9001.84
	numero101: .float 5171.25
	numero102: .float -7770.56
	numero103: .float -4653.65
	numero104: .float 5717.17
	numero105: .float -2692.46
	numero106: .float -5192.72
	numero107: .float -2476.16
	numero108: .float -7824.47
	numero109: .float 7146.18
	numero110: .float -9317.76
	numero111: .float 4876.86
	numero112: .float 9863.79
	numero113: .float -1941.96
	numero114: .float 4612.97
	numero115: .float 9106.16
	numero116: .float 4103.14
	numero117: .float 5050.91



	newLine:  .asciiz "\n"		#utilizado para o \n na funcao printbinhex
	x: .asciiz "x"
	A: .asciiz "A"
	B: .asciiz "B"
	C: .asciiz "C"
	D: .asciiz "D"
	E: .asciiz "E"
	F: .asciiz "F"			###

.text # diretiva para inicio do segmento de texto


.globl main # diretiva para main







#######################################################
# Main program
#######################################################

	
	main:

		###################
		l.s $f0, numero1
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero2
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero3
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero4
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero5
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero6
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero7
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero8
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero9
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero10
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero11
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero12
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero13
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero14
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero15
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero16
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero17
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero18
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero19
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero20
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero21
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero22
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero23
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero24
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero25
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero26
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero27
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero28
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero29
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero30
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero31
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero32
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero33
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero34
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero35
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero36
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero37
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero38
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero39
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero40
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero41
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero42
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero43
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero44
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero45
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero46
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero47
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero48
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero49
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero50
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero51
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero52
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero53
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero54
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero55
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero56
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero57
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero58
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero59
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero60
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero61
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero62
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero63
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero64
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero65
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero66
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero67
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero68
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero69
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero70
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero71
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero72
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero73
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero74
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero75
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero76
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero77
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero78
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero79
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero80
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero81
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero82
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero83
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero84
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero85
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero86
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero87
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero88
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero89
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero90
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero91
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero92
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero93
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero94
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero95
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero96
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero97
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero98
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero99
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero100
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero101
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero102
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero103
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero104
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero105
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero106
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero107
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero108
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero109
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero110
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero111
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero112
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero113
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero114
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero115
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero116
		mfc1 $a0, $f0
		jal printBinHex
		###################
		l.s $f0, numero117
		mfc1 $a0, $f0
		jal printBinHex



		li $v0, 10 # $v0 = 10
		syscall


	printBinHex:  
		li $t0, 31 # 
		li $t5, 0#registrador auxiliar como parametro de blt
		move $t1, $a0#tl = a0
		li $v0,1
		loopQueImprimeBinario: 
			
			srlv $t2, $t1, $t0 #shift right valor de t0
			andi $t2,$t2,1 
			move $a0, $t2 #imprime
			subi $t0,$t0,1 
			syscall
			blt $t0,$t5,exit
			j loopQueImprimeBinario
			exit:
			la     $a0, newLine #linha 371,372,373 responsaveis pelo printf( "\n")
    			addi   $v0, $0, 4
    			syscall
		li $v0,1 #retomando valor anterior de $v0 antes das linhas que imprimem \n
		
		#Iniciando operacoes para converter e imprimir hexadecimal
		li $t0, 28
			li $v0, 1	#imprime 0
			move $a0, $0
			syscall
				#imprime X
			la $a0, x
			addi $v0, $0, 4
			syscall
			
		loopQueConverteEImprimeHexadecimal:
			srlv $t2,$t1,$t0 
			andi $t2,$t2,15 
			li $t5, 9 #novamente registrador auxiliar
			blt  $t5,$t2,dezena	#se t5<t2, ex 9<10#a partir desta imprimimos hexadecimal
			li $v0,1
			move $a0, $t2 ##imprimir 4
			beq $t2,$t2,continue##reiniciar loop
		dezena:				#imprime hexadecimal 10 ou maior
			li $t5, 10#se t5<t2 va para talvez imprimir onze
			blt $t5,$t2,onze#se t5<t2 va para talvez imprimir 11
			la $a0, A	#indica impressao de uma string que representa 10 em hexadecimal
			li $v0, 4
			
					
			beq $t2,$t2,continue##reiniciar loop
		onze:
			li $t5, 11
			blt $t5,$t2,doze#se t5<t2 va para talvez imprimir doze
			la $a0, B	
			li $v0, 4
			
			
			beq $t2,$t2,continue##reiniciar loop
		doze:
			li $t5, 12
			blt $t5,$t2,treze#se t5<t2 va para talvez imprimir treze
			la $a0, C	
			li $v0, 4
			
				
			beq $t2,$t2,continue##reiniciar loop
		treze:
			li $t5, 13
			blt $t5,$t2,quatorze#se t5<t2 va para talvez imprimir doze quatorze
			la $a0, D	
			li $v0, 4
			
				
			beq $t2,$t2,continue##reiniciar loop
		quatorze:
			li $t5, 14
			blt $t5,$t2,quinze#se t5<t2 va para talvez imprimir quinze
			la $a0, E	
			li $v0, 4
				
			beq $t2,$t2,continue##reiniciar loop
		quinze: 
			li $t5, 15
			la $a0, F	
			li $v0, 4
			
			beq $t2,$t2,continue##reiniciar loop
		continue:
			##move $a0,$t2
			subi $t0,$t0,4
			syscall
			li $t5,0
			blt $t0,$t5,exit2 #se t0 < t5 exit do loop2
			j loopQueConverteEImprimeHexadecimal
			exit2:
			
			
	
	move $a0,$t1##fazer a0 = t1
	li $v0, 4		#imprimi string
	la $a0, newLine	#pula uma linha depois de imprimir os numeros em binario e hexadecimal, detalhe apenas estetico
	syscall
	jr $ra

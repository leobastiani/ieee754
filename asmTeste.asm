.data
	# números
	numero1: .float 7138.56
	numero2: .float -9899.18
	numero3: .float -8828.08
	numero4: .float 3404.8
	numero5: .float 5482.29
	numero6: .float -6847.28
	numero7: .float -5146.53
	numero8: .float 5525.33
	numero9: .float -8632.07
	numero10: .float 2747.22
	numero11: .float -8422.45
	numero12: .float 7743.41
	numero13: .float -5875.28
	numero14: .float 1490.59
	numero15: .float -6235.71
	numero16: .float -8964.17
	numero17: .float 7250.48
	numero18: .float -3565.71
	numero19: .float -9889.25
	numero20: .float -9016.91
	numero21: .float 1955.86
	numero22: .float -3735.85
	numero23: .float 5667.84
	numero24: .float 4993.84
	numero25: .float -7148.84
	numero26: .float 8551.08
	numero27: .float 697.62
	numero28: .float -5480.6
	numero29: .float -2928.75
	numero30: .float -8885.96
	numero31: .float -115.05
	numero32: .float -1225.2
	numero33: .float 7308.82
	numero34: .float -3885.88
	numero35: .float 5102.4
	numero36: .float 5677.9
	numero37: .float -9781.32
	numero38: .float 2145.52
	numero39: .float -4174.04
	numero40: .float -1760.88
	numero41: .float -3324.67
	numero42: .float 8520.29
	numero43: .float 4586.76
	numero44: .float -6657.87
	numero45: .float -639.55
	numero46: .float -860.13
	numero47: .float 9133.31
	numero48: .float 4438.98
	numero49: .float -5869.88
	numero50: .float -8563.33
	numero51: .float -9588.27
	numero52: .float 8660.83
	numero53: .float 5129.5
	numero54: .float 7833.9
	numero55: .float -8719.99
	numero56: .float -2856.03
	numero57: .float 5713.42
	numero58: .float -7630.55
	numero59: .float -2809.88
	numero60: .float 3986.34
	numero61: .float 7425.11
	numero62: .float 1495.91
	numero63: .float 8698.36
	numero64: .float 6143.31
	numero65: .float 1223.49
	numero66: .float 488.39
	numero67: .float -6810.58
	numero68: .float -8.97
	numero69: .float -9855.15
	numero70: .float 3049.1
	numero71: .float -6940.43
	numero72: .float 8046.25
	numero73: .float -88.28
	numero74: .float 3512.33
	numero75: .float -2482.36
	numero76: .float 3321.07
	numero77: .float 3046.01
	numero78: .float -8170.84
	numero79: .float 1918.94
	numero80: .float -781.52
	numero81: .float -2970.99
	numero82: .float -3415.79
	numero83: .float 8650.93
	numero84: .float -7039.11
	numero85: .float 7359.21
	numero86: .float 203.47
	numero87: .float 7615.43
	numero88: .float -9601.01
	numero89: .float 9674.54
	numero90: .float -9552.56
	numero91: .float -3563.88
	numero92: .float 5517.19
	numero93: .float 4132.36
	numero94: .float 6076.72
	numero95: .float 2659.97
	numero96: .float -263.41
	numero97: .float -2822.02
	numero98: .float -3253.86
	numero99: .float 3183.33
	numero100: .float -972.41
	numero101: .float 7963.11
	numero102: .float 9419.37
	numero103: .float -9230.96
	numero104: .float -7036.89
	numero105: .float -8635.07
	numero106: .float -3714.34
	numero107: .float 7655.48
	numero108: .float 8885.39
	numero109: .float -305.23
	numero110: .float 1136.0
	numero111: .float 7805.67
	numero112: .float 1113.8
	numero113: .float 7875.97
	numero114: .float 5622.51
	numero115: .float 6627.38
	numero116: .float -9533.21
	numero117: .float 5677.66



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

######################################################
# Trabalho 1 de ORG
#######################################################





#######################################################
# Diretivas
#######################################################

.data # diretiva para inicio do seg de dados

	# número que diz se o primeiro byte é um
	primeiroUmRestoZero: .word 0x80000000
	# variavel que o vigésimo terceiro bit é 1
	bit23EhUm: .word 0x00400000
	bit24EhUm: .word 0x00800000
	bit25EhUm: .word 0x01000000

	numeroTeste: .float -13.1875


	menu:		.asciiz		"0 - Converter\n1 - Sair\n"
	invalido:	.asciiz		"ENTRADA NAO EH VALIDA\n-------------------------------------------------------\n\n"
	entrada:	.asciiz		"Digite o valor com sinal: "
	buffer:		.space		40


	newLine:  .asciiz "\n"		#utilizado para o \n na funcao printbinhex
	A: .asciiz "A"
	B: .asciiz "B"
	C: .asciiz "C"
	D: .asciiz "D"
	E: .asciiz "E"
	F: .asciiz "F"			###
	x: .asciiz "x"



.text # diretiva para inicio do segmento de texto


.globl main # diretiva para main







#######################################################
# Main program
#######################################################

	
	main:

		#apagar
			# caso de teste: 7138.56
			li $a0, 7138
			li $a1, 56
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -9899.18
			li $a0, 9899
			li $a1, 18
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -8828.08
			li $a0, 8828
			li $a1, 08
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 3404.8
			li $a0, 3404
			li $a1, 8
			li $a2, 10
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 5482.29
			li $a0, 5482
			li $a1, 29
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -6847.28
			li $a0, 6847
			li $a1, 28
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -5146.53
			li $a0, 5146
			li $a1, 53
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 5525.33
			li $a0, 5525
			li $a1, 33
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -8632.07
			li $a0, 8632
			li $a1, 07
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 2747.22
			li $a0, 2747
			li $a1, 22
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -8422.45
			li $a0, 8422
			li $a1, 45
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7743.41
			li $a0, 7743
			li $a1, 41
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -5875.28
			li $a0, 5875
			li $a1, 28
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 1490.59
			li $a0, 1490
			li $a1, 59
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -6235.71
			li $a0, 6235
			li $a1, 71
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -8964.17
			li $a0, 8964
			li $a1, 17
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7250.48
			li $a0, 7250
			li $a1, 48
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -3565.71
			li $a0, 3565
			li $a1, 71
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -9889.25
			li $a0, 9889
			li $a1, 25
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -9016.91
			li $a0, 9016
			li $a1, 91
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 1955.86
			li $a0, 1955
			li $a1, 86
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -3735.85
			li $a0, 3735
			li $a1, 85
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 5667.84
			li $a0, 5667
			li $a1, 84
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 4993.84
			li $a0, 4993
			li $a1, 84
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -7148.84
			li $a0, 7148
			li $a1, 84
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 8551.08
			li $a0, 8551
			li $a1, 08
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 697.62
			li $a0, 697
			li $a1, 62
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -5480.6
			li $a0, 5480
			li $a1, 6
			li $a2, 10
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -2928.75
			li $a0, 2928
			li $a1, 75
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -8885.96
			li $a0, 8885
			li $a1, 96
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -115.05
			li $a0, 115
			li $a1, 05
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -1225.2
			li $a0, 1225
			li $a1, 2
			li $a2, 10
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7308.82
			li $a0, 7308
			li $a1, 82
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -3885.88
			li $a0, 3885
			li $a1, 88
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 5102.4
			li $a0, 5102
			li $a1, 4
			li $a2, 10
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 5677.9
			li $a0, 5677
			li $a1, 9
			li $a2, 10
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -9781.32
			li $a0, 9781
			li $a1, 32
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 2145.52
			li $a0, 2145
			li $a1, 52
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -4174.04
			li $a0, 4174
			li $a1, 04
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -1760.88
			li $a0, 1760
			li $a1, 88
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -3324.67
			li $a0, 3324
			li $a1, 67
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 8520.29
			li $a0, 8520
			li $a1, 29
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 4586.76
			li $a0, 4586
			li $a1, 76
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -6657.87
			li $a0, 6657
			li $a1, 87
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -639.55
			li $a0, 639
			li $a1, 55
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -860.13
			li $a0, 860
			li $a1, 13
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 9133.31
			li $a0, 9133
			li $a1, 31
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 4438.98
			li $a0, 4438
			li $a1, 98
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -5869.88
			li $a0, 5869
			li $a1, 88
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -8563.33
			li $a0, 8563
			li $a1, 33
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -9588.27
			li $a0, 9588
			li $a1, 27
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 8660.83
			li $a0, 8660
			li $a1, 83
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 5129.5
			li $a0, 5129
			li $a1, 5
			li $a2, 10
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7833.9
			li $a0, 7833
			li $a1, 9
			li $a2, 10
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -8719.99
			li $a0, 8719
			li $a1, 99
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -2856.03
			li $a0, 2856
			li $a1, 03
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 5713.42
			li $a0, 5713
			li $a1, 42
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -7630.55
			li $a0, 7630
			li $a1, 55
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -2809.88
			li $a0, 2809
			li $a1, 88
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 3986.34
			li $a0, 3986
			li $a1, 34
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7425.11
			li $a0, 7425
			li $a1, 11
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 1495.91
			li $a0, 1495
			li $a1, 91
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 8698.36
			li $a0, 8698
			li $a1, 36
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 6143.31
			li $a0, 6143
			li $a1, 31
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 1223.49
			li $a0, 1223
			li $a1, 49
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 488.39
			li $a0, 488
			li $a1, 39
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -6810.58
			li $a0, 6810
			li $a1, 58
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -8.97
			li $a0, 8
			li $a1, 97
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -9855.15
			li $a0, 9855
			li $a1, 15
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 3049.1
			li $a0, 3049
			li $a1, 1
			li $a2, 10
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -6940.43
			li $a0, 6940
			li $a1, 43
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 8046.25
			li $a0, 8046
			li $a1, 25
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -88.28
			li $a0, 88
			li $a1, 28
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 3512.33
			li $a0, 3512
			li $a1, 33
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -2482.36
			li $a0, 2482
			li $a1, 36
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 3321.07
			li $a0, 3321
			li $a1, 07
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 3046.01
			li $a0, 3046
			li $a1, 01
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -8170.84
			li $a0, 8170
			li $a1, 84
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 1918.94
			li $a0, 1918
			li $a1, 94
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -781.52
			li $a0, 781
			li $a1, 52
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -2970.99
			li $a0, 2970
			li $a1, 99
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -3415.79
			li $a0, 3415
			li $a1, 79
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 8650.93
			li $a0, 8650
			li $a1, 93
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -7039.11
			li $a0, 7039
			li $a1, 11
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7359.21
			li $a0, 7359
			li $a1, 21
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 203.47
			li $a0, 203
			li $a1, 47
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7615.43
			li $a0, 7615
			li $a1, 43
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -9601.01
			li $a0, 9601
			li $a1, 01
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 9674.54
			li $a0, 9674
			li $a1, 54
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -9552.56
			li $a0, 9552
			li $a1, 56
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -3563.88
			li $a0, 3563
			li $a1, 88
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 5517.19
			li $a0, 5517
			li $a1, 19
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 4132.36
			li $a0, 4132
			li $a1, 36
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 6076.72
			li $a0, 6076
			li $a1, 72
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 2659.97
			li $a0, 2659
			li $a1, 97
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -263.41
			li $a0, 263
			li $a1, 41
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -2822.02
			li $a0, 2822
			li $a1, 02
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -3253.86
			li $a0, 3253
			li $a1, 86
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 3183.33
			li $a0, 3183
			li $a1, 33
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -972.41
			li $a0, 972
			li $a1, 41
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7963.11
			li $a0, 7963
			li $a1, 11
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 9419.37
			li $a0, 9419
			li $a1, 37
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -9230.96
			li $a0, 9230
			li $a1, 96
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -7036.89
			li $a0, 7036
			li $a1, 89
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -8635.07
			li $a0, 8635
			li $a1, 07
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -3714.34
			li $a0, 3714
			li $a1, 34
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7655.48
			li $a0, 7655
			li $a1, 48
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 8885.39
			li $a0, 8885
			li $a1, 39
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -305.23
			li $a0, 305
			li $a1, 23
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 1136.0
			li $a0, 1136
			li $a1, 0
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7805.67
			li $a0, 7805
			li $a1, 67
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 1113.8
			li $a0, 1113
			li $a1, 8
			li $a2, 10
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 7875.97
			li $a0, 7875
			li $a1, 97
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 5622.51
			li $a0, 5622
			li $a1, 51
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 6627.38
			li $a0, 6627
			li $a1, 38
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: -9533.21
			li $a0, 9533
			li $a1, 21
			li $a2, 100
			li $a3, 1
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# caso de teste: 5677.66
			li $a0, 5677
			li $a1, 66
			li $a2, 100
			li $a3, 0
			jal intPartsToFloat
			move $a0, $v0 # $a0 = $v0
			jal printBinHex
			# encerra o programa
			li $v0, 10 # $v0 = 10
			syscall
		#apagar

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
		
		bne $t1, 43, verifica_semenos	#verifica se eh "+" ou "-"
		beq $t1, 43, se_mais		#coloca a3=0 se for mais
		
		eh_menos:
		beq $t1, 45, se_menos		#coloca a3=1 se for menos
			
		voltamain:
	
		li $s0, 0		#s0=0 s0->posicao da string
		li $a0, 0		#a1=0 a0->valor inteiro
		li $a1, 0		#a2=0 a2->valor decimal
		li $a2, 1		#numero que divide a parte decimal
		jal loop_int
		jal verifica_a2		#se a2 for igual a 1 na verdade ele deveria ser 0
		
		#CATCH-IN CONTINUA DAQUI
		
		jal intPartsToFloat
		
		move $a0, $v0
		
		jal printBinHex		#chama funcao para printar os valores em binario e hexadecimal
		
		
		
		j main
		
	verifica_a2:
		beq $a2, 1, mudar_pra_zero		#caso o a2 seja um muda ele para zero
		jr $ra
		
	mudar_pra_zero:
		li $a2, 0
		jr $ra
		
		
		
	se_mais:
		li $a3, 0
		j voltamain
		
	se_menos:
		li $a3, 1
		j voltamain
		
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
		
	verifica_semenos:
		bne $t1, 45, invalid
		j eh_menos
		
		
	loop_decimal:
		addi $s0, $s0, 1		#incrementa a posicao do "vetor"
		lb $t1, buffer($s0)		#carrega o byte da entrada em t1
		beq $t1, 10, fim_loop		#verifica se a string acabou
		blt $t1, 48, invalid		#verifica se eh um numero
		bgt $t1, 57, invalid		#verifica se eh um numero
		addi $t1, $t1, -48		#transforma ascii em int
		mul $a2, $a2, 10		#a2 = a2 * 10
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
#######################################################

intPartsToFloat:
	# trabalha com t7, t8 e t9 ao inves de a0, a1 e a2
	move $t7, $a0 # $t7 = $a0
	move $t8, $a1 # $t8 = $a1
	move $t9, $a2 # $t9 = $a2

	# seta a resposta para zero
	li $v0, 0 # $v0 = 0

	
	setaPrimeiroBit:
		# muito fácil de setar
		move $t0, $a3 # $t0 = $a3
		sll $t0, $t0, 31 # $t0 = $t0 << 31
		# agrega o valor a v0
		or $v0, $v0, $t0 # $v0 = $v0 | $t0

		# se for positivo, não precisa multiplicar por -1
		bge $t7, $zero, naoEhZero # ($t7 >= $zero) -> naoEhZero
		# se for negativo, multiplica por -1
		sub $t7, $zero, $t7 # $t7 = $zero - $t7

	

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
			devoSomar1:
				mul $t1, $t1, 10 # $t1 = $t1 * 10
				div $t1, $t1, $t9 # $t1 = $t1 / $t9
				blt $t1, 5, fracionarioConcatenado # (Resto < 5) -> fracionarioConcatenado
				# Resto >= 5:
				# devo somar 1

				# se t0 for esse número q t3 está recebendo, não faz nada
				li $t3, 0x00ffffff # $t3 = 0x00ffffff
				beq $t0, $t3, fracionarioConcatenado # ($t0 == casoEspecialNaoSoma) -> fracionarioConcatenado

				# t0 != casoEspecialNaoSoma
				addiu $t0, $t0, 1 # $t0 = $t0 + 1
				j fracionarioConcatenado



		devoFazerShift:
			# nesse caso, a parte fracionária não precisa ser considerada
			# devo fazer shift até 25 pra frente ser 0
			# $t1 = Memory[bit25EhUm]
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
		calculoExpoenteReal:
			# o resultado dessa função estará em t0
			li $t0, 0 # $t0 = 0
			# se o número tiver parte inteira, devo
			bne $t7, $zero, temParteInt # (partInt != $zero) -> temParteInt

			move $t8, $a1 # $t8 = $a1
			move $t1, $t8 # $t1 = partFrac
			loopSoPartFrac:
				# aqui é o caso se o número for do tipo 0.XXXXXX
				# vai multiplicando o número por 2 até partFrac ultrapassar a2
				sll $t1, $t1, 1 # $t1 = $t1 << 1
				addi $t0, $t0, -1 # $t0 = $t0 + -1
				bge $t1, $a2, calculoExpoenteIEEE # ($t1 >= 10^X) -> calculoExpoenteIEEE
				j loopSoPartFrac


			temParteInt:
				move $t1, $t7 # $t1 = partInt
				# vai dividindo por 2 até t1 ser igual a 1
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

			# nesse ponto, só devo ajustar t0 para frente
			# e concatenar com v0
			sll $t0, $t0, 23 # $t0 = $t0 << 23
			or $v0, $v0, $t0 # $v0 = $v0 | $t0




	jr $ra







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

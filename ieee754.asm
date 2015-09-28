#######################################################
# Trabalho 1 de ORG
#######################################################





#######################################################
# Diretivas
#######################################################

.data # diretiva para inicio do seg de dados
	# bytes do número binário
	.align 0
	floatIEEE754: .space 32 # 32 bytes

	# número flutuante para teste
	.align 2
	numeroExemplo: .float 1
	

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


	li $v0, 10 # $vo = 10 cod para exit
	syscall # chamada de sistema, fim do programa








#######################################################
# Função que converte float em binário na memória
# Parametros:
#    - $a0: parte inteira do número
#    - $a1: parte fracionária do número
#
# Retorno:
#    - floatIEEE754: cada byte correspodenrá ao
# número 0 e 1
#######################################################

floatToBinary:
	#######################################################
	# O programa deve pegar o número float em $f0
	# e converte-lo em binário, jogando na memória
	# no endereço floatIEEE754
	# parte do Leonardo
	#
	# deve ser chamado com jal
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
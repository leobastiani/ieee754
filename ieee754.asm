#######################################################
# Trabalho 1 de ORG
#######################################################





#######################################################
# Diretivas
#######################################################

.data # diretiva para inicio do seg de dados
	# bytes do n�mero bin�rio
	.align 0
	floatIEEE754: .space 32 # 32 bytes

	# n�mero flutuante para teste
	.align 2
	numeroExemplo: .float 1
	

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
	#######################################################
	# O programa deve pegar o n�mero float em $f0
	# e converte-lo em bin�rio, jogando na mem�ria
	# no endere�o floatIEEE754
	# parte do Leonardo
	#
	# deve ser chamado com jal
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
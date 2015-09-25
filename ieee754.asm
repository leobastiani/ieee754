#######################################################
# Trabalho 1 de ORG
#######################################################





#######################################################
#  Diretivas
#######################################################

.data # diretiva para inicio do seg de dados
	# bytes do número binário
	.align 0
	numeroBinario: .space 32 # 32 bytes

	# número flutuante para teste
	.align 4
	numeroExemplo: .float 2.5
	

.text # diretiva para inicio do segmento de texto


.globl main # diretiva para mar rotulo em outro prog







#######################################################
# Main program
#######################################################

main: # rotulo para ponto de entrada no processo




	#######################################################
	# aqui o programa deve chamar a função de bem-vindo
	# ler as entradas do teclado e trata-las
	# em seguida deve chamar a função floatToBinary e printBinToHex
	# parte do Fábio
	#######################################################


	
	# l.s $f0, numero
	# jal floatToBinary


	li $v0, 10 # $vo = 10 cod para exit
	syscall # chamada de sistema, fim do programa







floatToBinary:
	#######################################################
	# O programa deve pegar o número float em $f0
	# e converte-lo em binário, jogando na memória
	# no endereço numeroBinario
	# parte do Leonardo
	#
	# deve ser chamado com jal
	#######################################################








printBinToHex:
	#######################################################
	# Aqui o programa deve obter
	# os números binários na sequencia que estão na memória
	# a partir do endereço numeroBinario, deve imprimir o
	# número no formato hexadecimal
	# parte do Thiago
	#
	# deve ser chamado com jal
	########################################################
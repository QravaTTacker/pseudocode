/*
 * Programa que leia o preço de um produto e pergunte em qual período do ano estamos, 
 * aplicando ao preço o devido reajuste (desconto ou aumento), de acordo com a 
 * tabela a seguir:
 * - Carnaval [+10%]
 * - Férias Escolares [+20%] 
 * - Dia das crianças [+5%]
 * - Black Friday [-30%]
 * - Natal [-5%]
 */

programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		cadeia msg = ""
		real valor = 0.0
		caracter option = ' '

		escreva("Valor do produto (R$): ")
		leia(valor)

		escreva("====================================\n")
		escreva("|       Reajustador de Preço       |\n")
		escreva("|----------------------------------|\n")
		escreva("| 1     Carnaval           [+10%]  |\n")
		escreva("| 2     Férias Escolares   [+20%]  |\n")
		escreva("| 3     Dia das Crianças   [+5%]   |\n")
		escreva("| 4     Black Friday       [-30%]  |\n")
		escreva("| 5     Natal              [-5%]   |\n")
		escreva("====================================\n")
		escreva(">>> ")
		leia(option)
		
		escolha (option) {
			caso '1':
				msg = "No Carnaval, o valor aumenta para R$ "
				valor += (valor * 0.10) 
				pare
			caso '2':
				msg = "Nas Férias Escolares o valor aumenta para R$ "
				valor += (valor * 0.20)
				pare
			caso '3':
				msg = "No Dia das Cianças o valor aumenta para R$ "
				valor += (valor * 0.05)
				pare
			caso '4':
				msg = "Na Black Friday o valor diminui para R$ "
				valor -= (valor * 0.30)
				pare
			caso '5':
				msg = "No Natal o valor diminui para R$ "
				valor -= (valor * 0.05)
				pare
			caso contrario:
				escreva("Opção inválida :/\n")
		}
		
		escreva("------------------------------------\n")
		se (nao (msg == "")) {
			escreva(msg, m.arredondar(valor, 2) ,"\n")
		} senao {
			escreva("O valor do produto não sofreu reajustes\n")
			escreva("Seu preço continua sendo R$ ", m.arredondar(valor, 2), "!\n")
		}
	}
}

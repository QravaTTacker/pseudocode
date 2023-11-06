/*
 * Programa que leia o peso do usuário aqui no planeta Terra e calcule qual seria o peso 
 * dessa pessoa nos demais planetas do sistema solar.
 */

programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		const real gravidade_terra = 9.80
		caracter op_planeta = ' '
		real massa = 0.0
		
		escreva("Qual é a sua massa (em KG)? ")
		leia(massa)
		
		escreva("==============================\n")
		escreva("|     Escolha um Planeta     |\n")
		escreva("|----------------------------|\n")
		escreva("| Mercúrio.................1 |\n")
		escreva("| Vênus....................2 |\n")
		escreva("| Terra....................3 |\n")
		escreva("| Marte....................4 |\n")
		escreva("| Júpiter..................5 |\n")
		escreva("| Saturno..................6 |\n")
		escreva("| Urano....................7 |\n")
		escreva("| Netuno...................8 |\n")
		escreva("==============================\n")
		escreva("Opção >>> ")
		leia(op_planeta)
		
		escreva("------------------------------\n")
		real gravidade = 0.0
		cadeia planeta = ""
		escolha (op_planeta) {
			caso '1':
				planeta = "Mercúrio"
				gravidade = 3.7
				pare
			caso '2':
				planeta = "Vênus"
				gravidade = 8.87 
				pare
			caso '3':
				planeta = "Terra"
				gravidade = 9.80
				pare
			caso '4':
				planeta = "Marte"
				gravidade = 3.711
				pare
			caso '5':
				planeta = "Júpiter"
				gravidade = 24.79
				pare
			caso '6':
				planeta = "Saturno"
				gravidade = 10.44
				pare
			caso '7':
				planeta = "Urano"
				gravidade = 8.87
				pare
			caso '8':
				planeta = "Netuno"
				gravidade = 11.15
				pare
			caso '9':
				escreva("Plutão não é um planeta seu loko ksjkskskjs\n")
				pare
			caso contrario:
				escreva("Opção de planeta inválida :/\n")
		}

		se (nao (gravidade == 0.0)) {
			//peso = massa * gravidade_do_planeta
			real peso = massa * gravidade
			//massa = peso / gravidade_do_planeta
			real massa_equivalente = peso / gravidade_terra
			escreva("Seu peso no planeta ", planeta, " é ", m.arredondar(peso, 2), " N.\n")
			escreva("Isso equivale à ", m.arredondar(massa_equivalente, 2), " Kg na Terra.\n")
		}
	}
}

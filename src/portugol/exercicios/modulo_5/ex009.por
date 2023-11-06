/*
 * Faça um programa que leia nome e idade de 5 pessoas. No final, calcule e mostre:
 * - A média de idade do grupo
 * - Uma lista com os dados de quem está acima da média de idade
 * - A maior idade do grupo
 * - Uma lista com as pessoas mais velhas
 */

programa
{
	const inteiro SIZE = 5

	funcao inicio()
	{
		inteiro soma = 0
		inteiro maior = 0
		inteiro media = 0
		
		cadeia nomes[SIZE]
		inteiro idades[SIZE]

		para (inteiro i = 0; i < SIZE; i++) {
			escreva("-----------------\n")
			escreva("    ", i + 1, "ª PESSOA\n")
			escreva("-----------------\n")

			escreva("NOME: ")
			leia(nomes[i])
			escreva("IDADE: ")
			leia(idades[i])

			soma += idades[i]

			se (i == 0) maior = idades[i]
			senao se (idades[i] > maior) maior = idades[i]
		}

		media = soma / SIZE
		
		escreva("================================\n")
		escreva("Média de idades: ", media, "\n")
		escreva("Pessoas acima da média:\n")
		para (inteiro i = 0; i < SIZE; i++)
			se (idades[i] > media)
				escreva("\t-> ", nomes[i], " (", idades[i], ")\n")

		escreva("--------------------------------\n")
		
		escreva("Maior idade do grupo: ", maior, " anos\n")
		escreva("Pessoa(s) com a maior idade:\n")
		para (inteiro i = 0; i < SIZE; i++) 
			se (idades[i] == maior)
				escreva("\t-> ", nomes[i], "\n")

		escreva("================================\n")
		
	}
}

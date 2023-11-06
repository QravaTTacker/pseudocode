/*
 * Escreva um programa que sorteie vários números ebtre 1 e 10 e pergunte a cada interação 
 * se o usuário quer continuar. No fim, mostre na tela:
 * - Quantos valores foram sorteados
 * - A soma de todos eles
 * - Qual foi o maior e o menor valor sorteados
 * - Quantas vezes o valor 5 foi sorteado
 */

programa
{
	inclua biblioteca Tipos --> ty
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro valor = 0
		inteiro soma = 0
		inteiro maior = 0
		inteiro menor = 0
		inteiro total = 0
		inteiro valores_5 = 0

		caracter resp = ' '
		
		faca {
			total++
			valor = u.sorteia(1, 10)
			escreva("O ", total, "º valor sorteado foi ", valor, "\n")
			
			soma += valor
			
			se (valor == 5) valores_5++
			se (total == 1) 
			{
				maior = valor
				menor = valor
			} 
			senao se (valor > maior) maior = valor
			senao se (valor < menor) menor = valor

			faca {
				escreva("Cotinuar? [S/N]\n")
				escreva(">>> ")
				leia(resp)
			} enquanto (nao ty.caracter_e_logico(resp))
		} enquanto (resp == 'S' ou resp == 's')
		
		escreva("=========================================\n")
		escreva("Você me fez sortear ", total, " valores.\n")
		escreva("A soma deles foi ", soma, ".\n")
		escreva("O maior valor foi ", maior, ".\n")
		escreva("O menor valor foi ", menor, ".\n")
		escreva("O valor 5 foi sorteado ", valores_5, " vezes.\n")
	}
}

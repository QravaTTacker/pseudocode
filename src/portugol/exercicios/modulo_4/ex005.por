/*
 * Programa que pergunte quantos números o usuário quer sortear.
 * Em seguida, sorteie a quantidade de números solicitados, mostre - os na
 * tela e no final mostre a soma entre todos eles.
 */

programa
{
	inclua biblioteca Util --> u

	funcao inicio()
	{
		inteiro cont = 0

		escreva("Quantos números você quer que eu sorteie? ")
		leia(cont)

		inteiro soma = 0
		inteiro num_sort = 0
		inteiro i = 1
		
		enquanto (i <= cont) {
			num_sort = u.sorteia(1, 10)
			escreva(i, "º número soteado: ", num_sort, "\n")
			soma += num_sort
			i++
			u.aguarde(250)
		}
		escreva("=========================================\n")
		escreva("A soma dos números sorteados foi de: ", soma, "\n")
	}
}

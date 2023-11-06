/*
 * Programa pergunte quantos números vamos sortear e faça o computador 
 * gerar esses números sozinho. No final, mostre quantos são maiores que 
 * cinco e quantos são divisíveis por três.
 */

programa
{
	inclua biblioteca Util --> u

	funcao inicio()
	{
		inteiro num_sort = 0
		inteiro div_3 = 0
		inteiro maior_5 = 0
		
		inteiro cont = 0
		escreva("Quanto números você deseja que eu sorteei? ")
		leia(cont)
		
		escreva("Soteando ", cont, " números... ")
		
		inteiro i = 1
		enquanto (i <= cont) {
			num_sort = u.sorteia(1, 10)
			escreva(num_sort, ".. ")
			se (num_sort > 5) maior_5++
			se (num_sort % 3 == 0) div_3++
			i++
			u.aguarde(250)
		}
		escreva("\n-----------------------------------\n")
		escreva("Dos, ", cont, " números sorteados\n")
		escreva(maior_5, " é/são maior que 5\n")
		escreva(div_3, " é/são disível por 3\n")
	}
}

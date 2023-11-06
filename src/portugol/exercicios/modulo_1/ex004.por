/*
 * Programa capaz de ler dois números reais e realizar as quatro operações entre eles.
 */

programa
{
	funcao inicio()
	{
		real n1 = 0.0, n2 = 0.0

		escreva("Digite um valor: ")
		leia(n1)
		escreva("Digite outro valor: ")
		leia(n2)

		escreva("\n---------- RESULTADOS ----------")
		escreva("\nSOMA = ", n1 + n2)
		escreva("\nDIFERENÇA = ", n1 - n2)
		escreva("\nPRODUTO = ", n1 * n2)
		escreva("\nDIVISÃO = ", n1 / n2)
	}
}

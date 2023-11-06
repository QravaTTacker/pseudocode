/*
 * Programa para ler um número inteiro e mostrar seu antecessor e sucessor.
 */

programa
{
	funcao inicio()
	{
		inteiro num = 0

		escreva("Me diga um número: ")
		leia(num)

		escreva("\nAntecessor: ", num - 1)
		escreva("\nSucessor: ", num + 1)
	}
}

/*
 * Programa que leia em que ano qualquer e mostre uma mensagem dizendo 
 * se ele é ou não bissexto.
 */

programa
{
	funcao inicio()
	{
		inteiro ano = 0

		escreva("Digite um ano: ")
		leia(ano)

		se (ano % 4 == 0 e ano % 100 != 0 ou ano % 400 == 0) {
			escreva(ano, " é bissexto!")
		} senao {
			escreva(ano, " não é bissexto!")
		}
	}
}

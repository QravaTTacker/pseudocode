/*
 * Programa que leia o limite inicial de uma contagem regressiva e um número 
 * desejado para múltiplos. O programa deverá contar do primeiro valor até zero, 
 * marcando os números que forem múltiplos do segundo valor informado.
 */

programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro start = 0
		inteiro mult = 0
		
		escreva("Início da contagem regressiva: ")
		leia(start)
		escreva("Marcar os múltiplo de: ")
		leia(mult)
		
		se (start >= 0) {
			enquanto (start >= 0) {
				se (start % mult == 0) escreva("[", start, "] - ")
				senao escreva(start, " - ")
				start--
				u.aguarde(250)
			}
			escreva("FIM!\n")
		} senao {
			escreva("O ínicio deve ser maior ou igual que 0 :/\n")
		}
	}
}

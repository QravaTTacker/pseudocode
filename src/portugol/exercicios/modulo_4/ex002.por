/*
 * Programa que leia um número qualquer e conte de 1 até ele, só que fazendo o 
 * JOGO DO PIN, onde os múltiplos de 4 são substituídos pela palavra "PIN".
 */

programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro start = 0
		inteiro end = 0
		inteiro i = 0
		
		escreva("Início: ")
		leia(start)
		escreva("Fim: ")
		leia(end)
		escreva("Incremento: ")
		leia(i)
		
		se (start <= end) {
			enquanto (start <= end) {
				se (start % 4 == 0) escreva("PIN!\n")
				senao escreva(start, " - ")
				start += i
				u.aguarde(250)
			}
			escreva("FIM!\n")
		} senao {
			escreva("O ínicio deve ser menor ou igual ao fim :/\n")
		}
	}
}

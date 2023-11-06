/*
 * Programa que leia o início, o fim e o incremento de uma contagem, mostrando em seguida
 * os valores na tela, de forma gradativa.
 */

programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro start = 0
		inteiro fim = 0
		inteiro incremento = 0
		
		escreva("Por onde começar a contar? ")
		leia(start)
		escreva("Contar até quanto? ")
		leia(fim)
		escreva("Qual o valor do incremento? ")
		leia(incremento)
		
		escreva("============================\n")
		se (nao (start > fim)) {
			enquanto (start <= fim) {
				escreva(start, " - ")
				start += incremento
				u.aguarde(250)
			}
			escreva("FIM!\n")
		} senao {
			escreva("O inicio deve ser meno ou igual ou fim :/\n")
		}
	}
}

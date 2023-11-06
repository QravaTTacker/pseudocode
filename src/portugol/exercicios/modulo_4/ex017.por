/*
 * Faça um jogo de adivinhação onde o computador sorteie
 * um número entre 1 e 10 e o jogador vai tentar acertar qual foi
 * o número "pensado" pelo computador. O jogador terá 3 chances de
 * acertar e o programa vai dizer se a cada chute dele foi alto demais
 * ou baixo demais para ajudá-lo a descobrir o número.
 */

programa
{
	inclua biblioteca Util --> u

	funcao inicio()
	{
		inteiro vezes = 1
		inteiro valor = 0
		inteiro valor_sorteado = u.sorteia(1, 10)
		
		escreva("Vou pensar em um número entre 1 e 10.\n")
		escreva("Você tem 3 chances de adivinhar esse valor!\n")
		escreva("-------------------------------------------\n")
		
		faca {
			escreva("Chance ", vezes, "/3 em que número estou pensando?\n")
			escreva(">>> ")
			leia(valor)
			se (valor < valor_sorteado) escreva("Tente um valor MAIOR!\n")
			senao se (valor > valor_sorteado) escreva("Tente um valor MENOR!\n")
			senao pare
			vezes++
		} enquanto (vezes <= 3)
		
		escreva("=================================================\n")
		se (vezes > 3) {
			escreva("Você perdeu todas as chances!\n")
		} senao {
			escreva("Você acertou! Eu estava pesando no número ", valor_sorteado, ".\n")
			escreva("Você precisou de ", vezes, " veze(s) para acertar o valor.\n")
		}
	}
}

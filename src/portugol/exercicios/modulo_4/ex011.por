/*
 * Faça um programa que leia vários números (o valor 9999 faz o programa parar)
 * no final de tudo, mostre na tela:
 * - Quantos valores foram digitados
 * - A soma entre eles
 * - A média dos valores
 * - Qual foi o maior valor digitado
 * OBS: Não considere nunca o FLAG como parte dos dados.
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t

	funcao inicio()
	{
		real media = 0.0
		
		inteiro cont = 0
		inteiro soma = 0
		inteiro menor = 0
		inteiro maior = 0
		inteiro valor = 0

		enquanto (valor != 9999) {
			escreva(cont + 1, "º valor [9999 faz parar]\n")
			escreva(">>> ")
			leia(valor)
			se (valor != 9999) {
				soma += valor
				se (cont == 0) {
					maior = valor
					menor = valor
				} senao {
					se (valor > maior) maior = valor
					se (valor < menor) menor = valor
				}
				cont++
			}
		}
		escreva("=======================================\n")
		media = t.inteiro_para_real(soma) / cont
		escreva("Números digitados: ", cont, "\n")
		escreva("Soma total: ", soma, "\n")
		escreva("Média: ", m.arredondar(media, 2), "\n")
		escreva("Menor valor: ", menor, "\n")
		escreva("Maior valor: ", maior, "\n")
		escreva("=======================================\n")
	}
}

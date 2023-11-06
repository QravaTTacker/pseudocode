/*
 * Programa que leia 5 números inteiros e mostre, no final de tudo, 
 * quantos números pares e ímpares foram digitados. Mostre também a 
 * média de todos os valores parese a média dos ímpares.
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t

	funcao inicio()
	{
		inteiro valor = 0
		inteiro soma_pares = 0
		inteiro soma_impares = 0
		inteiro total_pares = 0
		inteiro total_impares = 0
		inteiro cont = 1
		
		enquanto (cont <= 5) {
			escreva("Digite o ", cont, "º valor: ")
			leia(valor)
			se (valor % 2 == 0) {
				total_pares++
				soma_pares += valor
			} senao {
				total_impares++
				soma_impares += valor
			}
			cont++
		}
		
		real media_pares = t.inteiro_para_real(soma_pares)/total_pares
		real media_impares = t.inteiro_para_real(soma_impares)/total_impares
		
		escreva("============================================================\n")
		escreva("Você digitou ", total_pares, " números pares. A média entre ele é de ", 
		m.arredondar(media_pares, 2), "\n")
		escreva("Você digitou ", total_impares, " números ímpares. A média entre ele é de ", 
		m.arredondar(media_impares, 2), "\n")
	}
}

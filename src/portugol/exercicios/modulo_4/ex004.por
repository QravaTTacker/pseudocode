/*
 * Programa que leia cinco números inteiros e, no final, mostre qual foi a soma dos 
 * números pares e a soma dos números ímpares digitados.
 */

programa
{
	funcao inicio()
	{
		inteiro i = 1
		inteiro valor = 0
		inteiro soma_pares = 0
		inteiro soma_impares = 0
		
		enquanto (i <= 5) {
			escreva("Digite o ", i, "º valor: ")
			leia(valor)
			se (valor % 2 == 0) soma_pares += valor
			senao soma_impares += valor
			i++
		}
		escreva("A soma dos pares: ", soma_pares, "\n")
		escreva("A soma dos ímpares: ", soma_impares, "\n")
	}
}

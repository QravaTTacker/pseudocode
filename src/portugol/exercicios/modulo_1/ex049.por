/*
 * Programa que aplica a mesma lógica que o Ex048, mas incluindo valores 
 * fracionais (centavos):
 *
 * Valor: 143,83
 * Cédulas de 100: 1
 * Cédulas de 50: 0
 * Cédulas de 20: 2
 * Cédulas de 10: 0
 * Cédulas de 5: 0
 * Cédulas de 2: 1
 * Moedas de 1: 1
 * Moedas de 50: 1
 * Moedas de 25: 1
 * Moedas de 10: 0
 * Moedas de 5: 1
 * Moedas de 1: 3
 */

programa
{
	funcao inicio()
	{
		real valor = 0.0
		
		escreva("Valor R$: ")
		leia(valor)

		inteiro valor_int = valor
		inteiro valor_real = (valor - valor_int) * 100

		escreva("Valor real: ", valor_real, "\n")
		escreva("Valor inteiro: ", valor_int, "\n")

		escreva("Cédulas de 100: ", valor_int / 100, "\n")
		valor_int = valor_int % 100
		escreva("Cédulas de 50: ", valor_int / 50, "\n")
		valor_int = valor_int % 50
		escreva("Cédulas de 20: ", valor_int / 20, "\n")
		valor_int = valor_int % 20
		escreva("Cédulas de 10: ", valor_int / 10, "\n")
		valor_int = valor_int % 10
		escreva("Cédulas de 5: ", valor_int / 5, "\n")
		valor_int = valor_int % 5
		escreva("Cédulas de 2: ", valor_int / 2, "\n")
		valor_int = valor_int % 2
		escreva("Moedas de 1: ", valor_int, "\n")

		escreva("Moedas de 50: ", valor_real / 50, "\n")
		valor_real = valor_real % 50
		escreva("Moedas de 25: ", valor_real / 25, "\n")
		valor_real = valor_real % 25
		escreva("Moedas de 10: ", valor_real / 10, "\n")
		valor_real = valor_real % 10
		escreva("Moedas de 5: ", valor_real / 5, "\n")
		valor_real = valor_real % 5
		escreva("Moedas de 1: ", valor_real, "\n")
	}
}

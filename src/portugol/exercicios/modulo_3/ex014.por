/*
 * Programa que leia dois números inteiros e mostre um menu para que o usuário possa 
 * escolher qual operação vai realizar com eles:
 * Adição +
 * Subtração  -
 * Multiplicação *
 * Divisão /
 */

programa
{	
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t

	funcao inicio()
	{
		caracter option = ' '
		real A = 0.0
		real B = 0.0

		escreva("========================\n")
		escreva("| SOMA               + |\n")
		escreva("| SUBTRAÇÃO          - |\n")
		escreva("| MULTIPLICAÇÃO      * |\n")
		escreva("| DIVISÃO            / |\n")
		escreva("========================\n")
		escreva("Opção >>> ")
		leia(option)

		escreva("------------------------\n")
		escreva("1º valor: ")
		leia(A)
		escreva("2º valor: ")
		leia(B)

		escreva("------------------------\n")
		se (t.caracter_e_inteiro(option))
			option = t.inteiro_para_caracter((t.caracter_para_inteiro(option) - 1) % 4 + 1)
		escolha (option) {
			caso '1':
			caso '+':
				escreva(A, " + ", B, " = ", (A + B), "\n")
				pare
			caso '2':
			caso '-':
				escreva(A, " - ", B, " = ", (A - B), "\n")
				pare
			caso '3':
			caso '*':
				escreva(A, " * ", B, " = ", (A * B), "\n")
				pare
			caso '4':
			caso '/':
				se (B == 0) {
					escreva("Não é possível dividir \num valor por zero :/\n")
				} senao {
					escreva(A, " / ", B, " = ", m.arredondar((A / B), 4), "\n")
				}
				pare
			caso contrario:
				escreva("Operação inválida :/\n")
		}
		escreva("========================\n")
	}
}

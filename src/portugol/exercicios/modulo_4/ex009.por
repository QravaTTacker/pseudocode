/*
 * Faça um programa que leia o NOME e a IDADE de 5 pessoas.
 * No final mostre os dados da pessoa mais JOVEM e mais VELHA.
 */

programa
{
	funcao inicio()
	{
		cadeia nome = ""
		cadeia mais_velho= ""
		cadeia mais_novo = ""

		inteiro idade = 0
		inteiro idade_novo = 0
		inteiro idade_velho = 0
		
		inteiro cont = 1
		enquanto (cont <= 5) {
			escreva("-----------------------\n")
			escreva("       ",cont,"ª PESSOA\n")
			escreva("-----------------------\n")
			escreva("NOME: ")
			leia(nome)
			escreva("IDADE: ")
			leia(idade)
			se (cont == 1) {
				idade_novo = idade
				idade_velho = idade
				mais_novo = nome
				mais_velho = nome
			} senao {
				se (idade > idade_velho) {
					idade_velho = idade
					mais_velho = nome
				} senao se (idade == idade_velho) {
					mais_velho += ", " + nome
				}
				se (idade < idade_novo) {
					idade_novo = idade
					mais_novo = nome
				} senao se (idade == idade_novo) {
					mais_novo += ", " + nome
				}
			}
			cont++
		}
		escreva("======================================================================\n")
		escreva(mais_velho, " é/são a(s) pessoa(s) mais velha(s) com ", idade_velho, " anos\n")
		escreva(mais_novo, " é/são a(s) pessoa(s) mais nova(s) com ", idade_novo, " anos\n")
	}
}

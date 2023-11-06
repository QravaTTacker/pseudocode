/*
 * Programa que leia o ano do nascimento de uma pessoa
 * e informe se, de acordo com a sua idade, o alistamento militar
 * já aconteceu, ainda vai acontecer ou se esta no ano exato de
 * se apresentar. Calcule também a quantidade de anos que faltam
 * ou que se passaram, de acordo com a situação.
 */

programa
{
	inclua biblioteca Calendario --> c
	
	funcao inicio()
	{
		inteiro idade = 0
		inteiro ano_nasc = 0
		inteiro ano_alistamento = 0
		inteiro ano_atual = c.ano_atual()
		
		escreva("Em que ano você nasceu? ")
		leia(ano_nasc)
		
		idade = ano_atual - ano_nasc
		ano_alistamento = ano_nasc + 18
		
		escreva("Você possui ", idade, " anos de idade.\n")
		se (idade > 18) {
			inteiro anos_atraz = (idade - 18)
			escreva("E já devia ter se alistado em ", ano_alistamento, 
				   " (", anos_atraz, " ano(s) atraz)!\n")
		} senao se (idade < 18) {
			inteiro anos_frente = (18 - idade)
			escreva("E deverá se alistar em ", ano_alistamento, 
				   " (falta ", anos_frente, " ano(s))...\n")
		} senao {
			escreva("É hora de se alistar. SELVAAAAAA!\n")
		}
	}
}

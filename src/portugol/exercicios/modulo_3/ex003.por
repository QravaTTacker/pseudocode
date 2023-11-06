/*
 * Programa que ajude um BANCO, lendo em que ano uma pessoa nasceu e,
 * de acordo com a sua idade no ano atual, mostre se ela deve dirigir à
 * fila preferencial (para pessoas com 65 anos ou mais).
 */

programa
{
	inclua biblioteca Calendario --> c
	
	funcao inicio()
	{
		inteiro ano = 0
		inteiro ano_atual = c.ano_atual()

		escreva("Em que ano você nasceu? ")
		leia(ano)
		
		inteiro idade = ano_atual - ano

		escreva("---------------------------------\n")
		escreva("Seja bem-vindo ao BANCO ESTUDONAUTA!\n")
		se (idade >= 65)
			escreva("Por favor, dirija-se à fila preferêncial\n")
	}
}

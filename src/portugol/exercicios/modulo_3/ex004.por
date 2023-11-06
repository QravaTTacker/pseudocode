/*
 * Programa que leia em que ano uma pessoa nasceu e,
 * de acordo com a sua idade no ano atual, mostre se ela pode
 * ou não se alistar no Serviço Militar.
 */

programa
{
	inclua biblioteca Calendario --> c

	funcao inicio()
	{
		inteiro ano_nasc = 0
		inteiro ano_atual = c.ano_atual()

		escreva("Quando você nasceu? ")
		leia(ano_nasc)

		inteiro idade = ano_atual - ano_nasc

		escreva("Sua idade atual é ", idade, "\n")
		se (idade >= 18) {
			escreva("Espero sinceramente que você já tenha se alistado.")
		} senao {
			escreva("Você ainda não completou 18 anos. Não pode se alistar.")
		}
	}
}

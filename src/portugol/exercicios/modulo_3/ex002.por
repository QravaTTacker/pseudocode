/*
 * Programa que leia o valor total das compras de um cliente e mostre uma
 * mensagem especial caso as compras sejam acima de R$500,00. Nessa situação, ele ainda
 * vai ganhar 10% de desconto.
 */

programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		real compras = 0.0
		real desconto = 0.0
		
		escreva("Valor total das compras: R$")
		leia(compras)
		
		escreva("---------------------------------\n")
		se (compras > 500.0)
		{
			desconto = compras * 0.1
			compras -= desconto
			escreva("Atenção: Por ter comprado mais de R$500,00\n")
			escreva("você ganhará um desconto de R$", m.arredondar(desconto, 2), "\n")
			escreva("---------------------------------\n")
		}
		escreva("O valor a ser pago é R$", m.arredondar(compras, 2), "\n")
		escreva("Volte sempre!\n")
	}
}

/*
 * Programa para ler o preço de um produto e aplicar 5% de desconto ao valor.
 */

programa
{
	funcao inicio()
	{
		real price = 0.0

		escreva("Qual é o preço do protudo? ")
		leia(price)

		real desconto = price * 5 / 100
		price -= desconto

		escreva("\nCom 5% de desconto, o protudo sai por R$", price)
		escreva("\nAo todo, teremos R$" , desconto, " de desconto!\n")
	}
}

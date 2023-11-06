/*
 * Programa que leia a cidade onde a pessoa mora, mostre o nome da cidade em caixa 
 * alta, qual é a primeira letra do nome da cidade e quantas letras ela tem.
 */

programa
{
	inclua biblioteca Texto --> str

	funcao inicio()
	{
		cadeia cidade = ""

		escreva("Em qual cidade você mora? ")
		leia(cidade)

		caracter primeira_letra = str.obter_caracter(cidade, 0)
		inteiro tamanho = str.numero_caracteres(cidade)

		escreva("\nVocê mora na cidade: " + str.caixa_alta(cidade))
		escreva("\nA primeira letra é " + primeira_letra)
		escreva("\nE contém " + tamanho + " caracteres.")		
	}
}

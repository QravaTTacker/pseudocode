/*
 * Programa que leia o nome completo de uma pessoa e mostre apenas o primeiro nome dela.
 */

programa
{
	inclua biblioteca Texto --> str

	funcao inicio()
	{
		cadeia nome = ""

		escreva("Digite o seu nome completo: ")
		leia(nome)
		
		cadeia primeiro_nome = str.extrair_subtexto(nome, 0, str.posicao_texto(" ", nome, 0))

		escreva("\nSeu primeiro nome é " + primeiro_nome + "!")
	}
}

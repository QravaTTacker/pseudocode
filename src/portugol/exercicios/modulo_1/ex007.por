/*
 * Programa para ler o nome, ano de nascimento e salário de um funcionário,
 * mostrando, em seguida, sua ficha funcional.
 */

programa
{
	funcao inicio()
	{
		cadeia nome = ""
		inteiro ano = 0
		real salario = 0.0

		escreva("Nome do funcionário: ")
		leia(nome)
		escreva("Ano de nascimento: ")
		leia(ano)
		escreva("Salário R$: ")
		leia(salario)

		escreva("\n---------- FICHA FUNCIONAL ----------")
		escreva("\nNOME: ", nome)
		escreva("\nNASCIMENTO em ", ano)
		escreva("\nSALÁRIO de R$", salario)
		escreva("\n-------------------------------------")
	}
}

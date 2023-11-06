/*
 * Programa que leia um número qualquer e informe se ele é positivo, negativo ou nulo.
 */

programa
{
	funcao inicio()
	{
		inteiro valor = 0
		
		escreva("Digite um valor: ")
		leia(valor)
		
		escreva("O valor ", valor, " é ")
		se (valor > 0) escreva("POSITIVO!\n")
		senao se (valor < 0) escreva("NEGATIVO!\n")
		senao escreva("NULO!\n")
	}
}

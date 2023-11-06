/*
 * Programa que leia duas notas de um aluno e calcule a sua média final:
 *
 * media = (nota1 + nota2) / 2
 */

programa
{
	funcao inicio()
	{
		real n1 = 0.0, n2 = 0.0 

		escreva("Primeira nota: ")
		leia(n1)
		escreva("Segunda nota: ")
		leia(n2)

		real media = (n1 + n2) / 2

		escreva("\nAs notas do aluno foram ", n1, " e ", n2)
		escreva("\nA média final foi ", media)
	}
}

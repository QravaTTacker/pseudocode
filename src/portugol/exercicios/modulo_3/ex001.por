/*
 * Programa que leia as duas notas de um aluno e calcule a
 * média e mostrar uma mensagem de parabéns, caso a média seja 7,0 ou mais.
 */

programa
{
	inclua biblioteca Matematica --> m

	funcao inicio()
	{
		real nota1 = 0.0
		real nota2 = 0.0
		real media = 0.0

		escreva("1ª nota: ")
		leia(nota1)

		escreva("2ª nota: ")
		leia(nota2)
		media = (nota1 + nota2) / 2
		escreva("-----------------------\n")
		se (media >= 7.0)
			escreva("PARABÉNS! ")
		escreva("Sua média é: ", m.arredondar(media, 2), "\n")
	}
}

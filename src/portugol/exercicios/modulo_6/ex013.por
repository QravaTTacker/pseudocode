/*
 * Crie duas funções: uma para calcular e retornar a média do aluno e outra que retorna a
 * situação do aluno:
 * 
 * - media >= 70.0  "Aprovado"
 * - media >= 45.0  "Em recuperação"
 * - media < 45.0   "Reprovado"
 */

programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		real n1 = 0.0
		real n2 = 0.0
		
		escreva("1º nota: ")
		leia(n1)
		escreva("2º nota: ")
		leia(n2)

		real med = media(n1, n2)
		escreva("================\n")
		escreva("Média: ", m.arredondar(med, 2), "\n")
		escreva("Situação do aluno: ", situacao(media(n1, n2)), "\n")
	}

	funcao cadeia situacao(real med)
	{
		se (med >= 7.0) retorne "Aprovado"
		se (med >= 4.5) retorne "Em recuperação"
		retorne "Reprovado"
	}

	funcao real media(real n1, real n2)
	{
		retorne (n1 + n2) / 2.0
	}
	
}

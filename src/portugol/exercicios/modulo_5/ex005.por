/*
 * Faça um programa que preencha um vetor com notas de 6 alunos
 * de uma turma. No final, mostre a média da turma e quais foram os alunos
 * que ficaram acima dela.
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		const inteiro SIZE = 6
		real notas_alunos[SIZE]
		
		real soma_total = 0.0
		real media = 0.0
		
		para (inteiro i = 0; i < u.numero_elementos(notas_alunos); i++) {
			escreva("Nota do ", i + 1, "º aluno: ")
			leia(notas_alunos[i])
			soma_total += notas_alunos[i]
		}

		real nota = 0.0
		media = soma_total / SIZE
		
		escreva("=============================================\n")
		escreva("A média da turma é ", m.arredondar(media, 2), "\n")
		escreva("=============================================\n")
		escreva("Alunos que alcançaram a média: \n")
		
		para (inteiro i = 0; i < u.numero_elementos(notas_alunos); i++) {
			nota = notas_alunos[i]
			se (nota >= media) {
				escreva(i + 1, "º aluno ---> ", nota, "\n")
			}
		}
	}
}

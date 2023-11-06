/*
 * Escreva um programa que leia NOME, SEXO e SALARIO de vários funcionários.
 * O programa também deve perguntar se o usuário deve ou não continuar o cadastro. No
 * final, analise os dados e mostre:
 * - Total de funcionários cadastrados
 * - Total de homens
 * - Total de mulheres
 * - Média salarial dos homens
 * - Total de mulheres que ganham mais de R$ 1.000,00
 * - Maior salário entre os homens
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> ty
	inclua biblioteca Texto --> tx

	funcao inicio()
	{
		cadeia nome = ""
		caracter sexo = ' '
		caracter resp = ' '

		real salario = 0.0
		real soma_salario_M = 0.0
		real maior_salario_M = 0.0
		real media_salario_M = 0.0

		inteiro total_homens = 0
		inteiro total_mulheres = 0
		inteiro total_pessoas = 0
		inteiro acima_mil_F = 0
		
		enquanto (verdadeiro) {
			escreva("+------------------------------+\n")
			escreva("|---: DADOS DO FUNCIONÁRIO :---|\n")
			escreva("+------------------------------+\n")
			
			escreva("NOME: ")
			leia(nome)
			escreva("SALÁRIO R$: ")
			leia(salario)
			escreva("SEXO [M/F]: ")
			leia(sexo)
			
			total_pessoas++
			escolha (ty.cadeia_para_caracter(tx.caixa_alta(ty.caracter_para_cadeia(sexo)))) {
				caso 'M':
						total_homens++
						soma_salario_M += salario
						se (total_homens == 1) maior_salario_M = salario
						senao se (salario > maior_salario_M) maior_salario_M = salario
					pare
				caso 'F':
						total_mulheres++
						se (salario > 1000.0) acima_mil_F++
					pare
				caso contrario:
					escreva("Sexo biológico inválido :/\n")
					escreva("Funcionário não cadastrado\n")
					escreva("Tente novamente\n")
			}
			escreva("-------------\n")
			enquanto (verdadeiro) {
				escreva("Continuar [S/N]? ")
				leia(resp)
				resp = ty.cadeia_para_caracter(tx.caixa_alta(ty.caracter_para_cadeia(resp)))
				se (resp == 'S' ou resp == 'N') pare
				senao escreva("Opção inválida. Somente 'S' ou 'N' :/\n")
			}
			se (resp == 'N') pare
		}
		
		media_salario_M = soma_salario_M / total_homens
		
		escreva("============================================\n")
		escreva("Total de funcionários: ", total_pessoas, "\n")
		escreva("Total de homens: ", total_homens, "\n")
		escreva("Total de mulheres: ", total_mulheres, "\n")
		escreva("--------------------------------------------\n")
		escreva("Média salarial entre homens: R$", m.arredondar(media_salario_M, 2), "\n")
		escreva("Maior salario entre homens: R$", m.arredondar(maior_salario_M, 2), "\n")
		escreva("Total de mulheres com salário acima de R$1000.00: ", acima_mil_F, "\n")
		escreva("============================================\n")
		
	}
}

/*
 * Programa pergunte quantas pessoas serão cadastradas
 * e o peso de referência a se considerar. Depois disso, pergunte o
 * peso e o sexo de cada pessoa e analise se cada uma está dentro
 * do limite de peso ou não. No final de tudo, mostre quantos homens
 * e quantas mulheres estão acima do limite de referência.
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx

	funcao inicio()
	{
		caracter sexo = ' '
		
		inteiro peso = 0
		inteiro cont = 0
		inteiro total = 0
		inteiro total_homens = 0
		inteiro total_mulheres = 0
		
		escreva("Quatas pessoas você quer cadastrar? ")
		leia(cont)
		
		inteiro i = 1
		enquanto (i <= cont) {
			escreva("==================================\n")
			escreva("   PESO DENTRO DO LIMITE (50Kg)   \n")
			escreva("==================================\n")
			escreva(tx.preencher_a_esquerda(' ', 15, t.inteiro_para_cadeia(i, 10)), " de ", cont, "\n")
			escreva("----------------------------------\n")
			
			escreva("Peso (Kg): ")
			leia(peso)
			escreva("Sexo [M/F]: ")
			leia(sexo)
			
			se (peso > 50.0) {
				total++
				escolha (t.cadeia_para_caracter(
					tx.caixa_alta(
						t.caracter_para_cadeia(sexo)
					)
				)) {
					caso 'M':
						total_homens++
						pare
					caso 'F':
						total_mulheres++
						pare
				}
			}
			i++
		}

		escreva("==================================\n")
		escreva("Ao todo, temos ", total, " pessoas acima do limite de 50 Kg\n")
		se (total_homens > 0 e total_mulheres > 0) {
			escreva("E dessas pessoas, ", total_homens, " são homen(s) e ", total_mulheres, " mulhere(s).\n")
		} senao se (total_homens == 0 e total_mulheres > 0) {
			escreva("E dessas pessoas, todas são mulhere(s).\n")
		} senao se (total_homens > 0 e total_mulheres == 0) {
			escreva("E dessas pessoas, todas são homen(s).\n")
		}
	}
}

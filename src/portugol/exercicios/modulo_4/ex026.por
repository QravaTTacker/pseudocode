/*
 * Faça um programa que leia o nome e a idade de várias pessoas. 
 * No final, mostre o nome da pessoa mais velha e da mais nova.
 * O programa também deverá fazer a validação dos dados de entrada:
 * - O nome deve ter pelo menos 3 letras.
 * - A idade deve ser um número entre 1 e 130.
 * - O usuário deverá responder se quer continuar, e o
 * programa só aceitará as respostas S ou N.
 */

programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
		cadeia nome = ""
		cadeia idade = ""
		cadeia resp = ""

		inteiro idade_int = 0
		caracter resp_char = ' '
		logico resp_bool = falso

		inteiro i = 1
		inteiro soma = 0
		inteiro media = 0

		cadeia mais_novo = "NULL"
		cadeia mais_velho = "NULL"
		inteiro menor_idade = 0
		inteiro maior_idade = 0
		
		faca {
			escreva("==============================\n")
			escreva("          ", i, "ª PESSOA     \n")
			escreva("==============================\n")
			
			faca {
				escreva("NOME: ")
				leia(nome)
				se (tx.numero_caracteres(nome) > 2) pare
				senao escreva("<<ERRO>> O nome deve conter pelo menos 3 letras.\n")
			} enquanto (verdadeiro)

			faca {
				escreva("IDADE: ")
				leia(idade)
				se (t.cadeia_e_inteiro(idade, 10)) {
					idade_int = t.cadeia_para_inteiro(idade, 10)
					se (idade_int >= 1 e idade_int <= 130) {
						se (i == 1) {
							menor_idade = idade_int
							maior_idade = idade_int
							mais_novo = nome
							mais_velho = nome
						} senao {
							se (idade_int > maior_idade) {
								maior_idade = idade_int
								mais_velho = nome
							} senao se (idade_int == maior_idade) {
								mais_velho += ", " + nome
							} senao se (idade_int < menor_idade) {
								menor_idade = idade_int
								mais_novo = nome
							} senao se (idade_int == menor_idade) {
								mais_novo += ", " + nome
							}
						}
						soma += idade_int
						pare
					} senao {
						escreva("<<ERRO>> A idade deve estar entre 1 e 130 anos.\n")
					}
				} senao {
					escreva("<<ERRO>> A idade deve ser restritamente um valor inteiro.\n")
				}
			} enquanto (verdadeiro)

			escreva("----------------\n")
			escreva("Continuar? [S/N]\n")
			faca {
				escreva(">>> ")
				leia(resp)
				se (t.cadeia_e_caracter(resp)){
					resp_char = t.cadeia_para_caracter(resp)
					se (t.caracter_e_logico(resp_char)) {
						se (t.caracter_para_logico(resp_char)) {
							i++
							resp_bool = verdadeiro
						} senao {
							escreva("Saindo...\n")
							u.aguarde(1000)
							resp_bool = falso
						}
						pare
					}
				}
				escreva("<<ERRO>> Espera uma resposta do tipo 'S' ou 'N'.\n")
			} enquanto (verdadeiro)
			
		} enquanto (resp_bool)
		
		media = soma / i
		
		escreva("=======================================\n")
		escreva("Ao todo, você cadastrou ", i, " pessoa(s).\n")
		escreva("A média de idades é de ", media, " anos.\n")
		se (i == 1) {
			escreva(mais_novo, " foi a única pessoa cadastrada.\n")
			escreva("Logo, ele é o mais novo e o mais velho no sistema.\n")
		} senao {
			escreva("Pessoa(s) mais nova(s): [", mais_novo, "] com ", menor_idade, " anos.\n")
			escreva("Pessoa(s) mais velha(s): [", mais_velho, "] com ", maior_idade, " anos.\n")
		}
	}
}

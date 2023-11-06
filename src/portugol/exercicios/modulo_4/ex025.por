/*
 * Faça um programa que leia vários valores pelo teclado e no final, mostre a 
 * soma entre todos eles. O programa também deverá fazer a validação dos dados 
 * de entrada:
 * - O número digitado deve estar entre 1 e 10.
 * - O usuário deverá responder se quer continuar, e o
 * programa só aceitará as respostas S ou N.
 */

programa
{
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u

	funcao inicio()
	{
		inteiro i = 1
		inteiro soma = 0

		faca {
			painel(i)
			validar_valor(soma)
		} enquanto (validar_resp(i))

		escreva("----------------------------------------------\n")
		escreva("Ao todo, você digitou ", i, " valores.\n")
		escreva("A soma entre eles é de ", soma, ".\n")
	}

	funcao vazio painel(inteiro i){
		escreva("-----------------------------------\n")
		escreva("             ", i , "º VALOR       \n")
		escreva("-----------------------------------\n")
		escreva("Digite um valor entre 1 e 10.\n")
		escreva("Obs: Valores fracionais são ignorados\n")
	}

	funcao vazio validar_valor(inteiro &soma) {
		cadeia valor = ""
		inteiro valor_int = 0
		enquanto (verdadeiro) {
			escreva(">>> ")
			leia(valor)
			se (t.cadeia_e_inteiro(valor, 10) ou t.cadeia_e_real(valor)) {
				se (t.cadeia_e_real(valor))
					valor_int = t.real_para_inteiro(t.cadeia_para_real(valor))
				senao
					valor_int = t.cadeia_para_inteiro(valor, 10)
				se (1 <= valor_int e valor_int <= 10) {
					soma += valor_int
					pare
				} senao {
					escreva("<<ERRO>> O valor deve estar entre 1 e 10.\n")
				}
			} senao {
				escreva("<<ERRO>> O valor deve ser restritamente um número inteiro.\n")
			}
		}
	}

	funcao logico validar_resp(inteiro &i) {
		cadeia resp = ""
		caracter resp_char = ' '
		logico retorno = falso
		escreva("Continua? [S/N]\n")
		enquanto (verdadeiro) {
			escreva(">>> ")
			leia(resp)
			se (t.cadeia_e_caracter(resp)) {
				resp_char = t.cadeia_para_caracter(resp)
				se (t.caracter_e_logico(resp_char)) {
					se (t.caracter_para_logico(resp_char)) {
						i++
						limpa()
						retorno = verdadeiro
					} senao {
						escreva("Parando...\n")
						u.aguarde(500)
						retorno = falso
					}
					pare
				}
			}
			escreva("<<ERRO>> É esperado uma resposta do tipo 'S' ou 'N'.\n")
		}
		retorne retorno
	}
}

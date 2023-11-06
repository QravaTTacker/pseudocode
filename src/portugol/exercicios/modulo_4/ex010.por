/*
 * Faça um programa que leia o NOME, o SEXO e a IDADE de 5 pessoas.
 * No final mostre os dados dos HOMENS e das MULHERES mais JOVENS
 * e mais VELHOS, separadamente.
 */

programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> t

	funcao inicio()
	{
		inteiro idade = 0
		inteiro homem_novo = 0
		inteiro homem_velho = 0
		inteiro mulher_nova = 0
		inteiro mulher_velha = 0

		cadeia nome = ""
		cadeia homem_mais_novo = "NULL"
		cadeia homem_mais_velho = "NULL"
		cadeia mulher_mais_nova = "NULL"
		cadeia mulher_mais_velha = "NULL"

		caracter sexo = ' '
		inteiro cont_homem = 1
		inteiro cont_mulher = 1
		
		inteiro cont = 1
		enquanto (cont <= 5) {
			escreva("-----------------------\n")
			escreva("       ",cont,"ª PESSOA\n")
			escreva("-----------------------\n")
			escreva("NOME: ")
			leia(nome)
			escreva("IDADE: ")
			leia(idade)
			escreva("SEXO [M/F]: ")
			leia(sexo)
			escolha (t.cadeia_para_caracter(tx.caixa_alta(t.caracter_para_cadeia(sexo)))){
				caso 'M':
					se (cont_homem == 1) {
						homem_novo = idade
						homem_velho = idade
						homem_mais_novo = nome
						homem_mais_velho = nome
					} senao {
						se (idade > homem_velho) {
							homem_velho = idade
							homem_mais_velho = nome
						} senao se (idade == homem_velho) {
							homem_mais_velho += ", " + nome
						}
						se (idade < homem_novo) {
							homem_novo = idade
							homem_mais_novo = nome
						} senao se (idade == homem_novo) {
							homem_mais_novo += ", " + nome
						}
					}
					cont_homem++
					pare
				caso 'F':
					se (cont_mulher == 1) {
						mulher_nova = idade
						mulher_velha = idade
						mulher_mais_velha = nome
						mulher_mais_nova = nome
					} senao {
						se (idade > mulher_velha) {
							mulher_velha = idade
							mulher_mais_velha = nome
						} senao se (idade == mulher_velha) {
							mulher_mais_velha += ", " + nome
						}
						se (idade < mulher_nova) {
							mulher_nova = idade
							mulher_mais_nova = nome
						} senao se (idade == mulher_nova) {
							mulher_mais_nova += ", " + nome
						}
					}
					cont_mulher++
					pare
				caso contrario:
					escreva("Não foi possível de cadastrar o usuário :/\n" )
					escreva("Verefique o sexo informado e tente novamente.\n")
			}
			cont++
		}
		escreva("======================================================================\n")
		se (cont_mulher != 1) {
			se (mulher_nova != mulher_velha) {
				escreva(mulher_mais_velha, " é/são a(s) mulher/mulheres mais velha(s), com a idade de ", mulher_velha, " anos!\n")
				escreva(mulher_mais_nova, " é/são a(s) mulher/mulheres mais nova(s), com a idade de ", mulher_nova, " anos!\n")
			} senao {
				escreva(mulher_mais_nova, " é/são a(s) mulher/mulheres cadastradas, com a idade de ", mulher_nova, " anos!\n")
			}
		} senao {
			escreva("Nenhuma mulher foi cadastrada.\n")
		}
		escreva("----------------------------------------------------------------------\n")
		se (cont_homem != 1) {
			se (homem_novo != homem_velho) {
				escreva(homem_mais_novo, " é/são o(s) homem/homens mais novo(s), com a idade de ", homem_novo, " anos!\n")
				escreva(homem_mais_velho, " é/são o(s) homem/homens mais velho(s), com a idade de ", homem_velho, " anos!\n")
			} senao {
				escreva(homem_mais_novo, " é/são o(s) homem/homens cadastrados, com a idade de ", homem_novo, " anos!\n")
			}
		} senao {
			escreva("Nenhum homem foi cadastrado.\n")
		}
		escreva("======================================================================\n")
	}
}

/*
 * Faça um programa que crie um jogo de campo minado em uma matriz 4x4
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u

	const inteiro SIZE = 4

	funcao inicio()
	{
		caracter matriz[SIZE][SIZE] = {
			{'-', '-', '-', '-'},
			{'-', '-', '-', '-'},
			{'-', '-', '-', '-'},
			{'-', '-', '-', '-'}
		}

		inteiro linha = 0
		inteiro coluna = 0
		inteiro bombas = 0

		enquanto (bombas < SIZE) {
			linha = sorteia(0, SIZE - 1)
			coluna = sorteia(0, SIZE - 1) 
			se (matriz[linha][coluna] == '-') {
				matriz[linha][coluna]  = '@'
				bombas++
			}
		}

		inteiro vidas = 3
		inteiro acertos = 0

		faca {
			faca {
				escreva("==============\n")
				para (inteiro i = 0; i < u.numero_linhas(matriz); i++) {
					escreva(" ")
						para (inteiro j = 0; j < u.numero_colunas(matriz); j++) {
						se (matriz[i][j] == '-' ou matriz[i][j] == '@') escreva("[?]")
						senao escreva("[", matriz[i][j], "]")
					}
					escreva("\n")
				}
				escreva("==============\n")
				escreva("Vidas: ", vidas, "\n")
				escreva("==============\n")
				faca {
					escreva("Linha: ")
					leia(linha)
				} enquanto (nao (linha > 0 e linha < 6))
				escreva("-----------------\n")
				faca {
					escreva("Coluna: ")
					leia(coluna)
				} enquanto (nao (coluna > 0 e coluna < 6))
				linha--
				coluna--
				limpa()
				se (matriz[linha][coluna] == '@' ou matriz[linha][coluna] == '-') pare
				senao escreva("Essa posição já foi escolhida!\n")
			} enquanto (verdadeiro)
			se (matriz[linha][coluna] == '@') {
				matriz[linha][coluna] = '*'
				vidas--
			} senao {
				matriz[linha][coluna] = 'V'
				acertos++
			}
		} enquanto (vidas > 0 ou acertos == (SIZE * SIZE) - SIZE)

		escreva("==============\n")
		para (inteiro i = 0; i < u.numero_linhas(matriz); i++) {
			escreva(" ")
			para  (inteiro j = 0; j < u.numero_colunas(matriz); j++)
				escreva("[", matriz[i][j], "]")
			escreva("\n")
		}
		escreva("==============\n")

		se (vidas > 0) escreva("Você Ganhou!\n")
		senao escreva("Você Perdeu :/\n")
	}
}

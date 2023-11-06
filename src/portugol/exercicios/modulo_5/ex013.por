/*
 * Faça um programa que preencha uma matriz 5x5 com números sorteados. 
 * Depois mostre a matriz na tela e por fim calcule:
 * - A média entre todos os valores sorteados
 * - Quais são os valores que estão na 2° linha e estão acima da média
 * - Quais são os valores que estão na 3° coluna e estão abaixo da média
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u

	const inteiro SIZE = 5

	funcao inicio()
	{
		inteiro matriz[SIZE][SIZE]
		
		inteiro soma = 0
		real media  = 0.0
		inteiro acima_linha_2 = 0
		inteiro abaixo_coluna_3 = 0

		para (inteiro i = 0; i < u.numero_linhas(matriz); i++) {
			para(inteiro j = 0; j < u.numero_colunas(matriz); j++) {
				matriz[i][j] = sorteia(0, 9)
				soma += matriz[i][j] 
				escreva("[", matriz[i][j], "]")
			}
			escreva("\n")
		}

		media = t.inteiro_para_real(soma) / (SIZE * SIZE)

		escreva("==========================\n")
		escreva("Soma: ", soma, "\n")
		escreva("Média: ", m.arredondar(media, 2), "\n")

		escreva("-----------------------------------\n")
		escreva("Valores da 2º linha acima da média:\n")

		para (inteiro i = 0; i < u.numero_colunas(matriz); i++)
			se (matriz[1][i] > media) 
				escreva(matriz[1][i], "; ")

		escreva("\n------------------------------------\n")
		escreva("Valores da 3º coluna acima da média:\n")

		para (inteiro i = 0; i < u.numero_linhas(matriz); i++)
			se (matriz[i][2] > media)
				escreva(matriz[i][2], "; ")
	}
}

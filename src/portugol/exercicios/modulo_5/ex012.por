/*
 * Faça um programa que preencha uma matriz 3x3 com números
 * sorteados pelo teclado. Depois analise a matriz inteira procurando
 * o maior valor sorteado. Mostre esse valor e depois mostre em que
 * posições ele aparece dentro da matriz.
 */

programa
{
	inclua biblioteca Util --> u

	const inteiro SIZE = 3

	funcao inicio()
	{
		inteiro maior = 0
		inteiro matriz[SIZE][SIZE]

		para (inteiro i = 0; i < u.numero_linhas(matriz); i++)
			para (inteiro j = 0; j < u.numero_colunas(matriz); j++) {
				escreva("Matriz[", i, "][", j, "] =  ")
				leia(matriz[i][j])
				se (i == 0 e j == 0)
					maior = matriz[i][j]
				senao se (matriz[i][j] > maior)
					maior = matriz[i][j]
			}

		escreva("--------------------------\n")
		escreva("O maior valor é ", maior, "\n")
		escreva("--------------------------\n")
		escreva("E ele está no(s) indíces: \n")
		para (inteiro i = 0; i < u.numero_linhas(matriz); i++)
			para (inteiro j = 0; j < u.numero_colunas(matriz); j++)
				se (maior == matriz[i][j])
					escreva("[", i, "][", j, "]; ")
		escreva("\n--------------------------\n")
	}
}

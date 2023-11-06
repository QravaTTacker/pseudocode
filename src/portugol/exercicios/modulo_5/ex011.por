/*
 * Faça um programa que preencha uma matriz 4x4 com números
 * sorteados pelo computador. No final, mostre a matriz na tela e
 * mostre também o somatório dos valores de cada coluna.
 */

programa
{
	const inteiro SIZE = 4

	funcao inicio()
	{
		inteiro matriz[SIZE][SIZE]
		inteiro somatorio[SIZE] = {0, 0, 0, 0}

		para (inteiro i = 0; i < SIZE; i++) {
			para (inteiro j = 0; j < SIZE; j++) {
				matriz[i][j] = sorteia(0, 9)
				somatorio[j] += matriz[i][j]
				escreva("[", matriz[i][j], "]")
			}
			escreva("\n")
		}

		escreva("--------------------\n")
		para (inteiro i = 0; i < SIZE; i++)
			escreva("Soma da ", i + 1, "ª coluna: ", somatorio[i], "\n")
	}
}

/*
 * Faça um programa que preencha um vetor com os 15 primeiros
 * elementos da sequência de Fibonacci.
 */

programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro vetor[15]

		vetor[0] = 0
		vetor[1] = 1

		para (inteiro i = 2; i < u.numero_elementos(vetor); i++)
			vetor[i] = vetor[i - 1] + vetor[i - 2]

		para (inteiro i = 0; i < u.numero_elementos(vetor); i++)
			escreva("[", vetor[i], "] ")
	}
}

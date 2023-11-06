/*
 * Faça um programa que declare um vetor com 10 posições
 * numéricas e coloque o valor 3 na primeira posição. A partir daí,
 * cada posição seguinte será calculada como sendo o dobro da posição
 * anterior. O programa deverá mostrar o vetor gerado automaticamente
 * na tela.
 */

programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro vetor[10]
		vetor[0] = 3
		
		para (inteiro i = 1; i < u.numero_elementos(vetor); i++)
			vetor[i] = vetor[i - 1] * 2

		para (inteiro i = 0; i < u.numero_elementos(vetor); i++)
			escreva(i, ":{", vetor[i], "} ")
	}
}

/*
 * Faça um programa que declare um vetor com 10 posições
 * numéricas e preencha ele com números sorteados, mostrando os valores
 * na tela. Depois mostre o vetor na ordem invertida na tela
 */

programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro vetor[10]
		para (inteiro i = 0; i < u.numero_elementos(vetor); i++) {
			vetor[i] = sorteia(1, 10)
			escreva(i, ":{", vetor[i], "} ")
		}
		
		escreva("\n")
		para (inteiro i = u.numero_elementos(vetor) - 1; i >= 0; i--)
			escreva(i, ":{", vetor[i], "} ")
	}
}

/*
 * Faça um programa que declare um vetor com 10 posições
 * numéricas e peça para o usuário digitar um valor qualquer, colocando
 * esse número na primeira posição do vetor. A partir daí, todas as
 * posições seguintes serão calculadas baseadas no valor da posição
 * anterior, adicionando 5 unidades ao valor.
 */

programa
{
	
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro vetor[10]
		inteiro valor = 0
		
		escreva("Digite um valor: ")
		leia(valor)

		vetor[0] = valor
		para (inteiro i = 1; i < u.numero_elementos(vetor); i++) {
			escreva(i - 1, ":{", vetor[i - 1], "} ")
			vetor[i] = vetor[i - 1] + 5
		}
	}
}

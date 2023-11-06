/*
 * Faça um programa que preencha um vetor com 10 números sorteados.
 * No final, mostre a análise desses números.
 */

programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		const inteiro SIZE = 10
		inteiro vetor[SIZE]

		inteiro valor = 0
		inteiro soma_pares = 0
		inteiro quant_impares = 0
		inteiro maior = 0
		inteiro ocorrencias = 0

		para (inteiro i = 0; i < u.numero_elementos(vetor); i++) {
			valor = sorteia(1, SIZE)
			vetor[i] = valor
			escreva(valor, ".. ")
			se (valor % 2 == 0) 
				soma_pares += valor
			senao quant_impares++
			se (i == 0) {
				maior = valor
			} senao se (maior < valor) {
				maior = valor
			}
		}
		
		escreva("\n\nAnalisando os valores sorteados...\n")
		
		escreva("---> Valores pares nas posições: ")
		para (inteiro i = 0; i < u.numero_elementos(vetor); i++)
			se (vetor[i] % 2 == 0) escreva(i, " ")
		escreva("\n\t---> Soma dos pares: ", soma_pares, "\n")

		escreva("---> Valores ímpares nas posições: ")
		para (inteiro i = 0; i < u.numero_elementos(vetor); i++)
			se (vetor[i] % 2 != 0) escreva(i, " ")
		escreva("\n\t---> Quantidade de ímpares: ", quant_impares, "\n")

		escreva("Maior valor sorteado: ", maior)
		escreva("\n\t---> Valor maior ocorreu nas posições: ")
		para (inteiro i = 0; i < u.numero_elementos(vetor); i++)
			se (vetor[i] == maior) {
				escreva(i, " ")
				ocorrencias++
			}
		escreva("\n\t--->Total de ocorrências: ", ocorrencias, "\n")
	}
}

/*
 * Faça um programa que tenha uma função analisar() que receba um vetor numérico 
 * (de qualquer tamanho) como parâmetro e mostre uma análise desses valores, incluindo:
 * - O tamanho do vetor recebido
 * - Quais foram os valores passados
 * - As posições onde encontramos valores pares
 * - As posições onde encontramos valores ímpares
 */

programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx

	const inteiro SIZE = 100

	funcao vazio inicio()
	{
		inteiro vet[SIZE]
		para (inteiro i = 0; i < u.numero_elementos(vet); i++)
			vet[i] = sorteia(1, SIZE)
		analizar(vet)
	}

	funcao vazio analizar(inteiro vetor[]) 
	{
		cadeia log = ""
		
		inteiro i
		inteiro size = u.numero_elementos(vetor)

		escreva("VETOR(", size, ")\n{\n")
		para (i = 0; i < size; i++) {
			log = "     [" + i + "] => " + vetor[i] + ","
			escreva(log, tx.preencher_a_esquerda(' ',  18 - tx.numero_caracteres(log), ""))
			se (vetor[i] % 2 == 0) escreva("(PAR)\n")
			senao escreva("(ÍMPAR)\n")
		}
		escreva("}\n")
	}
}

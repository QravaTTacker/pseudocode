/*
 * Programa que leia dois números inteiros e mostre-os em ordem crescente. 
 * Se por acaso eles forem iguais, informe que não existe a necessidade de 
 * colocá-los em ordem.
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	
	funcao inicio()
	{
		inteiro v1 = 0
		inteiro v2 = 0
		
		escreva("1º valor: ")
		leia(v1)
		escreva("2º valor: ")
		leia(v2)
		
		se (v1 != v2)
		{
			inteiro maior = t.real_para_inteiro
					(
						m.maior_numero(t.inteiro_para_real(v1), t.inteiro_para_real(v2))
					)
			inteiro menor = t.real_para_inteiro
					(
						m.menor_numero(t.inteiro_para_real(v1), t.inteiro_para_real(v2))
					)
			escreva("Os valores digitados em ordem são: ", menor, " e ", maior, "\n")
		}
		senao
			escreva("Ambos os valores digitados são iguais\n")
	}
}

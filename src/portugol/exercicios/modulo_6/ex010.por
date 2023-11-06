/*
 * Faça uma função que identifica qual é o maior valor de um vetor e as suas posições.
 */

programa
{
	inclua biblioteca Util --> u
	
	const inteiro SIZE = 10
	
	funcao inicio()
	{
		inteiro vetor[SIZE]
		para (inteiro i = 0; i < u.numero_elementos(vetor); i++)
			escreva(vetor[i] = sorteia(1, SIZE), " ")
		escreva("\n")
		maior_no_vetor(vetor)
	}

	funcao vazio maior_no_vetor(inteiro vetor[])
	{
		inteiro maior = vetor[0]
		para (inteiro i = 1; i < u.numero_elementos(vetor); i++)
			se (maior < vetor[i])
				maior = vetor[i]

		escreva("O maior valor é ", maior, " ele está no(s) índice(s):")
		
		para (inteiro i = 0; i < u.numero_elementos(vetor); i++)
			se ( maior == vetor[i] )
				escreva(" ", i)
		escreva("\n")
	}
}

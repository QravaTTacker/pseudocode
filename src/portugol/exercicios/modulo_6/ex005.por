/*
 * Faça um programa que mostre a uma contagem personalizada na tela, utilizando
 * uma função chamada contagem().
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t

	funcao inicio()
	{
		contagem(0, 10, 2)
		contagem(10, 1, 1)
		contagem(10, 100, -10)
		contagem(50, 10, 5)
	}

	funcao vazio contagem(inteiro start, inteiro end, inteiro passo)
	{
		se (passo == 0) passo = 1
		senao passo = t.real_para_inteiro(
						   m.valor_absoluto(
							    t.inteiro_para_real(passo)))

		inteiro maior = t.real_para_inteiro(
							 m.maior_numero(
								  t.inteiro_para_real(start),
								  t.inteiro_para_real(end)))

		inteiro menor = t.real_para_inteiro(
							 m.menor_numero(
								  t.inteiro_para_real(start),
								  t.inteiro_para_real(end)))

		para (inteiro i = start; i <= maior; i += passo)
			escreva(i, " -> ")

		escreva("FIM\n")
	}
}

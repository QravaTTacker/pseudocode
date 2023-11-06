/*
 * Resolva o problema encontrado no exercício 073, criando compatibilidade
 * para contagens regressivas.
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

		passo = t.real_para_inteiro(
					 m.valor_absoluto(
						 t.inteiro_para_real(passo)))
		se (passo == 0)
			passo = 1

		se (passo > 0 e start > end)
			passo *= -1

		escreva("---------- CONTANDO DE ", start, " ATÉ ", end, " (", passo, ") ----------\n")
		para (inteiro i = start; i != end + passo; i += passo)
			escreva(i, " -> ")

		escreva("FIM\n\n")
	}
}

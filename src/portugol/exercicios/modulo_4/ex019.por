/*
 * Faça um programa que crie uma contagem personalizada pelo
 * usuário, que vai indicar o início, o fim e o passo da contagem.
 * ATENÇÃO! Considere os casos onde haja uma contagem regressiva também!
 */

programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ty
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		inteiro start = 0
		inteiro end = 0
		inteiro fator = 0
		
		escreva("Início: ")
		leia(start)
		
		escreva("Fim: ")
		leia(end)
		
		escreva("Salto: ")
		leia(fator)

		fator = ty.real_para_inteiro(m.valor_absoluto(ty.inteiro_para_real(fator)))
		se (start <= end)
			para(inteiro i = start; i <= end; i += fator)
				escreva(i, "... ")
		senao
			para(inteiro i = start; i >= end; i -= fator)
				escreva(i, "... ")
		escreva("ACABOU!\n")
	}
}

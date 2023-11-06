/*
 * Crie uma função chamada primo() que receba um valor e retorne verdadeiro caso
 * o argumento passado seja primo, ao contrário, a função deve retornar falso.
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	
	funcao inicio()
	{
		inteiro valor = 0
		escreva("Digite um valor: ")
		leia(valor)
		para (inteiro i = 1; i <= valor; i++)
			se (eh_primo(i)) escreva(i, " é um número primo!\n")
			senao escreva(i, " não é um número primo :/\n")
	}

	funcao logico eh_primo(inteiro valor) 
	{
		se (valor == 2)
			retorne verdadeiro
			
		para (inteiro i = 2; i <= t.real_para_inteiro(m.raiz(t.inteiro_para_real(valor), 2.0)); i++)
			se (valor % i == 0)
				retorne falso
		retorne verdadeiro
	}
}

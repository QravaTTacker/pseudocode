/*
 * Faça um programa que pergunte ao usuário quantos
 * elementos da sequência de Fibonacci serão exibidos na tela.
 * Seu programa deverá mostrar esses elementos na tela, sabendo
 * que a sequência de Fibonacci é composta pelos elementos base
 * 0 e 1. A partir daí, cada elemento posterior é calculado pela
 * soma dos dois anteriores.
 * Ex: 0 1 1 2 3 5 8 13 21 34 55 89
 */

programa
{
	funcao inicio()
	{
		inteiro quantidade = 0
		
		inteiro t1 = 0
		inteiro t2 = 1
		inteiro fib = 0
		
		escreva("Quantidade de termos: ")
		leia(quantidade)

		para (inteiro i = 0; i < quantidade; i++) {
			fib = t1 + t2
			escreva(fib, " ")
			t1 = t2
			t2 = fib
		}
	}
}

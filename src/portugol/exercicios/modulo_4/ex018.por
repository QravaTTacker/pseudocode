/*
 * Faça um programa que leia um número inteiro qualquer e mostre na tela a sua tabuada.
 */

programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro valor = 0
		
		escreva("=======================\n")
		escreva("        TABUADA        \n")
		escreva("=======================\n")
		escreva(">>> ")
		leia(valor)
		
		para (inteiro i = 1; i <= 10; i++) {
			escreva(valor, " x ",  i, " = ", (valor * i ), "\n")
			u.aguarde(200)
		}
	}
}

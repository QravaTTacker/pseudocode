/*
 * Faça um programa que leia um número inteiro qualquer e mostre na tela 
 * se ele é ou não um número PRIMO.
 */

programa
{
	inclua biblioteca Matematica --> m	
	inclua biblioteca Tipos --> ty
	
	funcao inicio()
	{
		inteiro valor = 0
		logico primo = verdadeiro
		
		escreva("Valor: ")
		leia(valor)

		para (inteiro i = 2; i < valor; i++)
			se (valor % i == 0) {
				primo = falso
				escreva("[", i, "]... ")
			} senao {
				escreva(i, "... ")
			}
			
		escreva("FIM\n")
		
		se (primo) escreva(valor, " é primo!\n")
		senao escreva(valor, " não é primo!\n")
	}
}

/*
 * Crie um programa que mostre um triângulo
 * desenhando na tela, composto por vários símbolos de *.
 * O usuário deverá indicar quantos níveis o triângulo vai ter.
 * 
 *      **
 *      ****
 *      ******
 *      ********
 *      **********
 *
 */

programa
{
	funcao inicio()
	{
		inteiro andares = 0
		escreva("Quanto andares? ")
		leia(andares)

		para (inteiro i = 1; i <= andares; i++) {
			para (inteiro j = 0; j < i * 2; j++) 
				escreva("*")
			escreva("\n")
		}
	}
}

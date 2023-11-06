/*
 * Crie um programa que mostre várias tabuadas na sequência.
 * O usuário vai digitar o primeiro e o ultima valor e o sistema vai
 * gerar múltiplas tabuadas.
 */

programa
{
	funcao inicio()
	{
		inteiro start = 0
		inteiro end = 0
		inteiro fator = 0
		
		escreva("Tabuada INICAL: ")
		leia(start)
		escreva("Tabuada FINAL: ")
		leia(end)

		se (start < end) fator = 1
		senao fator = -1
		
		para (inteiro i = start; i != end + fator; i += fator) {
			escreva("----------------------\n")
			escreva("     TABUADA DO ", i, "     \n")
			escreva("----------------------\n")
			para (inteiro j = 1; j < 11; j++)
				escreva(i, " x ", j, " = ", (i * j), "\n")
			escreva("\n")
		}
	}
}

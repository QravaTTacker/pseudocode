/*
 * Faça uma função chamada somador() que receba dois valores e retorne a soma deles.
 */

programa
{
	funcao inicio()
	{
		real x = 0.0
		real y = 0.0
		real s = 0.0
		
		escreva("1º valor: ")
		leia(x)
		escreva("2º valor: ")
		leia(y)
		
		escreva("------------------\n")
		
		s = somador(x, y)
		escreva("Soma: ", s, "\n")
	}

	funcao real somador(real valor_1, real valor_2) 
	{
		retorne valor_1 + valor_2 
	}
}

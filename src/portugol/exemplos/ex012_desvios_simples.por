programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		/*
		 * ============================= DESVIOS SIMPLES
		 * 
		 * Conceito: É um único agrupamento lógico que determina a execução de um bloco de
		 *           código conforme uma condição. Para que esse bloco possa ser executado, 
		 *           a condição deve ser verdadeira, caso contrário, o programa segue para as
		 *           próximas linhas.
		 * 
		 * Sintaxe:
		 * 			se (<condição>) 
		 * 			{
		 * 				<bloco de código>
		 * 			}
		 * 		
		 * Obs: Uma condição sempre vai ter uma comparação lógica ou um relacionamento dentre 
		 *      dados.Portanto, sempre será usado uma expressão que utiliza de operadores 
		 *      lógicos e relacionais:
		 * 
		 * 			se (valor > 2) 
		 * 			{
		 * 				escreva("O valor é maior que 2!")
		 * 			}
		 * 
		 * Obs: É necessário dar um recuo no código que está em um bloco. Chamamos isso de
		 *      indentação e o seu propósito está na orcanização do código.
		 * 
		 */
		 
		real n1 = 0.0
		real n2 = 0.0
		
		escreva("Nota 1: ")
		leia(n1)
		
		escreva("Nota 2: ")
		leia(n2)

		real media = (n1 + n2) / 2
		
		se ( media >= 7.0 ) 
		{
			escreva("Parabéns! ")
		}
		
		escreva("Sua média foi: ", m.arredondar(media, 2), " pontos\n")

		/*
		 * O programa só dará parabéns se a média for maior ou igual à 7.0
		 * 
		 * Obs: As chaves são opcionais para um único comando...
		 * 
		 * 		se (media >= 7.0) 
		 * 			escreva("Parabéns! ")
		 * 
		 */
	}
}

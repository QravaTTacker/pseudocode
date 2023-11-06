programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		/*
		 * ============================= DESVIOS COMPOSTOS
		 * 
		 * Conceito: Um condicional composto permite prever um comportamento para uma cláusula  
		 *           verdadeira e outro uma cláusula falsa. Aplicando ao contexto anterior, o 
		 *           programa seria capaz de mostrar uma mensagem exclusiva para quem tirou nota 
		 *           igual a média ou acima dela e outra para quem não alcançou a média.
		 * 
		 * Sintaxe:
		 *			se (<condição>) 
		 *			{
		 *				<bloco de código para o caso VERDADEIRO>
		 *			}
		 *			senao 
		 *			{
		 *				<bloco de código para o caso FALSO>		
		 *			}
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
			escreva("Aprovado!\n")
		} 
		senao 
		{
			escreva("Reprovado :/\n")
		}
		
		escreva("Sua média foi de: ", m.arredondar(media, 2), " pontos\n")

		/*
		 * Usando aquele conceito de chaves opcionais para comandos únicos:
		 *
		 * 		se (media >= 7.0) 
		 *			escreva("Aprovado!\n")
		 * 		senao
		 *			escreva("Reprovado :/\n")
		 * 
		 */
	}
}

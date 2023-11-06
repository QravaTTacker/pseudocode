programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		/*
		 * ============================= DESVIOS ANINHADOS
		 * 
		 * Conceito: Um condicional aninhado é um estrutura única que permiter juntar três ou mais 
		 *           comparações para um mesmo contexto. Seguindo o racioncínio ao exemplo anterior, 
		 *           poderíamos criar uma segunda verificação para identificar se o aluno estaria 
		 *           em recuperação conforme uma regra de negócio.
		 * 
		 * Obs: Regra de negócio estaria voltada aos requisitos de um software, mas imagine que para
		 *      o aluno ficar em recurepração a sua nova deve estre 6.9 e 4.0 pontos...
		 * 
		 * Sintaxe:
		 * 			se (<condição>) 
		 * 			{
		 * 				<bloco de código para o 1º caso VERDADEIRO>
		 * 			}
		 * 			senao se (<outra condição>)
		 * 			{
		 * 				<bloco de código para o 2º caso VERDADEIRO>
		 * 			}
		 * 			senao
		 * 			{
		 * 				<bloco de código para o caso FALSO>
		 * 			}
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
		senao se ( media >= 4.0 )
		{
			escreva("Em recuperação...\n")
		}
		senao 
		{
			escreva("Reprovado :/\n")
		}
		
		escreva("Sua média foi de: ", m.arredondar(media, 2), " pontos\n")

		/*
		 * Usando conceito de chaves opcionais na esturanha aninhada:
		 *
		 * 		se (media >= 7.0) 
		 * 			escreva("Aprovado!\n")
		 * 		senao se (media >= 4.0)
		 * 			escreva("Em recuperação...\n")
		 * 		senao
		 *			escreva("Reprovado :/\n")
		 */
	}
}

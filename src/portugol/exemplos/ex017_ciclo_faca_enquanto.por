programa
{
	funcao inicio()
	{
		/* 
		 * Conceito: A estrutura `faca... enquanto` é uma instrução que verificar uma determinada 
		 *           condição no fim e, se verdadeira, repete um bloco de código. 
		 *           Esse ciclo permitirá iterar ao menos uma vez, mesmo que a condição seja falsa.
		 * 
		 * Sintaxe:
		 * 			faca {
		 * 				<bloco de código>
		 * 			} enquanto(<condição>) 
 		 */
 		 
		inteiro valor = 1
		faca {
			escreva(valor, " ")
			valor++
		} enquanto ( valor <= 10 ) 

		/*
		 * Os ciclos `enquanto` e `faca... enquanto` são estruturas de repetição baseadas 
		 * com teste lógico e por isso são amplas. Irá depender se a verificação deve ser 
		 * feita no início ou no final loop.
		 */
	}
}

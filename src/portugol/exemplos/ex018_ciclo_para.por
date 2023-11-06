programa
{
	funcao inicio()
	{
		/* 
		 * Conceito: A estrutura `para` é uma instrução que verificar uma determinada 
		 *           condição no início e, se verdadeira, repete um bloco de código. 
		 *           Esse ciclo é apropriado para casos em que sabemos quantas vezes 
		 *           será necessário iterar. Por esse motivo, sua sintaxe é simplificada
		 *           em uma única linha.
		 * 
		 * Sintaxe:
		 * 			para (<inicio>; <fim>; <salto>) {
		 * 				<bloco de código>
		 * 			}
 		 */
 		 
		para ( inteiro valor = 1; valor <= 10; valor++ ) {
			escreva(valor, " ")
		} 

		/*
		 * Diferente dos ciclos anteriores, o ciclo `para` é uma estrutura baseada em 
		 * uma variável de controle, que determinará a quantidade de repetições. Por ser 
		 * um loop como qualquer outro, podemos omitir os fatores de `inicio` e `salto`
		 * e tranformá-lo em um enquanto, apesar de não ser apropriado.
		 */
	}
}

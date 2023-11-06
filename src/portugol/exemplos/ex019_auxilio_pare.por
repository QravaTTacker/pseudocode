programa
{
	funcao inicio()
	{
		/*
		 * Conceito: Na maioria das linguagens de programação implementam os auxiliadores de 
		 *           fluxo `break` e `continue`, que são respectivamente, `pare` e `continue`.
		 *           Eles servem para interferir em um controlador de fluxo (qualquer ciclo ou 
		 *           o desvio de múltipla escolha).
		 *           
		 *           break: Permite para um fluxo, ou seja, teria o efeito de parar uma repetição.
		 *           continue: Permite voltar imediatamente ao topo da estrutura. O que estiver 
		 *                     abaixo não será executado.
		 *                     
		 * Obs: Até o momento, não há o modificador `continue` no Portugol, por ser um comando 
		 *      redundante (ele pode ser substituído por um simples desvio condicional)
		 */

		inteiro valor = 0
		enquanto ( verdadeiro ) {
			escreva(valor, " -> [0] para parar: ")
			leia(valor)
			se ( valor == 0 ) {
				pare
			}
		}

		/*
		 * O ciclo acima sempre irá possuir uma condição verdadeira, portanto, ele é um loop
		 * infinito, mas o que irá parar é o comando `pare` dentro do condiciona que verifica
		 * se o valor é igual à 0.
		 */
	} 
}

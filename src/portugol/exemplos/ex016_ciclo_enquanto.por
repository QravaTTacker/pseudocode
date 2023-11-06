programa
{
	funcao inicio()
	{
		/* 
		 * Conceito: A estrutura `enquanto` é uma instrução que verificar uma determinada 
		 *           condição no início e, se verdadeira, repete um bloco de código. 
		 *           Por ser uma estrutura de repetição, ela deve possuir um ponto de parada, 
		 *           isto é, uma condição que será falsa em algum momento do programa.
		 * 
		 * Sintaxe:
		 * 			enquanto(<condição>) {
		 * 				<bloco de código>
		 * 			}
 		 */
 		 
 		inteiro valor = 1

 		enquanto ( valor <= 10 ) {
 			escreva(valor, " ")
 			valor++
 		}
 		
 		/*
 		 * O exemplo acima mostra uma repetição de 1 até 10 incrementando de 1 em 1.
 		 * 
 		 * O valor de incremento determina o salto que a loop faz para partir do inicio.
 		 * (estágio de declaração) até o fim (estágio de parada).
 		 */
	}
}

programa
{
	funcao inicio()
	{
		/* 
		 * Operadores são agentes capazes que submeter informações em processos de tratamento matemático e 
		 * lógicos. São por meio deles que nosso programa processa a informação.
		 * 
		 * 
		 * Há 5 principais grupos de operadores:
		 * 
		 * 1º) Operadores Aritméticos: Realizam cálculos aritméticos
		 * 2º) Operadores Relacionais: Realizam comparações lógicas
		 * 3º) Operadores Lógicos: Realizam múltiplas comparações lógicas (entre proposições lógicas)
		 * 4º) Operadores de Atribuição: Realizam atribuições e modificações no valor de uma variável
		 * 5º) Operadores de Incremento e Decremento: Adicionam ou subtraem uma unidade de uma variável
		 * 
		 */ 
		 
		/* ------------------- Operadores Aritméticos
		 * 
		 * + Adição 
		 * - Subtração
		 * * Multiplicação
		 * / Divisão (inteira ou real)
		 * % Resta da divisão
		 * 
		 * Obs: Para obter a divisão real é necessário que um dos operandos (dividendo ou divisor)
		 *      seja do tipo real. Para isso é necessário usar uma função interna que converte de 
		 *      inteiro para real.
		 * 
		 */
		
		inteiro valor1 = 7
		inteiro valor2 = 2
		
		escreva("------------- Aritméticos \n")
		escreva(valor1 + " + " + valor2 + " = " + (valor1 + valor2) + "\n")
		escreva(valor1 + " - " + valor2 + " = " + (valor1 - valor2) + "\n")
		escreva(valor1 + " * " + valor2 + " = " + (valor1 * valor2) + "\n")
		escreva(valor1 + " / " + valor2 + " = " + (valor1 / valor2) + "\n")
		escreva(valor1 + " % " + valor2 + " = " + (valor1 % valor2) + "\n")
		
	 	/* ------------------- Operadores Relacionais
		 * 
		 * == Igual a
		 * != Diferente que
		 * > Maior que
		 * < Menor que
		 * >= Maior ou igual a
		 * <= Menor ou igual a
		 * 
		 * Obs: Operadores relacionais fazem comparações entra dados e retornam apenas verdadeiro e falso.
		 * 
		 */
		
		escreva("\n------------- Relacionais \n")
		escreva(valor1 + " == " + valor2 + " = " + (valor1 == valor2) + "\n")
		escreva(valor1 + " != " + valor2 + " = " + (valor1 != valor2) + "\n")
		escreva(valor1 + " > " + valor2 + " = " + (valor1 > valor2) + "\n")
		escreva(valor1 + " < " + valor2 + " = " + (valor1 < valor2) + "\n")
		escreva(valor1 + " >= " + valor2 + " = " + (valor1 >= valor2) + "\n")
		escreva(valor1 + " <= " + valor2 + " = " + (valor1 <= valor2) + "\n")
		
 		/* ------------------- Operadores Lógicos
		 * 
		 * Negação: nao (unário)
		 * Conjunção: e (binário)
		 * Disjunção inclusiva: ou (binário)
		 * 
		 * Obs: Os operadores lógicos fazem comparações entre proposições e, assim como os operadores 
		 *      relacionais, retornam apenas verdadeiro e falso.
		 * 
		 */
		
		logico true = verdadeiro
		logico false = falso
		
		escreva("\n------------- Lógicos \n")
		
		escreva("=== Negação \n")
		escreva("nao " + true + " = " + (nao true) + "\n")
		escreva("nao " + false + " = " + (nao false) + "\n")
		
		escreva("\n=== Conjunção \n")
		escreva(true + " e " + true + " = " + (true e true) + "\n")
		escreva(false + " e " + true + " = " + (false e true) + "\n")
		escreva(true + " e " + false + " = " + (true e false) + "\n")
		escreva(false + " e " + false + " = " + (false e false ) + "\n")
		
		escreva("\n=== Disjunção inclusiva \n")
		escreva(true + " ou " + true + " = " + (true ou true) + "\n")
		escreva(false + " ou " + true + " = " + (false ou true) + "\n")
		escreva(true + " ou " + false + " = " + (true ou false) + "\n")
		escreva(false + " ou " + false + " = " + (false ou false) + "\n")
		
		/* ------------------- Operadores de Atribuição
		 * 
		 * Atribuição: =
		 * Atribuição Aritmética de Adição: +=
		 * Atribuição Aritmética de Subtração: -=
		 * Atribuição Aritmética de Multiplicação: *=
		 * Atribuição Aritmética de Divisão (inteiro ou real): /=
		 * Atribuição Aritmética de Módulo: %=
		 * 
		 * var = var + 5
		 * var += 5
		 *
		 * var = var - 2
		 * var -= 2
		 * 
		 * var = var 3.5
		 * var *= 3.5
		 * 
		 * var = var / 10
		 * var /= 10
		 * 
		 * Linguagem está com alguma limitação interna e não está permitindo fazer isso :/ (20/08/23)
		 * var = var % 60
		 * var %= 60
		 * 
		 */
		
		inteiro var = 5
		
		escreva("\n------------- Atribuição Aritmética \n")
		escreva("var = " + var + "\n")
		var += 5
		escreva("var += 5 -> " + var + "\n")
		var -= 2
		escreva("var -= 2 -> " + var + "\n")
		var *= 3
		escreva("var *= 3 -> " + var + "\n")
		var /= 2
		escreva("var /= 2 -> " + var + "\n")

		/* ------------------- Operadores de Incremento e Decremento
		 * 
		 * Incremento: var++
		 * Decremento: var--
		 * 
		 * var = var + 1
		 * var++
		 * 
		 * var = var - 1
		 * var--
		 * 
		 * Obs: No portugol, não há distinção de pré e pós incremento (sempre será pré incremento). 
		 *      Já na versão mobile, isso não se repete.
		 * 
		 */

		var = 2
		escreva("\n------------- Atribuição Aritmética \n")
		escreva("var: " + var + "\n")
		var++
		escreva("Incremento: " + var + "\n")
		var--
		escreva("Decremento: " + var + "\n")

		/* ------------------- Ordem de Precedência
		 * 
		 * Quando deparamos com um tratamento com vários operadores, devemos saber qual vai ser efetuado
		 * antes. Por esse motivo há a ordem de precedência natural dos operadores:
		 * 
		 * Incremento/Decremento > Aritméticos > Relacionais > Lógicos > Atribuição
		 * 
		 * 1º) Parênteses ()
		 * 2º) ++, --, nao, +, -, (unários)
		 * 3º) *, /, %
		 * 4º) +, - (binários)
		 * 5º) >=, <=, >, < 
		 * 6º) ==, !=
		 * 7º) e
		 * 8º) ou
		 * 9º) =, +=, -=, *=, /=, %=
		 * 
		 */
	}
}

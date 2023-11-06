programa
{
     funcao inicio()
     {
		/* 
		 * Conceito: Uma estrutura de múltipla escolha permite executar mais de um bloco de código em 
 		 *           uma sintaxe mais simplificada, entretanto, essa estrutura fica limitada apenas para
 		 *           verificações com caracteres ou valores numéricos. Além disso, é uma estrutura que 
 		 *           compara a igualdade de valores únicos e não um intervalo, por esse motivo, não dá 
 		 *           para usar expressões lógicas ou comparações relacionais entre valores.
 		 *
 		 * Sintaxe:
  		 * 			escolha (<variável de análise>) 
 		 * 			{
 		 * 				caso <valor 1>:
		 * 					<bloco de código para o 1º caso>
		 * 					pare
		 * 				caso <valor 2>:
		 * 					<bloco de código para o 2º caso>
		 * 					pare
		 * 				caso contrario: 
		 * 					<bloco de código para nenhum dos casos acima>
		 *			}
		 *  			
		 *  Obs: O comando `pare` é usado para indicar o término do bloco, caso ele não estivesse ali, 
		 *       o próximo bloco seria executado mesmo se a condição fosse falsa. Além disso, ele é 
		 *       opcional para a comparação `caso contrario`.
		 */

		caracter operador = ' '
		escreva("Digite um operador aritmético: ")
		leia(operador)

		escolha ( operador ) {
			caso '+':
				escreva("SOMA\n")
				pare
			caso '-':
				escreva("SUBTRAÇÃO\n")
				pare
			caso '*':
				escreva("MULTIPLICAÇÃO\n")
				pare
			caso '/':
				escreva("DIVISÃO\n")
				pare
			caso contrario:
				escreva("INVÁLIDO\n")
		}

		escreva("------------- SEM O PARE\n")

		escolha ( operador ) {
			caso '+':
				escreva("SOMA\n")
			caso '-':
				escreva("SUBTRAÇÃO\n")
			caso '*':
				escreva("MULTIPLICAÇÃO\n")
			caso '/':
				escreva("DIVISÃO\n")
			caso contrario:
				escreva("INVÁLIDO\n")
		}
     }
}

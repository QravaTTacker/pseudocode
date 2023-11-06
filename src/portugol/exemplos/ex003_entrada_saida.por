programa
{
	funcao inicio()
	{
		/*
		 * Instruções de entrada e saída são funções básicas que toda linguagem deve oferecer. Elas
		 * permitem capturar dados (instruções de entrada) e exibir dados (instruções de saída).
		 * 
		 * O teclado e mouse são dispositivos de entrada e por esse motivo há funções para manipular 
		 * essa entrada de dados. Por sua vez, o monitor e caixas de som são dispositivos de saída que 
		 * mostram informações ao usuário do programa.
		 * 
		 */

		// Instrução de saída: Mostra o que está dentro de parênteses.
		escreva("Digite seu nome: ")

		cadeia nome

		// Instrução de entrada: Monitora o tecado e armazena na variável que está entre os parênteses.
		leia(nome)

		// Concatenação de dados: Junta a frase "Olá " com o conteúdo da variável `nome`.
		escreva("Olá, " + nome)
	}
}

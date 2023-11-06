programa
{
	// Biblioteca para manipulação de texto.
	inclua biblioteca Texto --> string
	funcao inicio()
	{
		/* 
 		 * caixa_alta(cadeia)
 		 * ----> Retorna a cadeia passada para a função em caixa alta.
 		 * 
 		 * caixa_baixa(cadeia)
 		 * ----> Retorna a cadeia passada para a função em caixa baixa.
 		 * 
 		 * numero_caracteres(cadeia)
 		 * ----> Retorna o número (inteiro) de caracteres da cadeia passada para a função.
 		 * 
 		 * obter_caracter(cadeia, inteiro)
 		 * ----> Retorna um caractere da cadeia passada conforme o índice (a contagem começa em 0).
 		 * 
 		 * posicao_texto(cadeia, cadeia, inteiro)
 		 * ----> Retorna o índice da primeira ocorrência da cadeia buscada. O primeiro parâmetro indica
 		 *       a frase que estamos procurando, o segundo indica em qual cadeia iremos procurar e o
 		 *       terceiro indica o índice de start para começar a pesquisa.
 		 * 
 		 * extrair_subtexto(cadeia, inteiro, inteiro)
 		 * ----> Retorna um segmento da cadeia. O primeiro valor inteiro indica o início do segmento
 		 *       enquanto o segundo indica o final (desprezando-o).
 		 * 
 		 * substituir(cadeia, cadeia, cadeia)
 		 * ----> Retorna uma cadeia com palavras substituídas. O primeiro parâmetro indica a cadeia
 		 *       que será usado como manipulação, o segundo indica a palavra dessa cadeia que será 
 		 *       substituída e o terceiro indica a palavra que substituirá.
 		 * 
 		 * preencher_a_esquerda(caracter, inteiro, cadeia)
 		 * ----> Retorna uma cadeia com um conjunto de caracteres à esquerda. O primeiro parâmetro 
 		 *       indica o caractere que ficará à esquerda, o segundo indica a quantidade de caracteres
 		 *       da frase resultante e o terceiro a cadeia que será manipulada. 
 		 *      
 		 * Obs: Para que tenha um efeito, deve informar um valor maior que o número de caracteres 
		 *      da frase original, para que  tenha um efeito. Como sugestão, é recomendado usar a função 
		 *     	numero_caracteres().
 		 * 
 		 */
		
		cadeia nome = "Cristian Pessotto"

		// Retorna a cadeia em caixa ALTA.
		cadeia upper = string.caixa_alta(nome)
		escreva("Nome em caixa alta: ", upper, "\n")

		// Retorna a cadeia em caixa BAIXA.
		cadeia lower = string.caixa_baixa(nome)
		escreva("Nome em caixa baixa: ", lower, "\n")
		
		// Indica o número de caracteres da frase.
		inteiro length = string.numero_caracteres(nome)
		escreva("Número de caracteres: ", length, "\n")

		// Obtém o caractere conforme o índice.
		caracter char = string.obter_caracter(nome, 9)
		escreva("Caractere da posição 9: ", char, "\n")

		// Retorna o índice de uma frase.
		inteiro indice = string.posicao_texto("a", nome, 0)
		escreva("Posição do texto \"a\": ", indice, "\n")

		// Retorna uma frase segmentada.
		cadeia sub_string = string.extrair_subtexto(nome, 0, 4)
		escreva("Subtexto de 0 até 4: ", sub_string, "\n")

		// Retorna uma frase com palavras substituídas.
		cadeia replace = string.substituir(nome, "Pessotto", "Pessoa")
		escreva("Substituindo o nome: ", replace, "\n")

		// Retorna uma frase com caracteres preenchidos à esquerda.
		cadeia format = string.preencher_a_esquerda('$', length + 1, nome)
		escreva("Preenchimento a esquerda: ", format, "\n")	
	}
}

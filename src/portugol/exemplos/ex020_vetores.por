programa
{
	funcao inicio()
	{
		/*
		 * ================ Definição
		 * 
		 *  --> Vetor é uma variável composta unidemencional, isto é, é uma espaço sequêncial da 
		 *      memória que permite armazenar vários valores de um mesmo tipo. Um vetor é, também, 
		 *      considerado uma estrutura de dados, assim como uma lista ligada, arvore binária,
		 *      tabela hash, fila, pilha etc.
		 *      
		 *      Uma esturura de dados permite armazenar um conjunto de informações e disponibilizam 
		 *      operações para manipular os dados. A manipulação de dados consiste em realizar acesso, 
		 *      adição remoção, atribuição, busca e ordenação deles.
		 *      
		 * ================ Representação
		 * 
		 *      Representação visual de uma variável simples:
		 *       _____
		 *      | d1 | --> Um unico tipo
		 *      ¨¨¨¨¨¨
		 *      
		 *      Representação visual de uma variável composta:
		 *       ________________________________________
		 *      | d1 | d2 | d3 | d4 | d5 | d6 | d7 | d8 | --> Todos do mesmo tipo
		 *      ¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨¨
		 *        0    1    2    3    4    5    6    7
		 *      
		 * ================ Declaração
		 * 
		 *      Nesse contexto, todo vetor possui:
		 *      
		 *      A) Identificador
		 *      B) Tipo primitivo
		 *      C) Tamanho
		 *      D) Conjunto de valores (Opcional na declaração)
		 *      
		 *      <Tipo> <Identificador> [ <tamanho> ] = { <v1>, <v2>, <v3> ... <vn> }
		 *      
		 *      Exemplo:
		 *      inteiro vetor[5] = {1, 2, 3, 4, 5}
		 *      
		 */

		inteiro vetor_1[5] = {1, 2, 3, 4, 5}

		/*		
		 * ================ Acesso de Valores
		 * 
		 *     Para acessar um valor devemos indicar o índice que a valor está inserido, ou seja,
		 *     para obter o valor '1' devemos passar o seu índice. Todo arranjo inicia os seu 
		 *     índices com o valor 0 e vai até o tamanho do velor com uma unidade a menos:
		 *     
		 *     vetor[0] --> 1
		 *     vetor[1] --> 2
		 *     vetor[2] --> 3
		 *     vetor[3] --> 4
		 *     vetor[4] --> 5
		 *     
		 *     Tendo esse padrão, podemos acessar cada valor com uma estrutura de repetição que 
		 *     incrementa de 0 até N - 1, sendo que N é o tamanho do vetor.
		 */
		 
		const inteiro N = 5
		para (inteiro i = 0; i < N - 1; i++)
			escreva(vetor_1[i], " ")

		/*
		 * ================ Atribuição de vetor
		 *       
		 *     Como mencionado anteriormente, a atribuição de valores é algo opcional na declaração
		 *     de um vetor. Logo, podemos atribuir um valor para cada índice:
		 *
		 *     inteiro vetor[5]
		 *      
		 *     vetor[0] = 1
		 *     vetor[1] = 2
		 *     vetor[2] = 3
		 *     vetor[3] = 4
		 *     vetor[4] = 5
		 *      
		 *     Obs: A atribuição de valores segue o mesmo princípio de índices [0 até N - 1]
		 */

		inteiro vetor_2[3]

		vetor_2[0] = 1
		vetor_2[1] = 2
		vetor_2[2] = 3

		 /*
		  * ================ Exceções
		  *     
		  *     Não é possível atribuir todos os valores de uma vez após a sua decladação:
		  *     
		  *     inteiro vetor[5]
		  *     vetor = {1, 2, 3, 4, 5} --> ERRO!
		  *     
		  *     É possível deixar implícito o tamanho do vetor na sua declaração:
		  *    
		  *     inteiro vetor[] = {1, 2, 3, 4, 5} --> OK!
		  */
		
		inteiro vetor_3[] = {1, 2, 3, 4, 5}
		  
		 /* 
		  *  ================ Recomendações
		  *     
		  *     É uma boa prática delegar o tamanho do vetor para uma constante, ou seja, em vez
		  *     de usar um 'valor mágico' para definir o tamanho do vetor, usamos uma constante:
		  *     
		  *     const inteiro TAM = 5
		  *     inteiro vetor[TAM] = {1, 2, 3, 4, 5} --> OK!
		  * 
		  *     Obs: A constante deve ser obrigatóriamente o valor do tipo inteiro.
		  *     
		  *     const real TAM = 3.0
		  *     inteiro vetor[TAM] = {1, 2, 3} !ERRO
		  */

		const inteiro TAM = 3
		inteiro vetor_4[TAM] = {1, 2, 3}
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3875; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
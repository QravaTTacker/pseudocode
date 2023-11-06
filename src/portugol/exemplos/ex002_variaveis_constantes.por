programa
{	
	funcao inicio()
	{
		/* ------------------- TIPOS ESCALARES
		 * 
		 * Conceito: Tipos escalares (ou primitivos) são um conjunto de informações base.
		 * 
		 * No portugol, há cinco (5) tipos escalares:
		 * 
		 * inteiro  -> Valores numéricos não fracionais
		 * real     -> Valores numéricos fracionais
		 * caracter -> Letras, ou literais únicos (números, símbolos entre aspas simples)
		 * cadeia   -> Conjunto de valores literais (frases entre aspas duplas)
		 * logico   -> Estados lógicos (verdadeiro ou falso)
		 * 
		 * Usamos tipos escalares para identificar o conjunto de dados que uma variável ou constante 
		 * vai receber.
		 * 
		 */

		/* ------------------- VARIÁVEIS E CONSTANTES
		 * 
		 * Conceito: São espaços na memória RAM (memória principal) do computado que armazenam 
		 *           informações temporárias. Elas são guardadas para um que programa possa usá-las.
		 * 
		 * Declaração: É um processo de criar uma variável ou constante. Para Isso, devemos indicar o
		 *             tipo escalar dela e o seu nome (identificador)
		 * 
		 * Inicialização: Por sua vez, a inicialização é o processo de atribuir um valor para uma
		 *                variável ou constante.
		 * 
		 * Obs: A inicialização de uma constante deve ser feita na sua declaração, já para variáveis, 
		 *      pode ser feita a qualquer momento do programa.
		 * 
		 * Sintaxe para declaração e inicialização de variáveis e constantes:
		 * 
		 * <tipo escalar> <identificador> = <valor armazenado>
		 * 
		 * const <tipo escalar> <identificador> = <valor armazenado>
		 *  
		 */

		 inteiro idade = 20
		 real salario = 2530.42
		 caracter sexo_biologico = 'M'
		 cadeia nome = "Cristian Pessotto"
		 logico casado = falso

		 const inteiro DIAS_DA_SEMANA = 7
		 const real PI = 3.141592
		 const caracter SIMBOLO = '$'
		 const cadeia FRASE = "Hello, World!"
		 const logico PROGRAMADOR = verdadeiro

		/* ------------------- REGRAS DE IDENTIFICADORES
		 * 
		 * Todo identificador de uma variável ou constante deve seguir as regas abaixo:
		 * 
		 * 1ª) Identificadores só podem conter números (0-9), letras (A-Z) e o símbolo de underscore
		 * 2ª) Não pode começar com números
		 * 3ª) Não pode conter letras acentuadas, cedilha ou símbolos especiais
		 * 4ª) Não pode conter espaços para nomes compostos
		 * 5ª) Não pode conter palavras reservadas da linguagem
		 * 
		 */

		/* ------------------- CONVENÇÕES DE IDENTIFICADORES
		 *  
		 *  Há 3 principais convenções para identificadores de variáveis e constantes:
		 *  
		 *  snake_case: Todas as letras ficam em minúsculas e são separadas por underline
		 *  PascalCase: A primeira letra de cada palavra fica em maiúscula
		 *  camelCase: O mesmo que o PascalCase, mas a primeira palavra fica em minúsculas
		 *  
		 *  PascalCase e camelCase são mais usadas em Orientação a Objetos. Nesse caso, será
		 *  usado o snake_case.
		 *  
		 *  Para constantes é recomendado a anotação SCREAMING_SNAKE_CASE, em que todas as letras 
		 *  ficam em maiúsculas e são separadas por underline.
		 * 
		 */
	}
}

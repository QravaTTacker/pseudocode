programa
{
	/*
	 * Para usar mais recursos da linguagem, é necessário incluir funções novas através de bibliotecas:
	 * 
	 * <inclua biblioteca> <lib_name> --> <apelido>
	 * 
	 * O comando acima inclua uma biblioteca de nome "lib_name" e coloca um apelido para ela por meio da
	 * seta -->
	 * 
	 * Bibliotecas comuns no Portugol:
	 * 
	 * 1ª) Matematica: Funções para tratamento de cálculos
	 * 2ª) Texto: Funções para tratamento de textos
	 * 3ª) Tipos: Funções para tratamento e conversão de tipos
	 * 4ª) Util: Funções de uso geral
	 * 5ª) Calendario: Funções para tratamento de data
	 * 
	 */
	inclua biblioteca Matematica --> math
	
	funcao inicio() 
	{

		/*
		 * PI
		 * ----> Valor de pi.
		 * 
		 * arredondar(real, inteiro)
		 * ----> Formata o número de casas decimais do primeiro valor passado para a função.
		 * 
		 * valor_absoluto(real)
		 * ----> Mostra o valor absoluto de um número.
		 * 
		 * maior_numero(real, real)
		 * ----> Retorna o maior número.
		 * 
		 * menor_numero(real, real)
		 * ----> Retorna o menor número.
		 *
		 * potencia(real, real)
		 * ----> Retorna a potência do primeiro termo elevado ao segundo.
		 * 
		 * raiz(real, real)
		 * ----> Retorna a raiz do primeiro (radicando) com o do índice do segundo.
		 * 
		 * logaritmo(real, real)
		 * ----> Retorna o logaritmo do primeiro termo (logaritmando) com a base do segundo.
		 * 
		 * seno(real)
		 * ----> Retorna o seno de um ângulo (em radianos)
		 * 
		 * cosseno(real)
		 * ----> Retorna o cosseno de um ângulo (em radianos)
		 * 
		 * tangente(real)
		 * ----> Retorna a tangente de um ângulo (em radianos)
		 * 
		 */
		 
		// Retorna o valor de PI.
		real pi = math.PI
		escreva("Valor de PI: ", pi, "\n")

		// Retorna o valor formatado com 2 casas decimais.
		real pi_formatado = math.arredondar(pi, 2)
		escreva("Valor de PI (arredondado): ", pi_formatado, "\n")

		// Retorna o valor em sua anotação absoluta.
		real absoluto = math.valor_absoluto(-5.0)
		escreva("Valor absoluto de -5: ", absoluto, "\n")

		// Retorna o MAIOR número entre dois valores.
		real maior = math.maior_numero(3.0, 6.0)
		escreva("Maior entre 3.0 e 6.0: ", maior, "\n")

		// Retorna o MENOR número entre dois valores.
		real menor = math.menor_numero(-4.0, -8.0)
		escreva("Menor entre -4.0 e -8.0: ", menor, "\n")

		// Retorna a potência de 2.0 elevado à 5.0
		real pow = math.potencia(2.0, 5.0)
		escreva("2.0 elevado a 5.0: ", pow, "\n")

		// Retorna a raiz de 49.0 no índice 2.0 (raiz quadrada).
		real sqrt = math.raiz(49.0, 2.0)
		escreva("Raiz quadrada de 49: ", sqrt, "\n")

		// Retorna o logaritmo do valor 256.0 na base 2.0.
		real log = math.logaritmo(256.0, 2.0)
		escreva("Logaritmo de 256 na base 2: ", math.logaritmo(256.0, 2.0), "\n")

		// Retorna o seno de um ângulo em radianos.
		real sen = math.seno(30.0 * math.PI / 180.0)
		escreva("Seno de 30°: ", math.arredondar(sen, 2), "\n")

		// Retorna o cosseno de um ângulo em radianos.
		real cos = math.cosseno(180 * math.PI / 180.0)
		escreva("Cosseno de 180°: ", math.arredondar(cos, 2), "\n")

		// Retorna a tangente de um ângulo em radianos.
		real tan = math.tangente(45.0 * math.PI / 180.0)
		escreva("Tangente de 45°: ", math.arredondar(tan, 2), "\n")
	}
}

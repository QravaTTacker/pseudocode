programa
{
	// Biblioteca para usos gerias.
	inclua biblioteca Util --> u

	funcao inicio()
	{
		/* 
		 * aguarde(inteiro)
		 * ----> Faz o programa aguardar um determinado intervalo de tempo (em milissegundos).
		 * 
		 * obter_diretorio_usuario()
		 * ----> Retorna uma cadeia de caracteres do diretório do usuário.
		 * 
		 * tempo_decorrido()
		 * ----> Retorna um valor inteiro que indica um tempo desde o primeiro uso da biblioteca.
		 * 
		 * sorteia(inteiro, inteiro)
		 * ----> Retorna um valor inteiro entre o primeiro parâmetro e o segundo. O primeiro valor 
		 *      representa o menor número, enquanto o segundo representa o maior.
		 * 
		 *      min < max --> Okey
		 *      min = max --> Bad
		 * 	    min > max --> Bad
		 * 
		 * limpa()
		 * ----> Limpa a tela do console. Não depende a biblioteca Util.
		 * 
		 * ============ Funções que serão estudadas mais para frente:
		 * 
		 * numero_elementos()
		 * numero_linhas()
		 * numero_colunas()
		 * 
		 */
		
		escreva("Processando...\n")
		
		escreva("Tempo atual: ", u.tempo_decorrido(), "\n")
		u.aguarde(2000)
		escreva("Tempo atual: ", u.tempo_decorrido(), "\n")
		
		escreva("Diretório do usuário: ", u.obter_diretorio_usuario(), "\n")
		
		inteiro valor = u.sorteia(1, 10)
		escreva("Número sorteado: ", valor, "\n")

		escreva("Console será limpo em 1.5 segundos\n")
		u.aguarde(1500)
		limpa()
	}
}

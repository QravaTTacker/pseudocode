programa
{
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
		cadeia string = "    Olhá mundo da programação!  "
		string = tx.substituir(string, "da programação", "do potugol")
	
		escreva("Antes: '" + string + "'\n")
		escreva("Palavras: ", count_words(string), "\n")
		escreva("Depois: '" + string + "'\n")
	}

	funcao inteiro count_words(cadeia str) 
	{
		trim(str)

		inteiro count = 0

		para (inteiro i = 0; i < tx.numero_caracteres(str); i++)
			se (tx.obter_caracter(str, i) == ' ')
				count++
				
		retorne count + 1
	}

	funcao vazio trim(cadeia &str) 
	{	
		inteiro start = 0 
		inteiro end = tx.numero_caracteres(str) - 1
			
		para (inteiro i = 0; i < end; i++)
			se (nao (tx.obter_caracter(str, i) == ' ')) {
				start = i
				pare
			}

		para (inteiro i = end; i >= 0; i--) 
			se (nao (tx.obter_caracter(str, i) == ' ')) {
				end = i
				pare
			}
		
		str = tx.extrair_subtexto(str, start, end + 1)
	}
}

programa
{
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
		cadeia string = "  xx x x x  "
		cadeia string_aux = ""

		inteiro start = 0
		inteiro end = tx.numero_caracteres(string)
		
		para (inteiro i = 0; i < end ; i++) 
			se (nao (tx.obter_caracter(string, i) == ' ')) {
				start = i
				pare
			}

		string_aux = tx.extrair_subtexto(string, start, end)
		
		escreva("Origin: '", string, "'\n")
		escreva("Result: '", string_aux, "'\n")
	}
}

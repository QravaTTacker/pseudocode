programa
{
	inclua biblioteca Texto	--> tx
	
	funcao inicio()
	{
		cadeia string = "  xx x x x  "
		cadeia string_aux = ""

		inteiro end = tx.numero_caracteres(string) - 1
		inteiro end_aux = end
		
		para (inteiro i = end; i >= 0; i--)
			se (nao (tx.obter_caracter(string, i) == ' ')) {
				end_aux = i
				pare
			}

		string_aux = tx.extrair_subtexto(string, 0, end_aux + 1)
		
		escreva("Origin: '", string, "'\n")
		escreva("Result: '", string_aux, "'\n")
	}
}

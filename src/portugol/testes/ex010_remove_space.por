programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> ty
	
	funcao inicio()
	{
		cadeia string = " x x  x x "
		cadeia string_aux = ""
		caracter char_aux = ' '
		
		para (inteiro i = 0; i < tx.numero_caracteres(string); i++) {
			char_aux = tx.obter_caracter(string, i)
			se (char_aux != ' ')
				string_aux += ty.caracter_para_cadeia(char_aux)
		}

		escreva("Origin: '", string, "'\n")
		escreva("Result: '", string_aux, "'\n")
	}
}

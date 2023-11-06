programa
{
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		cadeia string = "Oi oi oi    "
		inteiro count = 0

		para (inteiro i = 0 ; i < t.numero_caracteres(string); i++)
			se (t.obter_caracter(string, i) == ' ')
				 count++

		escreva("Count: ", count, "\n")
	}
}

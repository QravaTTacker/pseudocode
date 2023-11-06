programa
{
 	inclua biblioteca Texto --> tx
 	
	funcao inicio()
	{
		cadeia string = "  xx x x x  "

		escreva("Origin: '", string, "'\n")
		trim(string)
		escreva("Result: '", string, "'\n")
	}
	
	funcao vazio trim(cadeia &str) 
	{
		inteiro end = tx.numero_caracteres(str) - 1
		inteiro end_aux = end
		inteiro start = 0

		// Remove LEFT
		para (inteiro i = 0; i < end; i++)
			se (nao (tx.obter_caracter(str, i) == ' ')) {
				start = i
				pare
			}

		// Remove RIGHT
		para (inteiro i = end; i >= 0; i--) 
			se (nao (tx.obter_caracter(str, i) == ' ')) {
				end = i
				pare
			}
			
		str = tx.extrair_subtexto(str, start, end + 1)
	}
}

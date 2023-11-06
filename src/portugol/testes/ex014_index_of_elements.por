programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u
	
	const inteiro SIZE = 9
	
	funcao inicio()
	{
		cadeia string = " x xxx x "
		
		inteiro indexs[SIZE + 1]
		caracter get_char = ' '
		caracter char = ' '

		inteiro k = 0
		para (inteiro i = 0; i < SIZE; i++) {
			get_char = tx.obter_caracter(string, i)
			se (get_char == char) {
				indexs[k] = i
				k++
			}
		}

		escreva("O caracter '", char ,"' está nas posições: \n")
		
		para (inteiro i = 0; i < k; i++)
			escreva(indexs[i], " ")
	}
}

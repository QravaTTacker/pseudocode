/*
 * Faça um programa que crie uma mensagem onde as linhas acompanhem o tamanho do texto
 * automaticamente.
 */

programa
{
	inclua biblioteca Texto  --> tx
	inclua biblioteca Tipos  --> t
	
	funcao inicio()
	{
		mensagem("Olá, Mundo da Programação!")
		mensagem("Portugol Studio")
		mensagem("Programação")
	}

	funcao vazio mensagem(cadeia frase)
	{
		cadeia bordar = tam_borda('-', tx.numero_caracteres(frase))
		escreva(bordar, "\n")
		escreva(frase, "\n")
		escreva(bordar, "\n")
		
	}

	funcao cadeia tam_borda(caracter char, inteiro size)
	{
		cadeia letra = t.caracter_para_cadeia(char)
		cadeia frase = ""
		para (inteiro i = 0; i < size; i++)
			frase += letra
		retorne frase
	}
}

/*
 * 	Faça um programa que mostre a tabuada de um número, por meio de uma função.
 */

programa
{
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
		tabuada(3)
		tabuada(15)
	}

	funcao tabuada(inteiro valor) 
	{
		cadeia titulo = "---------- Tabuada de " + valor + " ----------"
		inteiro tam = tx.numero_caracteres(titulo)
		
		escreva(titulo + "\n")
		para (inteiro i = 0; i < 10; i++)
			escreva(valor, " x ", i, " = ", valor * i, "\n")
		
		escreva(tx.preencher_a_esquerda('-', tam, "") + "\n")
	}
}

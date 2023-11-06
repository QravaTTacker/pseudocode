/*
 * Faça um programa que crie uma rotina chamada quadrado() que mostre as
 * formas geométricas de tamanhos personalizados.
 */

programa
{
	funcao inicio()
	{
		quadrado(4)
		quadrado(1)
		quadrado(5)
	}

	funcao vazio quadrado(inteiro size) 
	{
		para (inteiro i = 0; i < size; i++) {
			para (inteiro j = 0; j < size; j++)
				escreva("██")
			escreva("\n")
		}
		escreva(size, "x", size, "\n\n")
	}
}

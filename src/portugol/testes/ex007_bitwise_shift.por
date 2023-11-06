programa
{
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		para (inteiro i = 1; i <= 2048; i *= 2)
			escreva(i, " << 1 = ", i << 1, "\n")
		escreva(t.preencher_a_esquerda('-', 20, ""), "\n")
		para (inteiro i = 1; i <= 2048; i *= 2)
			escreva(i, " >> 1 = ", i >> 1, "\n") 
	}
}

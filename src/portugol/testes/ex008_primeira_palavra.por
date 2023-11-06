programa
{
	inclua biblioteca Texto --> t
	
	funcao inicio()
	{
		cadeia nome = "Portugol Studio"
		cadeia first =t.extrair_subtexto(nome, 0, t.posicao_texto(" ", nome, 0))
		
		escreva("Primeira palavra: '", first, "'")
	}
}

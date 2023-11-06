programa
{
	inclua biblioteca Objetos --> o
	funcao inicio()
	{

		inteiro lista = o.criar_objeto()
	
		inteiro node1 = o.criar_objeto()
		inteiro node2 = o.criar_objeto()
		inteiro node3 = o.criar_objeto()
		
		o.atribuir_propriedade(lista, "head", node1)
		
		o.atribuir_propriedade(node1, "data", 10)
		o.atribuir_propriedade(node1, "next", node2)
		
		o.atribuir_propriedade(node2, "data", 12)
		o.atribuir_propriedade(node2, "next", node3)

		o.atribuir_propriedade(node3, "data", 24)
		o.atribuir_propriedade(node3, "next", -1)

		inteiro iterador = o.obter_propriedade_tipo_inteiro(lista, "head")
		enquanto (iterador != -1) {
			escreva(iterador, "º node: ", o.obter_propriedade_tipo_inteiro(iterador, "data"), "\n")
			iterador = o.obter_propriedade_tipo_inteiro(iterador, "next")
		}
	
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 489; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {lista, 7, 10, 5}-{node1, 9, 10, 5}-{node2, 10, 10, 5}-{iterador, 24, 10, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
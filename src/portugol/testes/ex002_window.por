programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro R = 0
		inteiro G = 0
		inteiro B = 0
		
		g.iniciar_modo_grafico(falso)
		g.definir_dimensoes_janela(800, 600)
		g.definir_titulo_janela("My Window")
		
		enquanto (verdadeiro) {
			R = u.sorteia(0, 255)
			u.aguarde(100)
			G = u.sorteia(0, 255)
			u.aguarde(100)
			B = u.sorteia(0, 255)
			u.aguarde(100)
			g.definir_cor(g.criar_cor(R, G, B))
			g.limpar()
			g.renderizar()
		}
	}
}

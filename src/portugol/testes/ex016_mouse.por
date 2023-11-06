programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Teclado --> t
	inclua biblioteca Mouse --> m
	inclua biblioteca Tipos --> ty

	const inteiro WIDTH = 1500
	const inteiro HEIGHT = 1000
	const inteiro SIZE = 5000
	
	funcao inicio()
	{

		inteiro x = 0
		inteiro y = 0
		inteiro cont = 0
		inteiro tam = 25
		inteiro color = 0xFFFFFF
		inteiro tecla = t.TECLA_R
		cadeia format = ""

		inteiro colors[SIZE]
		inteiro positions[SIZE][2]
		inteiro tams[SIZE]
		para (inteiro i = 0; i < SIZE; i++) {
			positions[i][0] = -50
			positions[i][1] = -50
			colors[i] = color
			tams[i] = tam
		}
		
		g.iniciar_modo_grafico(verdadeiro)
		g.definir_dimensoes_janela(WIDTH, HEIGHT)
		g.definir_titulo_janela("Mouse Position")
		
		enquanto (nao t.tecla_pressionada(t.TECLA_ESC)) {
			g.definir_cor(0x330033)
			g.limpar()
			
			x = m.posicao_x()
			y = m.posicao_y()
			
			
			escreva("\nx = " + x + ", y = " + y)

			se (t.tecla_pressionada(t.TECLA_R)) color = 0xFF0000
			senao se (t.tecla_pressionada(t.TECLA_G)) color = 0x00FF00
			senao se (t.tecla_pressionada(t.TECLA_B)) color = 0x0000FF
			senao se (t.tecla_pressionada(t.TECLA_Y)) color = 0xFFFF00
			senao se (t.tecla_pressionada(t.TECLA_P)) color = 0xFF00FF
			senao se (t.tecla_pressionada(t.TECLA_W)) color = 0xFFFFFF
			senao se (t.tecla_pressionada(t.TECLA_ESPACO)) color = 0x330033
			
			se (m.botao_pressionado(m.BOTAO_ESQUERDO)) {
				positions[cont % SIZE][0] = x
				positions[cont % SIZE][1] = y
				colors[cont] = color
				cont++
			}
			
			se (t.tecla_pressionada(t.TECLA_IGUAL)) tams[cont] += 10
			senao se (t.tecla_pressionada(t.TECLA_MENOS)) tams[cont] -= 10

			para (inteiro i = 0; i < SIZE; i++) {
				circulo(positions[i][0], positions[i][1], colors[i], tams[i])
			}
			
			reta(x, y)
			g.renderizar()
		}
	}

	funcao vazio circulo(inteiro x, inteiro y, inteiro color, inteiro tam)
	{
		g.definir_cor(color)
		g.desenhar_elipse(x - tam / 2, y - tam / 2, tam, tam, verdadeiro)
	}
	
	funcao vazio reta(inteiro x, inteiro y) 
	{
		g.definir_cor(0xAA00FF)
		g.desenhar_linha(0, 0, x, y)
		g.desenhar_linha(WIDTH, HEIGHT, x, y)
		g.desenhar_linha(WIDTH, 0, x, y)
		g.desenhar_linha(0, HEIGHT, x, y)
	}
}

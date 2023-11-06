programa
{
	inclua biblioteca Graficos --> g
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ty
	inclua biblioteca Teclado --> t

	const inteiro VEL = 5
	inteiro v = u.sorteia(0, 3)
	inteiro pX = (900 - 100) / 2
	inteiro pY = (900 - 100) / 2
	real i = 0.5
	
	funcao inicio()
	{
		escreva("Hello")
		g.iniciar_modo_grafico(verdadeiro)
		//g.entrar_modo_tela_cheia()
		g.definir_icone_janela(g.carregar_imagem("C:\\Users\\crist\\OneDrive\\Imagens\\Saved\\Logos\\Central.png"))
		g.definir_dimensoes_janela(900, 900)
		enquanto (nao t.tecla_pressionada(t.TECLA_ESC)) {
			g.definir_cor(0x330020)
			g.limpar()
			g.definir_gradiente(g.GRADIENTE_SUPERIOR_ESQUERDO, 0x330033, 0x330088)
			g.desenhar_retangulo(0, 0, 900, 900, falso, verdadeiro)
			g.definir_gradiente(g.GRADIENTE_SUPERIOR_ESQUERDO, 0x00FF00, 0x00FFCC)
			g.desenhar_retangulo(pX, pY, 100, 100, verdadeiro, verdadeiro)
			g.definir_gradiente(g.GRADIENTE_INFERIOR_ESQUERDO, 0XFF00FF, 0xFFFF00)
			g.desenhar_linha(0, 0, (pX + 100 + pX) / 2, (pY + 100 + pY) / 2)
			g.definir_gradiente(g.GRADIENTE_SUPERIOR_ESQUERDO, 0xFF0000, 0x0000FF)
			g.desenhar_linha(0, 900, (pX + 100 + pX) / 2, (pY + 100 + pY) / 2)
			g.definir_gradiente(g.GRADIENTE_SUPERIOR_ESQUERDO, 0x00FF00, 0x0000FF)
			g.desenhar_linha(900, 0, (pX + 100 + pX) / 2, (pY + 100 + pY) / 2)
			g.definir_gradiente(g.GRADIENTE_SUPERIOR_ESQUERDO, 0xFF0000, 0x00FF00)
			g.desenhar_linha(900, 900, (pX + 100 + pX) / 2, (pY + 100 + pY) / 2)
			g.definir_gradiente(g.GRADIENTE_SUPERIOR_ESQUERDO, 0xFFFF00, 0x00FFFF)
			g.desenhar_linha(450, 0, (pX + 100 + pX) / 2, (pY + 100 + pY) / 2)
			g.definir_gradiente(g.GRADIENTE_SUPERIOR_ESQUERDO, 0x00FF00, 0x00FFFF)
			g.desenhar_linha(0, 450, (pX + 100 + pX) / 2, (pY + 100 + pY) / 2)
			g.definir_gradiente(g.GRADIENTE_SUPERIOR_ESQUERDO, 0x00FFFF, 0x32FFAC)
			g.desenhar_linha(450, 900, (pX + 100 + pX) / 2, (pY + 100 + pY) / 2)
			g.definir_gradiente(g.GRADIENTE_SUPERIOR_ESQUERDO, 0x33FFAA, 0x00FFFC)
			g.desenhar_linha(900, 450, (pX + 100 + pX) / 2, (pY + 100 + pY) / 2)
			controle()
			g.renderizar()
			aumentar()
			g.definir_rotacao(ty.real_para_inteiro(i) % 360)
		}
	}

	funcao controle() 
	{
		se (u.tempo_decorrido() % 50 == 0) 
			v = u.sorteia(0, 3)
		se ((t.tecla_pressionada(t.TECLA_W) ou v == 0)) {
			se (pY <= 0)
				v = 1
			senao
				pY-=VEL
		}
		se ((t.tecla_pressionada(t.TECLA_S) ou v == 1)) {
			se (pY >= 800)
				v = 0
			senao
				pY+=VEL
		}
		se ((t.tecla_pressionada(t.TECLA_A) ou v == 2)) {
			se (pX <= 0)
				v = 3
			senao
				pX-=VEL
		}
		se ((t.tecla_pressionada(t.TECLA_D) ou v == 3)) {
			se (pX >= 800)
				v = 2
			senao
				pX+=VEL
		}
		se (t.tecla_pressionada(t.TECLA_ESPACO)) {
			pX = (900 - 100) / 2
			pY = (900 - 100) / 2
			i = 0.0
		}
	}

	funcao aumentar() 
	{
		se (t.tecla_pressionada(t.TECLA_SETA_DIREITA)) {
			i += 0.6
		}
		se (t.tecla_pressionada(t.TECLA_SETA_ESQUERDA)) {
			i -= 0.6
		}
	}
}

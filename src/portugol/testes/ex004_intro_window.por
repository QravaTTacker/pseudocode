programa
{
     inclua biblioteca Graficos --> g
     inclua biblioteca Teclado --> t
     inclua biblioteca Util --> u

     funcao inicio()
     {
          g.iniciar_modo_grafico(verdadeiro)
          g.definir_titulo_janela("Code Academy")
          g.definir_dimensoes_janela(1000, 800)
          //g.entrar_modo_tela_cheia()
          
          enquanto (verdadeiro) {
               g.definir_cor(g.COR_AMARELO)
               g.limpar()
               g.renderizar()
               se (t.tecla_pressionada(Teclado.TECLA_ESC)) {
                    g.fechar_janela()
                    //g.encerrar_modo_grafico()
               }
          }
     }
}

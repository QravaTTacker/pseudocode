/*
 * Programa que leia quanto dinheiro a pessoa tem na carteira
 * e mostre se ela pode ou não entrar para assistir o filme.
 * Não se esqueça de considerar dois fatores:
 * - Se a pessoa tem dinheiro o suficiente para comprar o ingresso
 * - Se a sessão do filme ainda não começou
 */

programa
{
	inclua biblioteca Calendario --> c
	
	funcao inicio()
	{
		inteiro hora_filme = 2
		real valor_filme = 30.0
		inteiro hora_atual = c.hora_atual(falso)
		real valor = 0.0

		escreva("================== CINEMA ==================\n")
		escreva("Hora do filme:                           ", hora_filme, "h\n")
		escreva("Valor da entrada:                     R$", valor_filme, "\n")
		escreva("============================================\n")
		escreva("Agora são ", hora_atual, "h\n")
		escreva("Quanto de sinhehiro você tem? ")
		leia(valor)
		
		escreva("--------------------------------------------\n")
		se (valor >= valor_filme e hora_atual <= hora_filme) {
			escreva("Você consegue comprar o ingresso!\n")
			escreva("SEJA BEM-VINDO\n")
		} senao {
			escreva("Infelizmente não é possível comprar o ingresso :/\n")
			escreva("Tente outro dia\n")
		}
	}
}

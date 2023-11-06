/*
 * Programa que leia um número inteiro qualquer.
 * Se esse número for positivo, calcule o seu INVERSO.
 * Caso contrário, calcule seu OPOSTO.
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	
	funcao inicio()
	{
		inteiro valor = 0
		
		escreva("===== Números positivos: INVERSO | Outros: OPOSTO =====\n")
		escreva("Digite um valor: ")
		leia(valor)
		
		se (valor > 0) {
			escreva("INVERSO de ", valor, " é ", m.arredondar(1 / t.inteiro_para_real(valor), 3), "\n")
		} senao {
			escreva("OPOSTO de ", valor, " é ", m.arredondar(t.inteiro_para_real(-valor), 2), "\n")
		}
	}
}

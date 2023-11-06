/*
 * Faça um programa que crie uma rotina capaz de personalizar mensagens
 * na tela do usuário.
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u

	const inteiro BORDA_1 = 0
	const inteiro BORDA_2 = 1
	const inteiro BORDA_3 = 2
	
	funcao inicio()
	{
		meu_escreva("Olá, Mundo!", 3, BORDA_1)
		meu_escreva("Portugol Studio", 1, BORDA_2)
		meu_escreva("Pseudocódigo", -4, BORDA_3)
	}

	funcao meu_escreva(cadeia frase, inteiro quant, inteiro bord) {
		cadeia border = ""
		escolha (bord) {
			caso BORDA_1:
				border = "+----------==========----------+"
				pare
			caso BORDA_2:
				border = "~~~~~~~~~~~::::::::::~~~~~~~~~~~"
				pare
			caso BORDA_3:
				border = "<<<<<<<<<<<---------->>>>>>>>>>>"
				pare
			caso contrario: 
				border = ""
		}

		quant = t.real_para_inteiro(
					m.valor_absoluto(
						t.inteiro_para_real(quant)
					)
				)

		escreva(border, "\n")
		para (inteiro i = 0; i <quant; i++)
			escreva(frase, "\n")
		escreva(border, "\n")
	}
}

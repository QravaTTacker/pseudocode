/*
 * Faça um programa que leia dois operandos de uma
 * expressão e mostre um menu que permita o usuário escolher
 * que operação realizar:
 * [ 1 ] Adição
 * [ 2 ] Subtração
 * [ 3 ] Multiplicação
 * [ 4 ] Entrar com novos dados
 * [ 5 ] Sair
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	inclua biblioteca Util --> u

	funcao inicio()
	{
		inteiro flag = -1
		inteiro A = 0
		inteiro B = 0
		real resultado = 0.0
		enquanto (flag != 0) {
			limpa()
			escreva("+----------------------------+\n")
			escreva("|     Escolha a Operação     |\n")
			escreva("+----------------------------+\n")
			escreva("|  [1].................Soma  |\n")
			escreva("|  [2]............Subtração  |\n")
			escreva("|  [3]........Multiplicação  |\n")
			escreva("|  [4].........Divisão Real  |\n")
			escreva("|  [5]......Divisão Inteira  |\n")
			escreva("|  [6]....Modulo da Divisão  |\n")
			escreva("|  [7]........Raiz Qualquer  |\n")
			escreva("|  [8].............Potência  |\n")
			escreva("|  [9]............Logarítmo  |\n")
			escreva("|  [0].................SAIR  |\n")
			escreva("+----------------------------+\n")
			escreva(">>> ")
			leia(flag)
			escolha (flag) {
				caso 1:
					escreva("            A + B             \n")
					escreva("------------------------------\n")
					escreva("A >>> ")
					leia(A)
					escreva("B >>> ")
					leia(B)
					escreva("------------------------------\n")
					resultado = t.inteiro_para_real(A + B)
					escreva("---> ", resultado, "\n")
					pare
				caso 2:
					escreva("            A - B             \n")
					escreva("------------------------------\n")
					escreva("A >>> ")
					leia(A)
					escreva("B >>> ")
					leia(B)
					escreva("------------------------------\n")
					resultado = t.inteiro_para_real(A - B)
					escreva("---> ", resultado, "\n")
					pare
				caso 3:
					escreva("            A * B             \n")
					escreva("------------------------------\n")
					escreva("A >>> ")
					leia(A)
					escreva("B >>> ")
					leia(B)
					escreva("------------------------------\n")
					resultado = t.inteiro_para_real(A * B)
					escreva("---> ", resultado, "\n")
					pare
				caso 4:
					escreva("            A / B             \n")
					escreva("------------------------------\n")
					escreva("A >>> ")
					leia(A)
					escreva("B >>> ")
					leia(B)
					escreva("------------------------------\n")
					se (B == 0) {
						escreva("Impossosível realizar a divisão por ZERO :/\n")
					} senao {
						resultado = t.inteiro_para_real(A) / B
						escreva("---> ", m.arredondar(resultado, 2), "\n")
					}
					pare
				caso 5:
					escreva("           A // B             \n")
					escreva("------------------------------\n")
					escreva("A >>> ")
					leia(A)
					escreva("B >>> ")
					leia(B)
					escreva("------------------------------\n")
					se (B == 0) {
						escreva("Impossosível realizar a divisão por ZERO :/\n")	
					} senao {
						resultado = t.inteiro_para_real(A / B)
						escreva("---> ", t.real_para_inteiro(resultado), "\n")	
					}
					pare
				caso 6:
					escreva("            A % B             \n")
					escreva("------------------------------\n")
					escreva("A >>> ")
					leia(A)
					escreva("B >>> ")
					leia(B)
					escreva("------------------------------\n")
					se (B == 0) {
						escreva("Impossosível realizar a divisão por ZERO :/\n")
					} senao {
						resultado = t.inteiro_para_real(A % B)
						escreva("---> ", t.real_para_inteiro(resultado), "\n")
					}
					pare
				caso 7:
					escreva("            A ^/B             \n")
					escreva("------------------------------\n")
					escreva("A >>> ")
					leia(A)
					escreva("B >>> ")
					leia(B)
					escreva("------------------------------\n")
					se (B % 2 == 0) {
						se (A >= 0) {
							resultado = m.raiz(t.inteiro_para_real(A), t.inteiro_para_real(B))
							escreva("---> ", m.arredondar(resultado, 2), "\n")
						} senao {
							escreva("Não existe raiz de valor negativo para o índice ", B, "\n")
						}
					} senao {
						se (A < 0) {
							A = t.real_para_inteiro(m.valor_absoluto(t.inteiro_para_real(A)))
							resultado = m.raiz(t.inteiro_para_real(A), t.inteiro_para_real(B))
							resultado *= -1
						} senao {
							resultado = m.raiz(t.inteiro_para_real(A), t.inteiro_para_real(B))
						}
						escreva("---> ", m.arredondar(resultado, 2), "\n")
					}
					pare
				caso 8:
					escreva("            A ^ B             \n")
					escreva("------------------------------\n")
					escreva("A >>> ")
					leia(A)
					escreva("B >>> ")
					leia(B)
					escreva("------------------------------\n")
					resultado = m.potencia(t.inteiro_para_real(A), t.inteiro_para_real(B))
					escreva("---> ", m.arredondar(resultado, 2), "\n")
					pare
				caso 9:
					escreva("       log(A) - base(B)       \n")
					escreva("------------------------------\n")
					escreva("A >>> ")
					leia(A)
					escreva("B >>> ")
					leia(B)
					escreva("------------------------------\n")
					resultado = m.logaritmo(t.inteiro_para_real(A), t.inteiro_para_real(B))
					escreva("---> ", m.arredondar(resultado, 2), "\n")
					pare
				caso 0:
					escreva("Saíndo...\n")
					pare
				caso contrario:
					limpa()
					escreva(flag, " é uma opção inválida :/\n")
					escreva("Tente novamente...\n")
			}
			escreva("\nContinuar? [0 - Não | 1 - Sim]\n")
			escreva(">>> ")
			leia(flag)
			se (flag == 0) {
				escreva("Saíndo...\n")
				u.aguarde(1000)
				limpa()
			}
		}
	}
}

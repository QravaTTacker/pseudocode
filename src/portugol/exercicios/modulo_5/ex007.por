/*
 * Faça um programa que preencha um vetor com 6 nomes lidos pelo teclado. No
 * final, mostre na tela:
 * - Quais são os nomes com menos de 6 letras
 * - Quantos nomes têm menos de 6 letras
 * 
 * - Quais são os nomes que começam com uma vogal
 * - Quantos nomes começam com vogal
 * 
 * - Quais são os nomes que possuem a letra S (em qualquer posição)
 * - Quantos nomes possuem a letra S
 * 
 * No final, mostre a análise desses números.
 */

programa
{
	inclua biblioteca Texto --> TX
	inclua biblioteca Util --> U

	const inteiro SIZE = 6

	funcao inicio()
	{
		cadeia nomes[SIZE]
		cadeia vogais[5] = {"a", "e", "i", "o", "u"}
	
		para (inteiro i = 0; i < U.numero_elementos(nomes); i++) {
			escreva(i + 1, "º nome: ")
			leia(nomes[i])
		}

		inteiro total_nomes_cinco = 0
		inteiro total_vogal = 0
		inteiro total_com_s = 0

		escreva("=============================\n")
		escreva("NOMES COM MENOS DE 6 LETRAS:\n")
		para (inteiro i = 0; i < U.numero_elementos(nomes); i++) {
			se (TX.numero_caracteres(nomes[i]) < 6) {
				escreva("[", i, "]=", nomes[i], "; ")
				total_nomes_cinco++
			}	
		}
		escreva("TOTAL: ", total_nomes_cinco, "\n")

		escreva("=============================\n")
		escreva("NOMES QUE COMEÇÃO COM UMA VOGAL:\n")
		para (inteiro i = 0; i < U.numero_elementos(nomes); i++) {
			para(inteiro j = 0; j < U.numero_elementos(vogais); j++) {
				se (TX.caixa_baixa(TX.extrair_subtexto(nomes[i], 0, 1)) == vogais[j]) {
					escreva("[", i, "]=", nomes[i], "; ")
					total_vogal++
				}
			}
		}
		escreva("TOTAL: ", total_vogal, "\n")

		escreva("=============================\n")
		escreva("NOMES QUE POSSUEM S:\n")
		para (inteiro i = 0; i < U.numero_elementos(nomes); i++) {
			para (inteiro j = 0; j < TX.numero_caracteres(nomes[i]); j++) {
				se (TX.caixa_baixa(TX.extrair_subtexto(nomes[i], j, j + 1)) == "s") {
					escreva("[", i, "]=", nomes[i], "; ")
					total_com_s++
					pare
				}
			}
		}
		escreva("TOTAL: ", total_com_s, "\n")
	}
}

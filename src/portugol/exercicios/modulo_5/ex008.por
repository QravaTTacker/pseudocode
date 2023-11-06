/*
 * Faça um programa que leia nome, sexo e salário de 6 pessoas,
 * armazenando todos esses dados em vetores. No final, mostre tudo
 * aquilo que foi informado, de forma tabular.
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u

	const inteiro SIZE = 6
	
	funcao inicio()
	{
		
		cadeia nomes[SIZE]
		caracter sexos[SIZE]
		real salarios[SIZE]

		para (inteiro i = 0; i < SIZE; i++) {
			escreva("---------------\n")
			escreva("   ", i + 1, "ª PESSOA\n")
			escreva("---------------\n")
			escreva("Nome: ")
			leia(nomes[i])
			escreva("Sexo: ")
			leia(sexos[i])
			escreva("Salário: ")
			leia(salarios[i])
		}

		escreva("-----------------------------------\n",
				"NOME",
				tx.preencher_a_esquerda(' ', 17, "SEXO"),
				tx.preencher_a_esquerda(' ', 15, "SALÁRIO\n"),
				"-----------------------------------\n")
	 	
		para (inteiro i = 0; i < SIZE; i++) {
			escreva(
					nomes[i], tx.preencher_a_esquerda(' ', 17 - tx.numero_caracteres(nomes[i]), ""),
					sexos[i], tx.preencher_a_esquerda(' ', 10, "R$ "),
					m.arredondar(salarios[i], 2), "\n"
				)
		}
	}
}

/*
 * Escreva um programa que leia NOME e IDADE de vários amigos.
 * O programa será encerrado IMEDIATAMENTE se o usuário digitar a palavra
 * ACABOU no nome. No final, mostre na tela:
 * - Quantos amigos foram cadastrados
 * - Qual é o seu amigo mais velho
 * - Qual é o seu amigo mais novo
 * - A média de idade dos seus amigos
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Texto --> tx
	inclua biblioteca Tipos --> ty

	funcao inicio()
	{
		inteiro idade = 0
		inteiro maior_idade = 0
		inteiro menor_idade = 0
		
		real media = 0.0
		inteiro soma_idade = 0
		inteiro total_amigos = 0

		cadeia nome = ""
		cadeia amigo_mais_velho = "NULL"
		cadeia amigo_mais_novo = "NULL"
		
		enquanto (verdadeiro) {
			escreva("------------------------\n")
			escreva("       NOVO AMIGO       \n")
			escreva("------------------------\n")
			escreva("Digite ACABOU para sair.\n")
			escreva("Nome: ")
			leia(nome)
			se (tx.caixa_baixa(nome) == "acabou") pare
			escreva("Idade: ")
			leia(idade)
			soma_idade += idade
			total_amigos++
			se (total_amigos == 1) {
				menor_idade = idade
				maior_idade = idade
				amigo_mais_novo = nome
				amigo_mais_velho = nome
			} senao {
				se (idade > maior_idade) {
					maior_idade = idade
					amigo_mais_velho = nome
				}
				se (idade < menor_idade) {
					menor_idade = idade
					amigo_mais_novo = nome
				}
			}
		}
		media = ty.inteiro_para_real(soma_idade) / total_amigos
		escreva("===========================================\n")
		escreva("Total de amigos: ", total_amigos, "\n")
		escreva("Seu amigo mais novo é ", amigo_mais_novo, " com ", menor_idade, "\n")
		escreva("Seu amigo mais velho é ", amigo_mais_velho, " com ", maior_idade, "\n")
		escreva("A média de idade do grupo é de ", m.arredondar(media, 2), "\n")
	}
}

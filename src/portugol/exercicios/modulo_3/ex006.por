/*
 * Programa que leia a distância total de uma viagem (em Km)
 * e calcule o preço total da passagem, sabendo que ela custa R%0,50
 * para viagens até 200Km e R$0,35 para distâncias maiores.
 */

programa
{
	inclua biblioteca Matematica --> m
	
	funcao inicio()
	{
		real km = 0.0
		real taxa = 0.0
		real valor = 0.0
		
		escreva("                VIAÇÃO ESTUDONAUTA              \n")
		escreva("------------------------------------------------\n")
 		escreva("VIAGENS ATÉ 200Km:                     R$0,50/Km\n")
 		escreva("VIAGENS ACIMA DE 200Km:                R$0,35/Km\n")
		escreva("================================================\n")
		escreva("Informe a distância total daviagem, em Km: ")
		leia(km)
		
		escreva("------------------------------------------------\n")
		se (km <= 200) {
			taxa = 0.50
		} senao {
			taxa = 0.35
		}

		valor = km * taxa
		escreva("Para sua viagem de será cobrado R$", m.arredondar(valor, 2), "\n")
		escreva("Sua taxa é de ", taxa, "/Km\n")
	}
}

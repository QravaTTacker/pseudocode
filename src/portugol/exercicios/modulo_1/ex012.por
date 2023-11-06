/*
 * Programa para ler uma distância (m) e convertê-la em todas as demais 
 * medidas de comprimento.
 *
 * Quilômetro (km) = 1000 m
 * Hectômetro (hm) = 100 m
 * Decâmetro (dam) = 10 m
 * Decímetro (dm) = 0,1 m
 * Centímetro (cm) = 0,01 m
 * Milímetro (mm) = 0,001 m
 */

programa
{
	funcao inicio()
	{
		real metros = 0.0

		escreva("Distância em métros: ")
		leia(metros)

		escreva("\n-------- CONVERTENDO ", metros, "m --------")
		escreva("\n| km = ", metros / 1000)
		escreva("\n| hm = ", metros / 100)
		escreva("\n| dam = ", metros / 10)
		escreva("\n| dm = ", metros * 10)
		escreva("\n| cm = ", metros * 100)
		escreva("\n| mm = ", metros * 1000)
		escreva("\nv\n")
	}
}

/*
 * Programa que calcula quantos dias de vida um fumante perdeu.
 * Considere, para a base de cálculo, que a cada cigarro consumido, reduz
 * o tempo de vida do fumante em 10 minutos. O programa deve perguntar a
 * quantidade de anos que a pessoa fuma.
 */

programa
{
	funcao inicio()
	{
		const inteiro DIAS_DO_ANO = 365
		const inteiro MINUTOS = 10
		const inteiro MIN_HORAS = 60
		const inteiro HORAS_DIA = 24

		inteiro anos = 0, cigarros_por_dia = 0

		escreva("Há quantos anos você fuma? ")
		leia(anos)
		escreva("Quantos cigarros você fuma por dia? ")
		leia(cigarros_por_dia)

		inteiro total_de_cigarros = anos * DIAS_DO_ANO * cigarros_por_dia //Total de cigarros fumados.
		inteiro tempo_perdido = total_de_cigarros * MINUTOS // Tempo total em minutos
		inteiro dias_perdidos = tempo_perdido / (MIN_HORAS * HORAS_DIA) // Tempo em dias.

		escreva("\nAo todo, até agora você já fumou ", total_de_cigarros, " cigarros")
		escreva("\nEstima-se que você já perdeu ", dias_perdidos, " dias de vida!\n")
	}
}

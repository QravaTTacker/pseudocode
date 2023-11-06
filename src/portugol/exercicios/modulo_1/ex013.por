/*
 * Programa para ler a largura (m) e altura (m) de uma parede retangular.
 * O programa vai calcular a área (m²) da parede, além da quantidade de tinta
 * necessária para pintá-la, sabendo que cada litro de tinta pinta 2 m² de parede.
 */

programa
{
	funcao inicio()
	{
		const inteiro cociente = 2
		real largura = 0.0, altura = 0.0

		escreva("Largura da parede: ")
		leia(largura)
		escreva("Altura da parede: ")
		leia(altura)

		real area = largura * altura

		escreva("\nUma parede de ", largura, " x ", altura, " tem ", area, "m²")
		escreva("\nSerá necessário ", area / cociente, " latas de tinta")
	}
}

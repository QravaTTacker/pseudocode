/*
 * Programa que leia em que estado do Brasil a pessoa nasceu e mostre a sua naturalidade.
 */

programa
{	
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
		cadeia estado = ""
		
		escreva("Em que estado do Brasil você mora? ")
		leia(estado)

		estado = tx.caixa_alta(estado)
		
		escreva("Mascendo no Estado " + estado + " você é ")
		// Todos os gentílicos do Brasil
		se (estado == "AC") escreva("Acreano")
		senao se (estado == "AL") escreva("Alagoano")
		senao se (estado == "AP") escreva("Amapaense")
		senao se (estado == "AM") escreva("Amazonense")
		senao se (estado == "BA") escreva("Baiano")
		senao se (estado == "CE") escreva("Cearense")
		senao se (estado == "DF") escreva("Brasiliense")
		senao se (estado == "ES") escreva("Capixaba")
		senao se (estado == "GO") escreva("Goiano")
		senao se (estado == "MA") escreva("Maranhense")
		senao se (estado == "MT") escreva("Mato-grossense")
		senao se (estado == "MS") escreva("Sul-mato-grossense")
		senao se (estado == "MG") escreva("Mineiro")
		senao se (estado == "PA") escreva("Paraibano")
		senao se (estado == "PB") escreva("Pernambucano")
		senao se (estado == "PR") escreva("Paranaense")
		senao se (estado == "PE") escreva("Pernambucano")
		senao se (estado == "PI") escreva("Piauiense")
		senao se (estado == "RJ") escreva("Carioca")
		senao se (estado == "RN") escreva("Potiguar")
		senao se (estado == "RS") escreva("Gaúcho")
		senao se (estado == "RO") escreva("Rondoniense")
		senao se (estado == "RR") escreva("Roraimense")
		senao se (estado == "SC") escreva("Catarinense")
		senao se (estado == "SP") escreva("Paulista")
		senao se (estado == "SE") escreva("Sergipano")
		senao se (estado == "TO") escreva("Tocantinense")
		senao escreva("Essa sigla não existo ou não foi geristrada :/")
		escreva("\n")
	}
}

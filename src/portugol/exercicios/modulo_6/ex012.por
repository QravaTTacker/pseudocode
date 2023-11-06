/*
 * Crie uma função chamada mudar_preco() que recebe três parâmetros:
 * 
 * - real valor;
 * - real taxa;
 * - cadeia operacao
 * 
 * A função deve alterar o valor conforme uma taxa e uma operação:
 * 
 * - "A" para adicionar
 * - "D" para descontar
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> ty
	inclua biblioteca Texto --> tx
	
	funcao inicio()
	{
		cadeia op = ""
		cadeia text_op = ""
		cadeia _valor = ""
		cadeia _taxa = ""

		real valor = 0.0
		real taxa = 0.0
		
		enquanto (verdadeiro) {
			escreva("===========================\n")
			escreva(" AUMENTO.................A \n")
			escreva(" DESCONTO................D \n")
			escreva("===========================\n")
			escreva(">>> ")
			leia(op)
			op = tx.caixa_alta(op)
			se (op == "A" ou op == "D") pare
			limpa()
		}
		
		se (op == "A") text_op = "Aumento de valor"
		senao text_op = "Desconto de valor"
		
		enquanto (verdadeiro) {
			escreva("---------------------------\n")
			escreva("Preço: ")
			leia(_valor)
			se (is_numeric(_valor)) pare
			limpa()
			escreva("Operação: ", text_op, "\n")
		}

		valor = string_to_numeric(_valor)

		enquanto (verdadeiro) {
			escreva("---------------------------\n")
			escreva("Taxa: ")
			leia(_taxa)
			se (is_numeric(_taxa)) pare
			limpa()
			escreva("Operação: ", text_op, "\n")
			escreva("---------------------------\n")
			escreva("Preço R$", m.arredondar(valor, 2), "\n")
		}

		taxa = string_to_numeric(_taxa)

		escreva("===========================\n")
		escreva("R$", m.arredondar(valor, 2), " com ",
				tx.caixa_baixa(text_op), " ",
				m.arredondar(taxa, 2), "% ficará com R$",
				m.arredondar(mudar_preco(valor, taxa, op), 2), "\n")
	}

	funcao real string_to_numeric(cadeia str) {
		se (ty.cadeia_e_inteiro(str, 10)) 
			retorne ty.inteiro_para_real(ty.cadeia_para_inteiro(str, 10))
		retorne ty.cadeia_para_real(str)
	}

	funcao logico is_numeric(cadeia str) 
	{
		se (ty.cadeia_e_real(str) ou ty.cadeia_e_inteiro(str, 10)) retorne verdadeiro
		retorne falso
	}
	
	funcao real mudar_preco(real valor, real taxa, cadeia operacao)
	{
		se (tx.numero_caracteres(operacao) < 1) 
			retorne valor
			
		caracter op = tx.obter_caracter(tx.caixa_alta(operacao), 0)
		
		escolha (op) {
			caso 'A':
				valor += (valor * taxa / 100)
				pare
			caso 'D':
				valor -= (valor * taxa / 100)
		}
		retorne valor
	}
}

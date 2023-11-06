programa
{
	// Biblioteca para tratamento e conversões de tipos.
	inclua biblioteca Tipos --> type
	
	funcao inicio()
	{
		
		/* 
		 * cadeia_e_inteiro(cadeia, inteiro) 
		 * ----> Verifica se uma cadeia é um número inteiro conforme uma base numérica:
		 * 
		 * 2 -> Apenas os valores: 0, 1.
		 * 
		 * 10 -> Apenas os valores: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.
		 * 
		 * 16 -> Apenas os valores: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F.
		 * 
		 */
		 
		cadeia base_bin = "101"
		
		escreva("------------ Analisando BASE BINÁRIA \n")
		escreva("É um inteiro (base 2)? ", type.cadeia_e_inteiro(base_bin, 2), "\n")
		escreva("É um inteiro (base 10)? ", type.cadeia_e_inteiro(base_bin, 10), "\n")
		escreva("É um inteiro (base 16)? ", type.cadeia_e_inteiro(base_bin, 16), "\n\n")
		
		cadeia base_decimal = "12"
		
		escreva("------------ Analisando BASE DECIMAL \n")
		escreva("É um inteiro (base 2)? ", type.cadeia_e_inteiro(base_decimal, 2), "\n")
		escreva("É um inteiro (base 10)? ", type.cadeia_e_inteiro(base_decimal, 10), "\n")
		escreva("É um inteiro (base 16)? ", type.cadeia_e_inteiro(base_decimal, 16), "\n\n")
		
		cadeia base_hexdecimal = "FF"
		
		escreva("------------ Analisando BASE HEXADECIMAL \n")
		escreva("É um inteiro (base 2)? ", type.cadeia_e_inteiro(base_hexdecimal, 2), "\n")
		escreva("É um inteiro (base 10)? ", type.cadeia_e_inteiro(base_hexdecimal, 10), "\n")
		escreva("É um inteiro (base 16)? ", type.cadeia_e_inteiro(base_hexdecimal, 16), "\n\n")
	}
}

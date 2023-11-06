programa
{
	// Biblioteca para tratamento e conversões de tipos.
	inclua biblioteca Tipos --> type

	funcao inicio()
	{
		/* 
		 * cadeia_para_inteiro(cadeia)
		 * ----> Converte uma cadeia para um valor inteiro.
		 * 
		 * Obs: A cadeia de caracteres deve representar um valor inteiro, por isso é recomendado 
		 *      verificar com a função cadeia_e_inteiro(cadeia, inteiro).
		 * 
		 *      "123"         ->  Converte
		 *      "123.0"       ->  Não converte
		 *      "#"           ->  Não converte
		 *      "verdadeiro"  ->  Não converte
		 *      "Hello"       ->  Não converte
		 * 
		 * 
		 * cadeia_para_real(cadeia)
		 * ----> Converte uma cadeia para um valor real.
		 * 
		 * Obs: A cadeia de caracteres deve representar um valor real, por isso é recomendado
		 *      verificar com a função cadeia_e_real(cadeia).
		 * 
		 *      "123"         ->  Converte
		 *      "123.0"       ->  Converte
		 *      "#"           ->  Não converte
		 *      "verdadeiro"  ->  Não converte
		 *      "Hello"       ->  Não converte
		 * 
		 * 
		 * cadeia_para_logico(cadeia)
		 * ----> Converte uma cadeia para um lógico.
		 * 
		 * Obs: A cadeia de caracteres deve representar um valor lógico (verdadeiro ou falso), 
		 *      por isso é recomendado verificar com a função cadeia_e_logico(cadeia).
		 * 
		 *      "123"         ->  Não converte
		 *      "123.0"       ->  Não converte
		 *      "#"           ->  Não converte
		 *      "verdadeiro"  ->  Converte
		 *      "Hello"       ->  Não converte
		 * 
		 * 
		 * cadeia_para_caracter(cadeia)
		 * ----> Converte uma cadeia para um caractere.
		 * 
		 * Obs: A cadeia de caracteres deve representar um único caractere, por isso é 
		 *      recomendado verificar com a função cadeia_e_caracter(cadeia).
		 * 
		 *      "123"         ->  Não converte
		 *      "123.0"       ->  Não converte
		 *      "#"           ->  Converte
		 *      "verdadeiro"  ->  Não converte
		 *      "Hello"       ->  Não converte
		 */

		cadeia stringInt = "123"
		cadeia stringFloat = "123.0"
		cadeia stringBool = "verdadeiro"
		cadeia stringCharInt = "1"
		cadeia stringCharChar = "#"

		escreva("===================== CADEIA -> INTEIRO \n")
		escreva("\"123\" para inteiro: ", type.cadeia_para_inteiro(stringInt, 10), "\n")
		// escreva("\"123.0\" para inteiro: ", type.cadeia_para_inteiro(stringFloat, 10), "\n")
		// escreva("\"verdadeiro\" para inteiro: ", type.cadeia_para_inteiro(stringBool, 10), "\n")
		escreva("\"1\" para inteiro: ", type.cadeia_para_inteiro(stringCharInt, 10), "\n")
		escreva("\"A\" para inteiro: ", type.cadeia_para_inteiro("A", 16), " (A - F na base 16)\n")
		// escreva("\"#\" para inteiro: ", type.cadeia_para_inteiro(stringCharChar, 10), "\n")


		escreva("\n===================== CADEIA -> REAL \n")
		escreva("\"123\" para real: ", type.cadeia_para_real(stringInt), "\n")
		escreva("\"123.0\" para real: ", type.cadeia_para_real(stringFloat), "\n")
		// escreva("\"verdadeiro\" para real: ", type.cadeia_para_real(stringBool), "\n")
		escreva("\"1\" para real: ", type.cadeia_para_real(stringCharInt), "\n")
		// escreva("\"#\" para real: ", type.cadeia_para_real(stringCharChar), "\n")


		escreva("\n===================== CADEIA -> LÓGICO \n")
		// escreva("\"123\" para lógico", type.cadeia_para_logico(stringInt), "\n")
		// escreva("\"123.0\" para lógico", type.cadeia_para_logico(stringFloat), "\n")
		escreva("\"verdadeiro\" para lógico: ", type.cadeia_para_logico(stringBool), "\n")
		// escreva("\"1\" para lógico: ", type.cadeia_para_logico(stringCharInt), "\n")
		// escreva("\"#\" para lógico: ", type.cadeia_para_logico(stringCharChar), "\n")


		escreva("\n===================== CADEIA -> CARACTERE \n")
		// escreva("\"123\" para caracter: ", type.cadeia_para_caracter(stringInt), "\n")
		// escreva("\"123.0\" para caracter: ", type.cadeia_para_caracter(stringFloat), "\n")
		// escreva("\"veradeiro\" para caracter: ", type.cadeia_para_caracter(stringBool), "\n")
		escreva("\"1\" para caracter: ", type.cadeia_para_caracter(stringCharInt), "\n")
		escreva("\"#\" para caracter: ", type.cadeia_para_caracter(stringCharChar), "\n")
	}
}

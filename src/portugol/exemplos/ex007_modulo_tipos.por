programa
{
	// Biblioteca para tratamento e conversões de tipos.
	inclua biblioteca Tipos --> type
	
	funcao inicio()
	{
		
		/* 
		 * BASE NUMÉRICAS
		 *  
		 * cadeia_e_caracter(cadeia)
		 * ----> Verifica se uma cadeia é um caractere.
		 * 
		 * cadeia_e_inteiro(cadeia, int)
		 * ----> Verifica se uma cadeia é um número inteiro conforme uma base numérica (2, 10, 16)
		 *       (2 - binário); (10 - decimal); (16 - hexadecimal).
		 * 
		 * cadeia_e_real(cadeia)
		 * ----> Verifica se uma cadeia é um número real.
		 * 
		 * cadeia_e_logico(cadeia)
		 * ----> Verifica se uma cadeia é um valor lógico (verdadeiro e falso).
		 * 
		 * caracter_e_inteiro(caracter)
		 * ----> Verifica se um caractere é um valor inteiro (0, 1, 2, 3, 4, 5, 6, 7, 8, 9).
		 * 
		 * caracter_e_logico(caracter)
		 * ----> Verifica se um caractere é um valor lógico ('S', 's', 'N', 'n').
		 * 
		 */
		
		
		escreva("========================================== FUNÇÕES PARA CADEIAS \n\n")
		
		cadeia string = "Olá"
		
		escreva("------------ Analisando STRING \n")
		escreva("É um caractere? ", type.cadeia_e_caracter(string), "\n")
		escreva("É um inteiro (base 10)? ", type.cadeia_e_inteiro(string, 10), "\n")
		escreva("É um real? ", type.cadeia_e_real(string), "\n")
		escreva("É um lógico? ", type.cadeia_e_logico(string), "\n\n")
		
		cadeia char = "@"
		
		escreva("------------ Analisando CHAR \n")
		escreva("É um caractere? ", type.cadeia_e_caracter(char), "\n")
		escreva("É um inteiro (base 10)? ", type.cadeia_e_inteiro(char, 10), "\n")
		escreva("É um real? ", type.cadeia_e_real(char), "\n")
		escreva("É um lógico? ", type.cadeia_e_logico(char), "\n\n")
		
		cadeia int = "2023"
		
		escreva("------------ Analisando INT \n")
		escreva("É um caractere? ", type.cadeia_e_caracter(int), "\n")
		escreva("É um inteiro (base 10)? ", type.cadeia_e_inteiro(int, 10), "\n")
		escreva("É um real? ", type.cadeia_e_real(int), "\n")
		escreva("É um lógico? ", type.cadeia_e_logico(int), "\n\n")
		
		cadeia float = "2342.23"
		
		escreva("------------ Analisando FLOAT \n")
		escreva("É um caractere? ", type.cadeia_e_caracter(float), "\n")
		escreva("É um inteiro (base 10)? ", type.cadeia_e_inteiro(float, 10), "\n")
		escreva("É um real? ", type.cadeia_e_real(float), "\n")
		escreva("É um lógico? ", type.cadeia_e_logico(float), "\n\n")
		
		cadeia boolean = "falso"
		
		escreva("------------ Analisando BOOLEAN \n")
		escreva("É um caractere? ", type.cadeia_e_caracter(boolean), "\n")
		escreva("É um inteiro (base 10)? ", type.cadeia_e_inteiro(boolean, 10), "\n")
		escreva("É um real? ", type.cadeia_e_real(boolean), "\n")
		escreva("É um lógico? ", type.cadeia_e_logico(boolean), "\n\n\n")
		
		escreva("========================================== FUNÇÕES PARA CARACTERES \n\n")
		
		caracter charChar = '@'
		
		escreva("------------ Analisando CHAR \n")
		escreva("É um inteiro? ", type.caracter_e_inteiro(charChar), "\n")
		escreva("É um lógico? ", type.caracter_e_logico(charChar), "\n\n")
		
		caracter charInt = '1'
		
		escreva("------------ Analisando INT \n")
		escreva("É um inteiro? ", type.caracter_e_inteiro(charInt), "\n")
		escreva("É um lógico? ", type.caracter_e_logico(charInt), "\n\n")
		
		caracter charBool = 'N'
		
		escreva("------------ Analisando BOOL \n")
		escreva("É um inteiro? ", type.caracter_e_inteiro(charBool), "\n")
		escreva("É um lógico? ", type.caracter_e_logico(charBool), "\n\n")
	}
}

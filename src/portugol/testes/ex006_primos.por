programa
{
	inclua biblioteca Matematica --> m	
	inclua biblioteca Tipos --> ty
	
	funcao inicio()
	{
		inteiro valor = 0
		logico primo = verdadeiro
		
		escreva("Valor: ")
		leia(valor)

		para (inteiro i = 2; i <= m.raiz(ty.inteiro_para_real(valor), 2.0) e primo == verdadeiro; i++)
			se (valor % i == 0)
				primo = falso
				
		se (primo) escreva(valor, " é primo!\n")
		senao escreva(valor, " não é primo!\n")
	}
}

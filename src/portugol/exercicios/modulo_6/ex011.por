/*
 * Faça uma função que receba um valor para definir a qunatidade de termos da 
 * sequência de Fibonacci.
 */

programa
{
	inclua biblioteca Matematica --> m
	inclua biblioteca Tipos --> t
	
	funcao inicio()
	{
		inteiro valor = 0
		escreva("Digite um valor: ")
		leia(valor)
		fibonacci(valor)
	}

	funcao vazio fibonacci(inteiro size) 
	{
		size = t.real_para_inteiro(m.valor_absoluto(t.inteiro_para_real(size)))
		inteiro t1 = 0
		inteiro t2 = 1
		inteiro fib = 0
		para (inteiro i = 1; i <= size; i++) {
			escreva(t1, " ")
			fib = t1 + t2
			t1 = t2
			t2 = fib
		}
	}
}

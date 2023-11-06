programa
{
	funcao inicio()
	{
		inteiro x = 0
		escreva("x: ", x, "\n")
		fn_val(x)
		escreva("fn_val: ", x, "\n")
		fn_ref(x)
		escreva("fn_ref: ", x, "\n")
	}

	funcao fn_val(inteiro valor) 
	{
		valor++
	}
	
	funcao fn_ref(inteiro &valor) 
	{
		valor++
	}
}

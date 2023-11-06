programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro vetor[] = {1, 2, 3, 4, 5}
		escreva_array(vetor)
		
		swap(vetor, 0, u.numero_elementos(vetor) - 1)
		escreva_array(vetor)
		
		swap(vetor, 0, u.numero_elementos(vetor) - 1)
		escreva_array(vetor)
		
		swap(vetor, 0, u.numero_elementos(vetor) - 1)
		escreva_array(vetor)
	}

	funcao vazio escreva_array(inteiro vetor[]){
		escreva("[")
		inteiro SIZE = u.numero_elementos(vetor)
		para (inteiro i = 0; i < SIZE - 1; i++)
			escreva(vetor[i], ", ")
		escreva(vetor[SIZE - 1], "]\n")
	}

	funcao vazio swap(inteiro array[], inteiro a, inteiro b){
		array[a] = array[a] ^ array[b]
		array[b] = array[a] ^ array[b]
		array[a] = array[a] ^ array[b]
	}
}

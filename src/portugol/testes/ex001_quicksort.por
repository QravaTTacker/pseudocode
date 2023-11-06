programa
{
    inclua biblioteca Util --> u

    const inteiro SIZE = 10
    inteiro trocas = 0
    inteiro compara = 0

    funcao inicio ()
    {
        cadeia ops[3] = {"MIDDLE", "START", "END"}
        inteiro vetor[SIZE]
        inteiro tempo = 0
        inteiro i
        inteiro op = 0
        enquanto (op < 3) {
            para (i = 0; i < SIZE; i++)
                vetor[i] = SIZE - i //u.sorteia(0, 100)
            escreva_vetor(vetor)
            escolha (op) {
                caso 0:
                    tempo = u.tempo_decorrido()
                    quicksort_middle(vetor, 0, u.numero_elementos(vetor) -1)
                    tempo = u.tempo_decorrido() - tempo
                    pare
                caso 1:
                    tempo = u.tempo_decorrido()
                    quicksort_start(vetor, 0, u.numero_elementos(vetor) -1)
                    tempo = u.tempo_decorrido() - tempo
                    pare
                caso 2:
                    tempo = u.tempo_decorrido()
                    quicksort_end(vetor, 0, u.numero_elementos(vetor) -1)
                    tempo = u.tempo_decorrido() - tempo
                    pare
            }
            escreva_vetor(vetor)
            escreva("---------- ", ops[op], "\n")
            escreva("Trocas: ", trocas, "\n")
            escreva("Comparações: ", compara, "\n")
            escreva("Tempo: ", tempo, "ms\n")
            escreva("--------------------------------\n\n")
            trocas = 0
            compara = 0
            op++
        }
    }

    funcao vazio quicksort_middle(inteiro vetor[], inteiro start, inteiro end)
    {
        se (start < end) {
            inteiro index_pivo = partition_middle(vetor, start, end)
            quicksort_middle(vetor, start, index_pivo - 1)
            quicksort_middle(vetor, index_pivo + 1, end)
        }
    }

    funcao vazio quicksort_start(inteiro vetor[], inteiro start, inteiro end)
    {
        se (start < end) {
            inteiro index_pivo = partition_start(vetor, start, end)
            quicksort_start(vetor, start, index_pivo - 1)
            quicksort_start(vetor, index_pivo + 1, end)
        }
    }

    funcao vazio quicksort_end(inteiro vetor[], inteiro start, inteiro end)
    {
        se (start < end) {
            inteiro index_pivo = partition_end(vetor, start, end)
            quicksort_end(vetor, start, index_pivo - 1)
            quicksort_end(vetor, index_pivo + 1, end)
        }
    }

    funcao inteiro partition_middle(inteiro vetor[], inteiro start, inteiro end)
    {
        inteiro i = start
        inteiro middle = (end + start) / 2
        inteiro pivo = vetor[middle]
        swap(vetor, end, middle)
        para(inteiro j = start; j < end; j++){
            se (vetor[j] < pivo) {
                swap(vetor, i, j)
                i++
            }
        }
        swap(vetor, i, end)
        retorne i
    }

    funcao inteiro partition_start(inteiro vetor[], inteiro start, inteiro end)
    {
        inteiro i = end
        inteiro pivo = vetor[start]
        para (inteiro j = end; j > start; j--) {
            compara++
            se (vetor[j] > pivo) {
                trocas++
                swap(vetor, i, j)
                i--
            }
        }
        trocas++
        swap(vetor, i, start)
        retorne i
    }

    funcao inteiro partition_end(inteiro vetor[], inteiro start, inteiro end)
    {
        inteiro i = start
        inteiro pivo = vetor[end]
        para (inteiro j = start; j < end; j++) {
            compara++
            se (vetor[j] < pivo) {
                trocas++
                swap(vetor, i, j)
                i++
            }
        }
        trocas++
        swap(vetor, i, end)
        retorne i
    }

    funcao vazio swap(inteiro vetor[], inteiro a, inteiro b)
    {
        inteiro aux = vetor[a]
        vetor[a] = vetor[b]
        vetor[b] = aux
    }

    funcao vazio escreva_vetor(inteiro vetor[])
    {
        inteiro i
        escreva("[")
        para (i = 0; i < u.numero_elementos(vetor) - 1; i++) {
            escreva(vetor[i], ", ")
        }
        escreva(vetor[i], "]\n")
    } 
}

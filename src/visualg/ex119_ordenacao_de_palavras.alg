algoritmo "Ordenação de Palavras"
var
   arr : vetor[0..4] de caractere
   copy : caractere
   i, j : inteiro

procedimento dadosBase()
inicio
   arr[0] <- "Maria"
   arr[1] <- "Marcos"
   arr[2] <- "Ana"
   arr[3] <- "Carol"
   arr[4] <- "Camila"
   para i de 0 ate 4 faça
      escreval("":i+1, arr[i])
   fimpara
fimprocedimento

procedimento ordernar()
var
   tam, k, a, b : inteiro
inicio
   para i de 0 até 3 faça
      para j de i+1 até 4 faça
         tam <- int((compr(arr[i]) + compr(arr[j]) - abs(compr(arr[i]) - compr(arr[j])))/2)
         para k de 1 até tam faça
            a <- asc(copia(arr[i], k, 1))
            b <- asc(copia(arr[j], k, 1))
            se (a > b) então
               copy <- arr[i]
               arr[i] <- arr[j]
               arr[j] <- copy
               interrompa
            fimse
            se (copia(arr[i], 1, tam) = copia(arr[j], 1, tam)) e (compr(arr[i]) > compr(arr[j])) então
               copy <- arr[i]
               arr[i] <- arr[j]
               arr[j] <- copy
            fimse
            se (a < b) então
               interrompa
            fimse
         fimpara
      fimpara
   fimpara
   mostrarDados()
fimprocedimento

procedimento mostrarDados()
inicio
   escreval()
   para i de 0 até 4 faça
      escreval("":5-i, arr[i])
   fimpara
fimprocedimento

inicio

   dadosBase()
   ordernar()

fimalgoritmo
algoritmo "Formas de Compara��o"
var
   arr : vetor[1..3] de inteiro
   i, j, aux, comp : inteiro
   retorno : Logico

procedimento mostrarArr()
inicio
   para i de 1 at� 3 fa�a
      escreva(arr[i]:2)
   fimpara
fimprocedimento

inicio

   comp <- 0
   arr[1] <- 1
   arr[2] <- 2
   arr[3] <- 3
   mostrarArr()
   escreval()

   // Forma Burra
   para i de 1 at� 3 fa�a
      para j de 1 at� 3 fa�a
         se (arr[i] < arr[j]) ent�o
            aux <- arr[i]
            arr[i] <- arr[j]
            arr[j] <- aux
         fimse
         comp <- comp + 1
      fimpara
   fimpara

   mostrarArr()
   escreval()
   escreval(" Compara��es:", comp)
   escreval()





   comp <- 0
   arr[1] <- 1
   arr[2] <- 2
   arr[3] <- 3
   mostrarArr()
   escreval()

   // Forma Normal
   para i de 1 at� 2 fa�a
      para j de i+1 at� 3 fa�a
         se (arr[i] > arr[j]) ent�o
            aux <- arr[i]
            arr[i] <- arr[j]
            arr[j] <- aux
         fimse
         comp <- comp + 1
      fimpara
   fimpara

   mostrarArr()
   escreval()
   escreval(" Compara��es:", comp)
   escreval()





   comp <- 0
   arr[1] <- 1
   arr[2] <- 2
   arr[3] <- 3
   mostrarArr()
   escreval()

   // Forma Intelig�nte
   repita
      para i de 1 at� 2 fa�a
         retorno <- Verdadeiro
         se (arr[i] > arr[i+1]) ent�o
            aux <- arr[i]
            arr[i] <- arr[i+1]
            arr[i+1] <- aux
            retorno <- Falso
         fimse
         comp <- comp + 1
      fimpara
   at�(retorno = Verdadeiro)

   mostrarArr()
   escreval()
   escreval(" Compara��es:", comp)

fimalgoritmo
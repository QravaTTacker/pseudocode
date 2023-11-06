algoritmo "Formas de Comparação"
var
   arr : vetor[1..3] de inteiro
   i, j, aux, comp : inteiro
   retorno : Logico

procedimento mostrarArr()
inicio
   para i de 1 até 3 faça
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
   para i de 1 até 3 faça
      para j de 1 até 3 faça
         se (arr[i] < arr[j]) então
            aux <- arr[i]
            arr[i] <- arr[j]
            arr[j] <- aux
         fimse
         comp <- comp + 1
      fimpara
   fimpara

   mostrarArr()
   escreval()
   escreval(" Comparações:", comp)
   escreval()





   comp <- 0
   arr[1] <- 1
   arr[2] <- 2
   arr[3] <- 3
   mostrarArr()
   escreval()

   // Forma Normal
   para i de 1 até 2 faça
      para j de i+1 até 3 faça
         se (arr[i] > arr[j]) então
            aux <- arr[i]
            arr[i] <- arr[j]
            arr[j] <- aux
         fimse
         comp <- comp + 1
      fimpara
   fimpara

   mostrarArr()
   escreval()
   escreval(" Comparações:", comp)
   escreval()





   comp <- 0
   arr[1] <- 1
   arr[2] <- 2
   arr[3] <- 3
   mostrarArr()
   escreval()

   // Forma Inteligênte
   repita
      para i de 1 até 2 faça
         retorno <- Verdadeiro
         se (arr[i] > arr[i+1]) então
            aux <- arr[i]
            arr[i] <- arr[i+1]
            arr[i+1] <- aux
            retorno <- Falso
         fimse
         comp <- comp + 1
      fimpara
   até(retorno = Verdadeiro)

   mostrarArr()
   escreval()
   escreval(" Comparações:", comp)

fimalgoritmo
algoritmo "Selection Sort"
var
   vet : vetor[0..3] de inteiro
   i, j, menorIndex, menor, aux : inteiro
inicio

   para i de 0 ate 3 faca
      vet[i] <- 3-i
      escreva(vet[i], " ")
   fimpara
   escreval()

   para i de 0 ate 2 faca
      menor <- vet[i]
      menorIndex <- i
      para j de i ate 3 faca
         se (menor > vet[j]) entao
            menor <- vet[j]
            menorIndex <- j
         fimse
      fimpara

      se (menor < vet[i]) entao
         aux <- vet[i]
         vet[i] <- menor
         vet[menorIndex]  <- aux
      fimse

   fimpara
   
   para i de 0 ate 3 faca
        escreva(vet[i], " ")
   fimpara

fimalgoritmo
algoritmo "Insertion Sort"
var
   vet : vetor[0..9] de inteiro
   i, j, valorAtual : inteiro
inicio

   para i de 0 ate 9 faca
      vet[i] <- randi(10)
      escreva(vet[i]:3)
   fimpara

   para i de 1 ate 9 faca
      valorAtual <- vet[i]
      j <- (i - 1)
      enquanto ((j >= 0) e (vet[j] > valorAtual)) faca
         vet[j+1] <- vet[j]
         j <- (j - 1)
      fimenquanto
      vet[j+1] <- valorAtual
   fimpara
   
   para i de 0 ate 9 faca
      escreva(vet[i]:3)
   fimpara
   
fimalgoritmo
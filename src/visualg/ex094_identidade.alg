algoritmo "Identidade"
var
   MI : vetor[1..7, 1..7] de inteiro
   i, j : inteiro
inicio
   para i <- 1 até 7 faça
      para j <- 1 até 7 faça
         se (i = j) então
            MI[i,j] <- 1
         senão
            MI[i,j] <- 0
         fimse
      fimpara
   fimpara
   escreval("===============================")
   para i <- 1 até 7 faça
      para j <- 1 até 7 faça
         escreva(" ", MI[i,j])
      fimpara
      escreval
   fimpara
   escreval("===============================")
fimalgoritmo
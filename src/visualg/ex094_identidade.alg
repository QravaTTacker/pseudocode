algoritmo "Identidade"
var
   MI : vetor[1..7, 1..7] de inteiro
   i, j : inteiro
inicio
   para i <- 1 at� 7 fa�a
      para j <- 1 at� 7 fa�a
         se (i = j) ent�o
            MI[i,j] <- 1
         sen�o
            MI[i,j] <- 0
         fimse
      fimpara
   fimpara
   escreval("===============================")
   para i <- 1 at� 7 fa�a
      para j <- 1 at� 7 fa�a
         escreva(" ", MI[i,j])
      fimpara
      escreval
   fimpara
   escreval("===============================")
fimalgoritmo
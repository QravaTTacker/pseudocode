algoritmo "Tri�ngulo de Floyd"
var
   i, j, n, soma : inteiro
inicio
   escreval("------------ FOR ------------")
   escreval
   escreva("N�mero de linhas: ")
   leia(n)
   escreval
   soma <- 1
   para i := 1 at� n fa�a
      para j := 1 at� i fa�a
         escreva(soma:5)
         soma <- soma + 1
      fimpara
      escreval
   fimpara
   escreval
   escreval
   escreval("----------- WHILE -----------")
   escreval
   escreva("N�mero de linhas: ")
   leia(n)
   escreval
   soma <- 1
   i <- 1
   enquanto (i <= n) fa�a
      j <- 1
      enquanto (j <= i) fa�a
         escreva(soma:5)
         soma <- soma + 1
         j <- j + 1
      fimenquanto
      escreval
      i <- i + 1
   fimenquanto
   escreval
   escreval
   escreval("---------- DO WHILE ----------")
   escreval
   escreva("N�mero de linhas: ")
   leia(n)
   escreval
   soma <- 1
   i <- 1
   repita
      j <- 1
      repita
         escreva(soma:5)
         soma <- soma + 1
         j <- j + 1
      at�(j > i)
      escreval
      i <- i + 1
   at�(i > n)
   escreval
   escreval("------------------------------")
   escreval
fimalgoritmo
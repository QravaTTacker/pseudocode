algoritmo "Triângulo de Floyd"
var
   i, j, n, soma : inteiro
inicio
   escreval("------------ FOR ------------")
   escreval
   escreva("Número de linhas: ")
   leia(n)
   escreval
   soma <- 1
   para i := 1 até n faça
      para j := 1 até i faça
         escreva(soma:5)
         soma <- soma + 1
      fimpara
      escreval
   fimpara
   escreval
   escreval
   escreval("----------- WHILE -----------")
   escreval
   escreva("Número de linhas: ")
   leia(n)
   escreval
   soma <- 1
   i <- 1
   enquanto (i <= n) faça
      j <- 1
      enquanto (j <= i) faça
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
   escreva("Número de linhas: ")
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
      até(j > i)
      escreval
      i <- i + 1
   até(i > n)
   escreval
   escreval("------------------------------")
   escreval
fimalgoritmo
algoritmo "Conta positiva e negativa"
var
   i, f : inteiro
inicio

   i <- 0
   f <- 0

   escreval("----------------------------------")
   escreva("Informe um valor de início: ")
   leia(i)
   escreva("Informe um valor de chegada: ")
   leia(f)
   escreval("----------------------------------")

   se (i < f) então

      enquanto (i <= f) faça
         escreva(i, "... ")
         i <- i + 1
      fimenquanto

   senão se (i > f) então

      enquanto (i >= f) faça
         escreva(i, "... ")
         i <- i - 1
      fimenquanto

   fimse
   
   escreval
   
fimalgoritmo
algoritmo "Conta positiva e negativa"
var
   i, f : inteiro
inicio

   i <- 0
   f <- 0

   escreval("----------------------------------")
   escreva("Informe um valor de in�cio: ")
   leia(i)
   escreva("Informe um valor de chegada: ")
   leia(f)
   escreval("----------------------------------")

   se (i < f) ent�o

      enquanto (i <= f) fa�a
         escreva(i, "... ")
         i <- i + 1
      fimenquanto

   sen�o se (i > f) ent�o

      enquanto (i >= f) fa�a
         escreva(i, "... ")
         i <- i - 1
      fimenquanto

   fimse
   
   escreval
   
fimalgoritmo
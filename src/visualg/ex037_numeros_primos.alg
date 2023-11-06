algoritmo "Números Primos"
var
   i, j, d: inteiro
inicio

   i <- 0
   j <- 0
   d <- 0
   escreva("Digite um número: ")
   leia(j)
   i <- j
   repita
      se(j % i = 0)então
         d <- d + 1
      fimse
      i <- i - 1
   até(i < 1)
   
   escreval("--------------------------")
   se(d = 2)então
      escreval("      ", j, " é primo")
   senão
      escreval("    ", j, " não é primo")
   fimse
   escreval("--------------------------")

fimalgoritmo
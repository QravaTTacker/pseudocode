algoritmo "N�meros Primos"
var
   i, j, d: inteiro
inicio

   i <- 0
   j <- 0
   d <- 0
   escreva("Digite um n�mero: ")
   leia(j)
   i <- j
   repita
      se(j % i = 0)ent�o
         d <- d + 1
      fimse
      i <- i - 1
   at�(i < 1)
   
   escreval("--------------------------")
   se(d = 2)ent�o
      escreval("      ", j, " � primo")
   sen�o
      escreval("    ", j, " n�o � primo")
   fimse
   escreval("--------------------------")

fimalgoritmo
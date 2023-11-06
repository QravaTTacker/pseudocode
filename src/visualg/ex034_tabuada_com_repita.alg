algoritmo "Tabuada Com Repita"
var
   i, j : inteiro
inicio

   i <- 0
   j <- 0
   escreva("Informe um número para mostrarmos a sua tabuada: ")
   leia(j)
   repita
      escreval(i, " x", j, " =", (i*j))
      i <- i + 1
   até(i > 10)

fimalgoritmo
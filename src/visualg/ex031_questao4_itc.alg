algoritmo "Quest�o 04 - ITC"
var
   massa : real
   time, seg, min, hora : inteiro
inicio

   massa <- 0
   time <- 0
   seg <- 0
   min <- 0
   hora <- 0

   escreva("Informe a massa do produto em gramas: ")
   leia(massa)

   enquanto (massa >= 1/2) fa�a

      massa <- massa - (massa/100)
      time <- time + 1

   fimenquanto

   hora <- time\3600
   min <- (time - (hora * 3600))\60
   seg <- time - (hora * 3600) - (min * 60)

   escreval
   escreval("Tempo total:", hora, " horas,", min, " minutos e", seg, " segundos")

fimalgoritmo
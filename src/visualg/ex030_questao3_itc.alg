algoritmo "Quest�o 03 - ITC"
var
   Ni, resto : inteiro
inicio

   Ni <- 1000
   resto <- 0

   enquanto (Ni <= 1999) fa�a

      resto <- Ni % 11
      se (resto = 5) ent�o

         escreva(Ni, "...")

      sen�o
      fimse

      Ni <- Ni + 1

   fimenquanto

fimalgoritmo
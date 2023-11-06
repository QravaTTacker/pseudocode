algoritmo "Questão 03 - ITC"
var
   Ni, resto : inteiro
inicio

   Ni <- 1000
   resto <- 0

   enquanto (Ni <= 1999) faça

      resto <- Ni % 11
      se (resto = 5) então

         escreva(Ni, "...")

      senão
      fimse

      Ni <- Ni + 1

   fimenquanto

fimalgoritmo
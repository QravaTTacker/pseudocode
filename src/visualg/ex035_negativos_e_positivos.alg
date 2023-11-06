algoritmo "Negativos e Positivos"
var
   i, positivo, negativo: inteiro
   j : real
inicio

   positivo <- 0
   negativo <- 0
   j <- 0
   i <- 1
   repita
      escreva("Digite um número: ")
      leia(j)
      se(j >= 0)então
         positivo <- positivo + 1
      senão
         negativo <- negativo + 1
      fimse
      i <- i + 1
   até(i > 5)
   escreval
   escreval("Números negativos:", negativo)
   escreval("Números positivos:", positivo)

fimalgoritmo
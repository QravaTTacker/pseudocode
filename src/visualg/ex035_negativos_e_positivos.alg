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
      escreva("Digite um n�mero: ")
      leia(j)
      se(j >= 0)ent�o
         positivo <- positivo + 1
      sen�o
         negativo <- negativo + 1
      fimse
      i <- i + 1
   at�(i > 5)
   escreval
   escreval("N�meros negativos:", negativo)
   escreval("N�meros positivos:", positivo)

fimalgoritmo
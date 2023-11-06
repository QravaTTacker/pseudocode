algoritmo "Par ou ímpar"
var
   valor, div_ : inteiro
inicio

   escreva("Informe um valor: ")
   leia(valor)
   div_ <- (valor % 2)
   se (div_ = 0) entao
      escreval("O número é par!")
   senao
      escreval("O número é ímpar!")
   fimse

fimalgoritmo
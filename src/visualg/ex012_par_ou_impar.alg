algoritmo "Par ou �mpar"
var
   valor, div_ : inteiro
inicio

   escreva("Informe um valor: ")
   leia(valor)
   div_ <- (valor % 2)
   se (div_ = 0) entao
      escreval("O n�mero � par!")
   senao
      escreval("O n�mero � �mpar!")
   fimse

fimalgoritmo
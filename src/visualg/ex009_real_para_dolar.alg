algoritmo "semnome"
var
reais, dolar : real
inicio

      escreva("Quantos reais voc� tem? ")
      leia(reais)
      dolar <- reais/4.75
      escreval("Voc� pode ter US$", dolar:1:2, " como R$", reais:1:2)

      //dolar:1:2 -> 1 casa, 2 valores ap�s a v�rgula...
      
fimalgoritmo
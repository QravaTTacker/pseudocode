algoritmo "semnome"
var
reais, dolar : real
inicio

      escreva("Quantos reais você tem? ")
      leia(reais)
      dolar <- reais/4.75
      escreval("Você pode ter US$", dolar:1:2, " como R$", reais:1:2)

      //dolar:1:2 -> 1 casa, 2 valores após a vírgula...
      
fimalgoritmo
algoritmo "Juros Simples Com Função"
var
   money, taxa : real
   temp : inteiro
função Fjuros(D, i : real; t : inteiro) : real
var
   J  : real
inicio
   J := D*(i/100)*t
   retorne J
fimfunção
inicio
   escreva("Capital: ")
   leia(money)
   escreva("Taxa: ")
   leia(taxa)
   escreva("tempo (meses): ")
   leia(temp)
   escreval("Juros: ", Fjuros(money, taxa, temp):5:2)
   escreval
fimalgoritmo
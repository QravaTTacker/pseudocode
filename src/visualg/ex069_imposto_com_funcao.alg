algoritmo "Imposto Com Função"
var
   valor, taxa : real
função imposto(valor, taxa : real) : real
inicio
   retorne valor + valor*(taxa/100)
fimfunção
inicio
   escreval("---------------------------------------")
   escreva(" Entre com o valor do protudo: ")
   leia(valor)
   escreva(" Entre com a taxa de imposto: ")
   leia(taxa)
   escreval("---------------------------------------")
   escreval(" O valor ficará: ", imposto(valor, taxa):1:2, " reais!")
   escreval("---------------------------------------")
fimalgoritmo